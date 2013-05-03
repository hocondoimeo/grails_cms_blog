<%@ page import="grails_cms_blog.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="list" action="list" controller="admin/article"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-article" class="content scaffold-create" role="main">
			<h1 class="tittle"><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${articleInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${articleInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:uploadForm action="save" class="form-horizontal" enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<div class="control-group">
						<div class="controls">
							<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
						</div>
					</div>
				</fieldset>
			</g:uploadForm>
		</div>
	</body>
</html>
