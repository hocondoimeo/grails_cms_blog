
<%@ page import="grails_cms_blog.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="list" action="list" controller="admin/user"><g:message code="default.list.label" args="[entityName]" /></g:link> <span class="divider">/</span></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1 class="tittle"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
			</g:if>
			<dl class="property-list user dl-horizontal">
			
				<g:if test="${userInstance?.name}">
				<div class="fieldcontain">
					<dt><span id="name-label" class="property-label"><g:message code="user.name.label" default="Name" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="name"/></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<div class="fieldcontain">
					<dt><span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
					</dd>
				</div>
				</g:if>
			
				<%--<g:if test="${userInstance?.password}">
				<div class="fieldcontain">
					<dt><span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
					</dd>
				</div>
				</g:if>--%>
			
				<g:if test="${userInstance?.dateCreated}">
				<div class="fieldcontain">
					<dt><span id="dateCreated-label" class="property-label"><g:message code="user.dateCreated.label" default="Date Created" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${userInstance?.dateCreated}" /></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${userInstance?.lastUpdated}">
				<div class="fieldcontain">
					<dt><span id="lastUpdated-label" class="property-label"><g:message code="user.lastUpdated.label" default="Last Updated" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${userInstance?.lastUpdated}" /></span>
					
					</dd>
				</div>
				</g:if>
			
			</br>
			<dd>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<g:link class="edit btn btn-primary" action="edit" id="${userInstance?.id}" controller="admin/user"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</dd>
			</dl>
		</div>
	</body>
</html>
