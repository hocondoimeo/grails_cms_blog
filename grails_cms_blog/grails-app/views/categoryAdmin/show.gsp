
<%@ page import="grails_cms_blog.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="list" action="list" controller="admin/category"><g:message code="default.list.label" args="[entityName]" /></g:link> <span class="divider">/</span></li>
				<li><g:link class="create" action="create" controller="admin/category"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-category" class="content scaffold-show" role="main">
			<h1 class="tittle"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
			</g:if>
			<dl class="property-list category dl-horizontal">
			
				<g:if test="${categoryInstance?.name}">
				<div class="fieldcontain">
					<dt><span id="name-label" class="property-label"><g:message code="category.name.label" default="Name" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${categoryInstance}" field="name"/></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${categoryInstance?.dateCreated}">
				<div class="fieldcontain">
					<dt><span id="dateCreated-label" class="property-label"><g:message code="category.dateCreated.label" default="Date Created" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${categoryInstance?.dateCreated}" /></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${categoryInstance?.lastUpdated}">
				<div class="fieldcontain">
					<dt><span id="lastUpdated-label" class="property-label"><g:message code="category.lastUpdated.label" default="Last Updated" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${categoryInstance?.lastUpdated}" /></span>
					
					</dd>
				</div>
				</g:if>
			
			</br>
			<dd>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${categoryInstance?.id}" />
					<g:link class="edit btn btn-primary" action="edit" id="${categoryInstance?.id}" controller="admin/category"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</dd>
			</dl>
		</div>
	</body>
</html>
