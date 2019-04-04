package fruzzy.database;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.web.multipart.MultipartFile;

import fruzzy.model.SignupModel;
import fruzzy.model.Upload;

public class DBConnect {
	
	
	private static Connection getConnection() {
		Connection connection=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://192.168.1.62:3306/Fruzzy","root","Libsys@1234");
			
		} catch(Exception e) {
		}
		return connection;
	}
	
	private static void closeDB(Connection con, ResultSet rs) {
		try {
			if(con!=null)
				con.close();
			if(rs!=null)
				rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static String encryptedPwd(String pass) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] passBytes = pass.getBytes();
			md.reset();
			byte[] digested = md.digest(passBytes);
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < digested.length; i++) {
				sb.append(Integer.toHexString(0xff & digested[i]));
			}
			return sb.toString();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;

}
	
	public static void createNewUser(SignupModel user)  {
		
		user.setPassword(encryptedPwd(user.getPassword()));
		
		Connection con=getConnection();
		try {
			PreparedStatement ps=con.prepareStatement(SQL.CREATE_USER);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			if(user.getGender().equals("Male"))
				ps.setInt(4, 1);
			else if(user.getGender().equals("Female"))
				ps.setInt(4, 2);
			else ps.setInt(4, 3);
			ps.setDate(5, new java.sql.Date( user.getDob().getTime()));
			ps.setString(7, "NULL");
			ps.setString(6, "NULL");
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		closeDB(con, null);
		
	}
	
	public static ArrayList getFaids(String username) {
		Connection con=getConnection();
		ArrayList list=new ArrayList<String>();
		try {
			PreparedStatement ps=con.prepareStatement(SQL.GET_FAID_FOR_USERNAME);
			ps.setString(1, username);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				list.add(rs.getString(1));
			}
					
		} catch (Exception e) {
			// TODO: handle exception
		}
		closeDB(con, null);
		return list;
	}
	
	public static ArrayList getUploads(ArrayList faids) throws SQLException {
		
		ArrayList uploads=new ArrayList();
		Connection con=getConnection();
		PreparedStatement ps;
		ResultSet rs=null;
		for(Object faid : faids) {
			String fid=faid+"";
			Upload upload=new Upload();
			if(fid.substring(0,3).equals("TEX")) {
				upload.setId(fid);
				upload.setType(0);
				ps=con.prepareStatement(SQL.GET_CAPTIONS_FROM_TEXT);
				ps.setString(1, fid);
				rs=ps.executeQuery();
				if(rs.next()) {
					upload.setCaption1(rs.getString(1));
					upload.setCaption2(rs.getString(2));
				}
			}else {
				upload.setId(fid);
				if(fid.substring(0, 3).equals("PIC"))
					upload.setType(1);
				else upload.setType(2);
				ps=con.prepareStatement(SQL.GET_URL_FROM_MULTIMEDIA);
				ps.setString(1, fid);
				rs=ps.executeQuery();
				if(rs.next()) {
					upload.setCaption2(rs.getString(1));
					upload.setUrl(rs.getString(2));
				}
			}
			uploads.add(upload);
			ps.close();
			rs.close();
		}
		closeDB(con, rs);
		System.out.println(uploads.size());
		return uploads;
	}
	
	public static String uploader(MultipartFile multipartFile,String username, Timestamp timestamp) throws IOException {
		
		
		String filePath="resources/";
		File file=new File(multipartFile.getOriginalFilename());
		String fileName=multipartFile.getOriginalFilename();
		String extension=fileName.substring(fileName.lastIndexOf("."));
		try {
			file.createNewFile();
			FileOutputStream fos=new FileOutputStream(file);
			fos.write(multipartFile.getBytes());
			fos.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		File dir=new File(filePath);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		String filename=username+"@"+timestamp+extension;
		InputStream is=new FileInputStream(file);
		OutputStream os=new FileOutputStream(filePath+filename);
		int c=0;
		while((c=is.read())!=-1) {
			os.write(c);
		}
		is.close();
		os.close();
		
		return filePath+filename;
		
		
	}
	
	public static String randomString() {
		String id="";
		String alphaNumeric="qwertyuiopasdfghjklzxcvbnm1234567890QWERTYUIOPASDFGHJKLZXCVBNM";
		for(int i=0;i<17;i++) {
			int z= (int)((alphaNumeric.length()-1)*Math.random());
			id+=alphaNumeric.charAt(z);
		}
		return id;
	}
	
	public static void insertIntoFeed(String id, String username, Timestamp timeStamp)throws Exception {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(SQL.INSERT_INTO_FAID);
		ps.setString(1, id);
		ps.setString(2, username);
		ps.setTimestamp(3, timeStamp);
		ps.executeUpdate();
		closeDB(con, null);
	}
	
	public static void insertIntoMultimedia(String file, String id, String caption, long size)throws Exception {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(SQL.INSERT_INTO_MULTIMEDIA);
		ps.setString(1, id);
		if(id.substring(0, 3).equals("PIC"))
			ps.setString(2, "Image");
		else if(id.substring(0, 3).equals("VID"))
			ps.setString(2, "Video");
		ps.setString(3, file.substring(file.lastIndexOf(".")));
		ps.setString(4, caption);
		ps.setString(5, file);
		ps.setBigDecimal(6, new BigDecimal(size));
		ps.executeUpdate();
		closeDB(con, null);
	}
	
	public static void insertIntoTextMedia(String id,String caption1, String caption2)throws Exception {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(SQL.INSERT_INTO_TEXT);
		ps.setString(1, id);
		ps.setString(2, caption1);
		ps.setString(3, caption2);
		ps.executeUpdate();
		closeDB(con, null);
	}
	
	public static void upload(Upload upload, String username, Timestamp timestamp, long size)throws Exception {
		String id=upload.getId();
		
		insertIntoFeed(id, username, timestamp);
		
		if(id.substring(0, 3).contains("TEX")) {
			insertIntoTextMedia(id, upload.getCaption1(), upload.getCaption2());
		} else {
			insertIntoMultimedia(upload.getUrl(), id, upload.getCaption1(), size);
		} 
	}
	
	public static String getPassword(String username)throws Exception {
		String password="";
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(SQL.GETPASSWORD);
		ps.setString(1, username);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			password=rs.getString(1);
		}
		closeDB(con, rs);
		return password;
	}
	
	public static List getProfilePic(String username)throws Exception {
		
		ArrayList<String> al=new ArrayList();
		
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(SQL.GET_DP);
		ps.setString(1, username);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			al.add(rs.getString(1));
			al.add(rs.getString(2));
		}
		closeDB(con, rs);
		return al;
		
	}

}
