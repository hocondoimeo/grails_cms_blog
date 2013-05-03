<%@ page import="grails_cms_blog.Subscriber" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subscriber.label', default: 'Subscriber')}" />
		<g:set var="homePage" value="${"http://" + request.getServerName() + ":" + request.getServerPort() +request.getContextPath() + '/';}" />
		<title>Subscribe</title>
		
	</head>
	<body>
		
		
		<div id="create-subscriber" class="content scaffold-create" role="main">
			<h2 class="tittle">Subscribe</h2>
			<g:if test="${flash.message}">
				<div class="alert alert-success" role="status">${flash.message}</div>
				<script>
					setTimeout(function(){window.location.href = '${homePage}'}, 2500)
				</script>
			</g:if>
			<g:hasErrors bean="${subscriberInstance}">
			<div class="alert alert-error">
				<ul class="errors" role="alert">
					<g:eachError bean="${subscriberInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</div>
			</g:hasErrors>
			<g:form action="save"  class="form-horizontal">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<div class="control-group">
						<div class="controls">
							<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
							<input type="reset" class="btn" value="Cancel" onclick="history.go(-1);"/>
						</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
