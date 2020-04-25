<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>

<body class="my-login-page">
    
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Register</h4>
							<form name="info" class="my-login-validation" action="extend"  method="POST" >
                                                            
                                                            <div class="form-group">
									<label for="name">Name</label>
									<input id="name" type="text" class="form-control" name="name" value="" required autofocus>
									
								</div>	
                                                            <div class="form-group">
									<label for="username">Username</label>
									<input id="username" type="text" class="form-control" name="username" value="" required autofocus>
									
								</div>

								<div class="form-group">
									<label for="password">Password	
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								    
								</div>
                                                                <div class="form-group">
									<label for="id">ID</label>
									<input id="id" type="text" class="form-control" name="id" value="" required data-eye>
                                                                </div>
                                                                <div class="form-group">
									<label for="email">Email</label>
									<input  type="text" class="form-control" name="email" value="" required data-eye>
                                                                </div>

								<div class="form-group">
									<label for="gender">Gender:  	
									</label>
									  Male: <input type="radio" name="rd" value = "Male">
                                                                          Female<input type="radio" name="rd" value = "Female"><br>  
                                                                </div>
                                                                <div class="form-group">
									<label for="birthday">Birthday</label>
									<input type="date" class="form-control" name="birthday" value="" required data-eye>
                                                                </div>
								

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block" >
										Register by HTML in Servlet
									</button>
								</div>
                                                            <br>
                                                            <div class="form-group m-0">
									<button type='submits' class="btn btn-primary btn-block" onclick="info.action='display.jsp';  return true;" >
										Register by javabeans
									</button>
								</div>
								<div class="mt-4 text-center">
									Already have an account? <a href="index.jsp">Login</a>
								</div>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>
</body>
</html>