<%@ page import="grails_cms_blog.Category" %>
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
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
		
	</head>
	<body>
	<div class="container">
	<g:set var="homePage" value="${"http://" + request.getServerName() + ":" + request.getServerPort() +request.getContextPath() + '/';}" />
			<div class="header">
				<h1>Grails cms blog - Front end</h1>
			</div> 
			<div class="navbar">
  				<div class="navbar-inner">
					<ul class="nav">
	  					<li class="active"><a href="${homePage}">Home</a></li>
	  					<g:each in="${Category.list()}" status="i" var="catInstance">
	  						<li><g:link action="index" controller="cat" id="${catInstance.id}">${catInstance.name}</g:link></li>
	  					</g:each>
	  					<li><g:link action="index" controller="subscribe">Subscribe</g:link></li>
	  					<li><g:link controller="admin/index">Administrator</g:link></li>	  					
					</ul>
					<g:form class="navbar-search pull-right" 
						url='[controller: "index", action: "search"]'
						id="searchableForm"
				        name="searchableForm"
				        method="get">
                      <g:textField type="text" class="search-query span3" placeholder="Search" name="q" value="${params.q}"/>
                    </g:form>
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
