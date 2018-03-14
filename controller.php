<?php
// This file contains a bridge between the view and the model and redirects back to the proper page
// with after processing whatever form this codew absorbs. This is the C in MVC, the Controller.
//
// Authors: Rick Mercer and Hassanain Jamal
//
// TODO: Add control the new expected behavior to
// register
// log in
// flag one quote
// unflag all quotes
// log out
//
require_once './DataBaseAdaptor.php';
session_start ();

if (isset ( $_POST ['author'] ) && isset ( $_POST ['quote'] )) {
	$author = $_POST ['author'];
	$quote = $_POST ['quote'];
	
	$myDatabaseFunctions->addNewQuote ( $quote, $author );
	header ( "Location: ./index.php?mode=showQuotes" );
} elseif (isset ( $_POST ['action'] ) && isset ( $_POST ['ID'] )) {
	$action = $_POST ['action'];
	$ID = $_POST ['ID'];
	if ($action === 'increase') {
		$myDatabaseFunctions->raiseRating ( $ID );
	}
	if ($action === 'decrease') {
		$myDatabaseFunctions->lowerRating ( $ID );
	}
	if ($action === 'flag') {
		$myDatabaseFunctions->flag ( $ID );
	}
	
	header ( "Location: ./index.php?mode=showQuotes" );
} 

elseif (isset ( $_POST ['username'] ) && isset ( $_POST ['password'] )) {
	
	$username = $_POST ['username'];
	$password = $_POST ['password'];
	
	if (isset ( $_POST ['login'] )) {
		$result = $myDatabaseFunctions->loginVerified ( $username, $password );
		if ($result) {
			$_SESSION ['user'] = $username;
			header ( "Location: index.php" );
		} else {
			$_SESSION ["loginError"] = "true";
			header ( "Location: login.php" );
		}
		// search from the secssion if the username exists
		
		// then check if the username and pasword match
	} elseif (isset ( $_POST ['register'] )) {
		// search from the secssion if the username has been used
		$myDatabaseFunctions->registerVerified ( $username, $password );
	}
} 
	else if (isset ( $_POST ['logout'] )) {
		$_SESSION ['user'] = '';
		header ( "Location: index.php" );
	} 
	elseif (isset ( $_POST ['unflag'] )) {	
		$myDatabaseFunctions->unFlagAll ();
		header ( "Location: index.php" );
	
}
?>