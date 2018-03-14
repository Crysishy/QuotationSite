<!-- 
This is the home page for Final Project, Part 1, Fall 2016 Quotes Enhanced.  

Any user can flag quotes, add quotes, or register as a user.  If registered and logged in, the
user can unflag all quotes to see all quotes in the data base. Yes some of the behavior is 
contrived, in order to review many concepts in the context of a larger web service.  

File name quotes.php 

Show the home page view with tabs to login, registration, and to add a new quote and most importantly to
show all unflagged quotes in the data base sorted by ranking
    
Author: Rick Mercer
-->
<link rel="stylesheet" type="text/css" href="styles.css">

<?php
session_start ();

require_once './DataBaseAdaptor.php';
$myDatabaseFunctions = new DatabaseAdaptor ();
$arrayOfQuotes = $myDatabaseFunctions->getQuotesAsArray ();
?>
<h1>Quotes</h1>

<!-- Add a horizontal menu -->
<form id="addQuote" action="addQuote.html" method="get" >
    <button id = "addquoteButton" name = "mode">AddQuote</button>
</form>
<form id="register" action="register.html" method="get" >
    <button id = "registerButton" name = "mode">Register</button>
</form>
<form id="login" action="login.php" method="get" >
    <button id = "loginButton" name = "mode">Login</button>
</form>
	<br><br><br><br>
<?php 
    if(isset($_SESSION['user']) && $_SESSION['user'] != ''){?>
	
	<form action="controller.php" method="post">
	<button id = "unflagButton"name="unflag" value = "unflag">Unflag All</button>
	<button id = "logoutButton" name="logout" value = "logout">Logout</button> 
	</form>
	<?php } 
 // Need this in each file before $_SESSION['key'] is used.
?>

<!--  Show all quotes on a separate row -->
<?php foreach($arrayOfQuotes as $quote) { ?>

<div class="container">
	<div class=quoteBox>
	 <?= '"'. $quote['quote'] . '"' ?>
	 </div>
     <br>
	<div class="author"> 
     &nbsp;&nbsp;--
     <?= $quote['author'] ?>  
     <br><br>
	</div>
	
	<form action="controller.php" method="post">
		<input type="hidden" name="ID" value="<?= $quote['id']?>">
		&nbsp;&nbsp;&nbsp;
		<button name="action" value="increase">+</button>

		 <span id="rating"> <?= $quote['rating']?> </span>
		<button name="action" value="decrease">-</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button name="action" value="flag">flag</button>
	</form>
</div>
<br>

<?php } 


// End for loop  ?>

</body>
</html>