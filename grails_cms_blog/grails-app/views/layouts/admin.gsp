<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<r:require modules="bootstrap"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'admin.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>	
		<div class="container">
			<div class="header">
				<h1>Grails cms blog - Administrator</h1>
			</div> 
			<div class="navbar">
  				<div class="navbar-inner">
					<ul class="nav">
	  					<li class="active"><g:link action="index" controller="admin">Home</g:link></li>
	  					<li><g:link action="index" controller="category">Category</g:link></li>
	  					<li><g:link action="index" controller="article">Article</g:link></li>
	  					<li><g:link action="index" controller="user">User</g:link></li>
	  					<li><g:link action="index" controller="subscriber">Subscriber</g:link></li>
	  					<li><g:link action="system" controller="admin">System</g:link></li>
					</ul>
					<ul class="nav pull-right">
					<li><a href="#">Login</a></li>
					</ul>
				</div>
			</div>
			<div class="content">
				<g:layoutBody/>	
			</div>
		</div>
		

		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
