<%@page import="fruzzy.model.Upload, java.util.ArrayList"%>
<%
	String dpsrc = "";

	if (session.getAttribute("dpsrc") == null || session.getAttribute("dpsrc").equals("NULL")) {
		dpsrc = "img/nodp.jpg";
	} else {
		dpsrc = session.getAttribute("dpsrc") + "";
	}
	String cover = "";
	if (session.getAttribute("coversrc").equals("NULL")) {
		cover = "img/nocover.jpg";
	} else {
		cover = session.getAttribute("coversrc") + "";
	}
%>

<!--############## HOME SECTION #############-->
<div class="user-cover">
	<div class="profile-header-background d-none d-lg-block d-md-block">
		<img class="img-fluid" src="<%=cover%>"
			alt="profile-header-background">
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="profile-info-left">
				<div class="text-center">
					<img src="<%=dpsrc%>" alt="Avatar" class="avatar rounded-circle"
						width="250px" height="250px" />
					<h2 class="username"><%=session.getAttribute("me")%></h2>
				</div>
				<div class="action-buttons text-center justify-content-center">
					<div class="row text-center">
						<div class="col">
							<a href="#" class="btn btn-success btn-block"><i
								class="fas fa-plus-circle"></i>Follow</a>
						</div>
						<div class="col">
							<a href="#" class="btn btn-primary btn-block"><i
								class="fas fa-envelope"></i> Message</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8 align-middle">
			<div class="profile-info-right">
				<div class="row">
					<div class="section about-me-section">
						<h3>About Me</h3>
						<p>Energistically administrate 24/7 portals and enabled
							catalysts for change. Objectively revolutionize client-centered
							e-commerce via covalent scenarios. Continually envisioneer.</p>
					</div>
				</div>
				<div class="row">
					<div class="section statistics-section">
						<h3>Statistics</h3>
						<p>
							<span class="badge">332</span> Following
						</p>
						<p>
							<span class="badge">124</span> Followers
						</p>
						<p>
							<span class="badge">620</span> Likes
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>









<!-- ############### USER PROFILE ################### -->
<div id="gallery">

	<%
		ArrayList<Upload> uploads = (ArrayList) request.getAttribute("uploads");
		for (Upload upload : uploads) {
	%>
	<div class="card">
		<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
			<img class="rounded" src="<%=dpsrc%>" width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;<%=session.getAttribute("me")%></strong>
		</div>
		<img class="card-img-top" data-toggle="modal"
			data-target="#<%=upload.getId()%>" src="<%=upload.getUrl()%>"
			alt="Card image">
		<div
			class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
			<h4 class="card-title"><%=upload.getCaption1()%></h4>
			<p class="card-text"><%=upload.getCaption2()%></p>
			<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
		</div>
		<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
			<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
			<i class="far fa-trash-alt"></i>
		</div>
	</div>
	<%
		}
	%>


</div>





<!-- ########################## UPLOAD SECTION ############################-->


<nav class="uploadContainer">
	<a class="uploadButtons" href="#" tooltip="Pic"></a> <a
		class="uploadButtons" href="#" tooltip="Text"></a> <a
		class="uploadButtons" href="#" tooltip="Video"></a> <a
		class="uploadButtons" href="#" tooltip="Add media"><span><span
			class="rotate"></span></span></a>
</nav>

<!--########### MEDIA MODAL ###########-->


<%
	System.out.print(request.getParameter("deviceWidth"));
	String deviceWidth = request.getParameter("deviceWidth");
	int deviceWidthInt=0;
	if(deviceWidth!=null) {
		deviceWidthInt=Integer.parseInt(deviceWidth);
	}
/* 	int deviceWidth = 400;
 */ 	if (deviceWidthInt > 400) {
		for (Upload upload : uploads) {
%>
<div class="modal fade text-dark" id="<%=upload.getId()%>">
	<div class="modal-dialog justify-content-center modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<img class="rounded" src="<%=dpsrc%>" width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;<%=session.getAttribute("me")%></strong>
				<button class="close" data-dismiss="modal">
					<span>&times;</span>
				</button>
			</div>
			<div class="modal-body justify-content-center">
				<div class="modal-image-container">
					<img class=" modal-img" src="<%=upload.getUrl()%>" />
					<h4 class="modal-caption-1"><%=upload.getCaption1()%></h4>
					<p class="modal-caption-2"><%=upload.getCaption2()%></p>
				</div>
			</div>
			<div class="modal-footer">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
	</div>
</div>


<%
	}
	}
%>





<!--########### CONTACT MODAL ###########-->
<div class="modal fade text-dark" id="contactModal">
	<div class="modal-dialog justify-content-center modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="contactModalTitle">Contact US</h5>
				<button class="close" data-dismiss="modal">
					<span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="">
					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							class="form-control">
					</div>
					<div class="form-group">
						<label for="name">Email</label> <input type="text"
							class="form-control">
					</div>
					<div class="form-group">
						<label for="name">Message</label>
						<textarea class="form-control"></textarea>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary btn-block">Submit</button>
			</div>
		</div>
	</div>
</div>

