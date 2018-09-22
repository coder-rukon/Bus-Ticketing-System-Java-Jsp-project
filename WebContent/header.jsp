<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.digitalbd.Helper" %>
<%
boolean isLogin = false;
if(session.getAttribute("isUserLogin") != null)
	isLogin = (boolean) session.getAttribute("isUserLogin");
%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="css/assets/owl.theme.default.css"/>
    <link rel="stylesheet" href="css/main.css"/>
  </head>
  <body>
  	<div class="header">
  		<div class="container">
  			<div class="header_content ">
  				Ticketing System
  			</div>
  			<div class="main_nav">
  				<ul class="nav nav-pills pull-left">
  					<% if(isLogin){ %>
  					<li  class="nav-item"><a href="<%= Helper.baseUrl %>Dashboard.jsp" class="nav-link active">Dashboard</a></li>
  					<li  class="nav-item"><a href="<%= Helper.baseUrl %>Purchase.jsp" class="nav-link">Purses Ticket</a></li>
  					<li class="nav-item"><a href="<%= Helper.baseUrl %>Logout" class="nav-link">Logout</a></li>
  					<% }else{ %>
  					<li class="nav-item"><a href="<%= Helper.baseUrl %>Register.jsp" class="nav-link">Register</a></li>
  					<li class="nav-item"><a href="<%= Helper.baseUrl %>Login.jsp" class="nav-link">Login</a></li>
  					<% } %>
  				</ul>
  			</div>
  		</div>
  	</div>
  	<section class="main_contents">
  		<div class="container">
  		<div class="main_contents_inner" >
  		
  		