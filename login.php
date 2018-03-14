
<link rel="stylesheet" type="text/css" href="styles.css">


<h3>Login</h3>

<br>

<?php
		session_start ();
		if ($_SESSION ["loginError"] === "true"){
			echo '<div id="error">Invalid Username/Password, please try again!</div>';
			$_SESSION ["loginError"] = "false";
		}
?>

<form action="controller.php" method='post'>
	<p>
		Username &nbsp;<input type="text" name="username" required><br><br>
		Password&nbsp;&nbsp;&nbsp;<input type="password" name="password" required><br>
		<br> <input name='login' type='submit' value="Login"> <br>
	</p>
</form>





