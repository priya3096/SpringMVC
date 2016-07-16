<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/Head.jsp"%>
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
<body style="text-align: center"
	background="C:\Users\Manoj\Desktop\ecommerce project\images.jpg">
	<%@include file="/includes/Navbar.jsp"%>
	<div ng-app="mainApp" ng-controller="userController">
		<h2>Enter your Details...</h2>
		<fieldset>
			<form:form name="userForm" modelAttribute="userDetails" method="post">
				<table class="box" border="10">
					<tr>
						<td path="id">User ID:</td>
						<td><form:input name="id" path="id" type="text" ng-model="id"
							required /> <span style="color: red"
							ng-show="userForm.id.$dirty && userForm.id.$invalid">
								<span ng-show="userForm.id.$error.required">User
									id is required.</span>
						</span></td>
					</tr>
					<tr>
						<td path="name">Enter first name:</td>
						<td><form:input path="name" name="firstname" type="text" ng-model="firstName"
							required /> <span style="color: red"
							ng-show="userForm.firstname.$dirty && userForm.firstname.$invalid">
								<span ng-show="userForm.firstname.$error.required">First
									Name is required.</span>
						</span></td>
					</tr>
					<tr>
						<td>Enter mobile number:</td>
						<td path="mobile"><form:input path="mobile" name="mobile" type="text" ng-model="mobile"
							required /> <span style="color: red"
							ng-show="userForm.mobile.$dirty && userForm.mobile.$invalid">
								<span ng-show="userForm.mobile.$error.required">Mobile
									Number is required.</span>
						</span></td>
						</td>
					</tr>
					<tr>
						<td path="email">Email:</td>
						<td><form:input path="email" name="email" type="email" ng-model="email"
							length="100" required /> <span style="color: red"
							ng-show="userForm.email.$dirty && userForm.email.$invalid" >
								<span ng-show="userForm.email.$error.required">Email is
									required.</span> <span ng-show="userForm.email.$error.email">Invalid
									email address.</span>
						</span></td>
					</tr>
					<tr>
						<td path="password">choose your password:</td>
						<td><form:input path="password" name="password" type="text" ng-model="password"
							required /> <span style="color: red"
							ng-show="userForm.password.$dirty && userForm.password.$invalid">
								<span ng-show="userForm.password.$error.required">Password
									is required.</span>
						</span></td>
					</tr>
					<tr>
						<td path="address">Address:</td>
						<td><form:input path="address" name="address" type="text" ng-model="address"
							required /> <span style="color: red"
							ng-show="userForm.address.$dirty && userForm.address.$invalid">
								<span ng-show="userForm.address.$error.required">Address
									 is required.</span>
						</span></td>
					</tr>

					<tr>
						<td>
							<button ng-click="reset()">Reset</button>
						</td>
						<td>
							<button
								ng-disabled="userForm.id.$dirty &&
                        userForm.id.$invalid ||userForm.firstname.$dirty &&
                        userForm.firstname.$invalid ||userForm.mobile.$dirty &&
                        userForm.mobile.$invalid || userForm.address.$dirty &&
                        userForm.lastname.$invalid || userForm.email.$dirty &&
                        userForm.email.$invalid|| userForm.password.$dirty &&
                        userForm.password.$invalid|| userForm.address.$dirty &&
                        userForm.address.$invalid"
								ng-click="_eventId_submit">Submit</button>
						</td>
					</tr>
				</table>
			</form:form>
		</fieldset>
	</div>
	<script>
		var mainApp = angular.module("mainApp", []);
		mainApp.controller('userController', function($scope) {
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