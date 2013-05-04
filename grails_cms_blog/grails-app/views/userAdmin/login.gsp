<%@ page import="grails_cms_blog.User"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<r:require modules="bootstrap" />
<link rel="stylesheet" href="${resource(dir: 'css', file: 'admin.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<r:layoutResources />
</head>
<body>
	<div class="container">
		<div class="content border" style="width: 350px; margin: 40px auto">
			
			<g:form action="authenticate" method="post" class="form-signin">
				<h2 class="form-signin-heading">Please sign in</h2>
				<g:if test="${flash.message}">
					<div class="message alert" style="color: red">${flash.message}</div>
				</g:if>
				<input type="text" class="input-block-level" placeholder="Email address" id="email" name="email">
				<input type="password" class="input-block-level" placeholder="Password" id="password" name="password">
				<p><g:link action="index" controller="index">Go to front end</g:link></p>
				<button class="btn btn-large btn-primary" type="submit">Sign in</button>
			</g:form>
		</div>
	</div>	
	<g:javascript library="application" />
	<r:layoutResources />
</body>
</html>
