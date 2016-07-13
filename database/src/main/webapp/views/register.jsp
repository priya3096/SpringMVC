<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/Head.jsp" %>
<title>SignUp Form</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<style>
table, th, td {
	border: 1px solid violet;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(odd) {
	background-color: #f2f2f2;
}

table tr:nth-child(even) {
	background-color: #ffffff;
}
</style>
<style>
.box {
	width: 600px;
	height: 400px;
	position: absolute;
	margin-left: -150px; /* half of width */
	margin-top: -150px; /* half of height */
	top: 50%;
	left: 40%;
}
</style>
</head>
<body style="text-align: center" background="C:\Users\Manoj\Desktop\ecommerce project\images.jpg">
<%@include file="/includes/Navbar.jsp" %>
	<div ng-app="mainApp" ng-controller="studentController">
	<h2>Enter your Details...</h2>

		<form name="studentForm" novalidate action="index.jsp" method="post">
			<table class="box" border="10">
				<tr>
					<td>Enter first name:</td>
					<td><input name="firstname" type="text" ng-model="firstName"
						required> <span style="color: red"
						ng-show="studentForm.firstname.$dirty && studentForm.firstname.$invalid">
							<span ng-show="studentForm.firstname.$error.required">First
								Name is required.</span>
					</span></td>
				</tr>
				<tr>
					<td>Enter last name:</td>
					<td><input name="lastname" type="text" ng-model="lastName"
						required> <span style="color: red"
						ng-show="studentForm.lastname.$dirty && studentForm.lastname.$invalid">
							<span ng-show="studentForm.lastname.$error.required">Last
								Name is required.</span>
					</span></td>
				</tr>

				<tr>
					<td>Enter mobile number:</td>
					<td><input name="mobile" type="number" ng-model="mobile">
					</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input name="email" type="email" ng-model="email"
						length="100" required> <span style="color: red"
						ng-show="studentForm.email.$dirty && studentForm.email.$invalid">
							<span ng-show="studentForm.email.$error.required">Email is
								required.</span> <span ng-show="studentForm.email.$error.email">Invalid
								email address.</span>
					</span></td>
				</tr>
				<tr>
					<td>choose your password:</td>
					<td><input type="password" name="password "></td>
				</tr>
				<tr>
					<td>
						<button ng-click="reset()">Reset</button>
					</td>
					<td>
						<button
							ng-disabled="studentForm.firstname.$dirty &&
                        studentForm.firstname.$invalid || studentForm.lastname.$dirty &&
                        studentForm.lastname.$invalid || studentForm.email.$dirty &&
                        studentForm.email.$invalid"
							ng-click="submit()">Submit</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script>
		var mainApp = angular.module("mainApp", []);
		mainApp.controller('studentController', function($scope) {
			$scope.reset = function() {
				$scope.firstName = "abcd";
				$scope.lastName = "efgh";
				$scope.email = "userid@tutorialspoint.com";
			}

			$scope.reset();
		});
	</script>
</body>
</html>