<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Fruzzy</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<!--############## NAV BAR #############-->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		<div class="container">
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a href="index.html" class="navbar-brand"><img
				src="img/FavIcon/android-icon-36x36.png" alt>Fruzzy</a>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="#home" class="nav-link">Feed</a>
					</li>
					<li class="nav-item"><a href="#explore-head-section"
						class="nav-link">Explore</a></li>
					<li class="nav-item"><a href="#create-head-section"
						class="nav-link">Dashboard</a></li>
					<li class="nav-item"><a href="#share-head-section"
						class="nav-link">Sign-out</a></li>
				</ul>
			</div>
	</nav>
	<!--############## HOME SECTION #############-->
	<div class="user-cover">
		<div class="profile-header-background d-none d-lg-block d-md-block">
			<img class="img-fluid"
				src="https://images.pexels.com/photos/990824/pexels-photo-990824.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
				alt="profile-header-background">
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="profile-info-left">
					<div class="text-center">
						<img src="img/adult-aged-beard-665194.jpg" alt="Avatar"
							class="avatar rounded-circle" width="250px" height="250px" />
						<h2 class="username">Username</h2>
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
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#mediaModal"
				src="https://picsum.photos/600/600/?image=512" alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media2Modal"
				src="https://picsum.photos/600/600/?image=513" alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media3Modal"
				src="https://images.pexels.com/photos/555017/pexels-photo-555017.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
				alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media4Modal"
				src="https://images.pexels.com/photos/1159670/pexels-photo-1159670.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
				alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media5Modal"
				src="https://images.pexels.com/photos/1930310/pexels-photo-1930310.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
				alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media6Modal"
				src="https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
				alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media7Modal"
				src="https://images.pexels.com/photos/1295036/pexels-photo-1295036.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
				alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media8Modal"
				src="https://images.pexels.com/photos/1232594/pexels-photo-1232594.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
				alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
			<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
				<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
				<i class="far fa-trash-alt"></i>
			</div>
		</div>
		<div class="card">
			<div class="card-header d-xs-none d-lg-none d-md-none d-sm-block">
				<img class="rounded" src="img/adult-aged-beard-665194.png"
					width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
			</div>
			<img class="card-img-top" data-toggle="modal"
				data-target="#media9Modal"
				src="https://images.pexels.com/photos/1906819/pexels-photo-1906819.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
				alt="Card image">
			<div
				class="card-body image-caption-container d-xs-none d-lg-none d-md-none d-sm-block">
				<h4 class="card-title">John Doe</h4>
				<p class="card-text">Some example text.</p>
				<!-- <a href="#" class="btn btn-primary stretched-link">See Profile</a> -->
			</div>
		</div>
		<div class="card-footer d-xs-none d-lg-none d-md-none d-sm-block">
			<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
			<i class="far fa-trash-alt"></i>
		</div>
	</div>
	<!--############ MAIN FOOTER ############-->
	<!-- 	<footer id="main-footer" class="bg-dark">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="py-4">
						<h1 class="h3">CraneLAB</h1>
						<p>Copyright &copy; 2018</p>
						<button class="btn btn-primary" data-toggle="modal"
							data-target="#contactModal">Contact US</button>
					</div>
				</div>
			</div>
		</div>
	</footer> -->
	<!--########### MEDIA MODAL ###########-->
	<div class="modal fade text-dark" id="mediaModal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<img class="rounded" src="img/adult-aged-beard-665194.png"
						width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<div class="modal-image-container">
						<img class=" modal-img"
							src="https://picsum.photos/1920/1080/?image=512" />
						<h4 class="modal-caption-1">John Doe</h4>
						<p class="modal-caption-2">Some example</p>
					</div>
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media2Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<img class="rounded" src="img/adult-aged-beard-665194.png"
						width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<div>
						<img class="img-fluid"
							src="https://picsum.photos/1920/1080/?image=513" />
						<h4 class="modal-caption-1">John Doe</h4>
						<p class="modal-caption-2">Some example</p>
					</div>
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media3Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<img class="rounded" src="img/adult-aged-beard-665194.png"
						width="30" height="30" alt=""><strong>&nbsp;&nbsp;&nbsp;Username</strong>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<div>
						<img class="img-fluid"
							src="https://images.pexels.com/photos/555017/pexels-photo-555017.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" />
						<h4 class="modal-caption-1">John Doe</h4>
						<p class="modal-caption-2">Some example</p>
					</div>
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media4Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediaModalTitle">Username</h5>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<img class="img-fluid"
						src="https://images.pexels.com/photos/1159670/pexels-photo-1159670.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" />
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media5Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediaModalTitle">Username</h5>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<img class="img-fluid"
						src="https://images.pexels.com/photos/1930310/pexels-photo-1930310.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" />
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media6Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediaModalTitle">Username</h5>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<img class="img-fluid"
						src="https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" />
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media7Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediaModalTitle">Username</h5>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<img class="img-fluid"
						src="https://images.pexels.com/photos/1295036/pexels-photo-1295036.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" />
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media8Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediaModalTitle">Username</h5>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<img class="img-fluid"
						src="https://images.pexels.com/photos/1232594/pexels-photo-1232594.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" />
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade text-dark" id="media9Modal">
		<div class="modal-dialog justify-content-center modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediaModalTitle">Username</h5>
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body justify-content-center">
					<img class="img-fluid"
						src="https://images.pexels.com/photos/1906819/pexels-photo-1906819.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" />
				</div>
				<div class="modal-footer">
					<i class="far fa-thumbs-up"></i> <i class="far fa-comment-dots"></i>
					<i class="far fa-trash-alt"></i>
				</div>
			</div>
		</div>
	</div>
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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>

</html>