<%@ page import="grails_cms_blog.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<ckeditor:resources/>
	</head>
	<body>
		<a href="#edit-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="list" action="list" controller="admin/article"><g:message code="default.list.label" args="[entityName]" /></g:link> <span class="divider">/</span></li>
				<li><g:link class="create" action="create" controller="admin/article"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-article" class="content scaffold-edit" role="main">
			<h1 class="tittle"><g:message code="default.edit.label" args="[entityName]" /></h1>
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
			<g:form method="post"  class="form-horizontal">
				<g:hiddenField name="id" value="${articleInstance?.id}" />
				<g:hiddenField name="version" value="${articleInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<div class="control-group">
						<div class="controls">
							<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
							<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
