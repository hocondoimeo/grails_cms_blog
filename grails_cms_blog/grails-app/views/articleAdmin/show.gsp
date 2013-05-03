
<%@ page import="grails_cms_blog.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="list" action="list" controller="admin/article"><g:message code="default.list.label" args="[entityName]" /></g:link> <span class="divider">/</span></li>
				<li><g:link class="create" action="create" controller="admin/article"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-article" class="content scaffold-show" role="main">
			<h1 class="tittle"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
			</g:if>
			<dl class="property-list article dl-horizontal">
			
				<g:if test="${articleInstance?.title}">
				<div class="fieldcontain">
					<dt><span id="title-label" class="property-label"><g:message code="article.title.label" default="Title" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${articleInstance}" field="title"/></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${articleInstance?.desc}">
				<div class="fieldcontain">
					<dt><span id="desc-label" class="property-label"><g:message code="article.desc.label" default="Desc" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="desc-label"><g:fieldValue bean="${articleInstance}" field="desc"/></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${articleInstance?.content}">
				<div class="fieldcontain">
					<dt><span id="content-label" class="property-label"><g:message code="article.content.label" default="Content" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${articleInstance}" field="content"/></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${articleInstance?.category}">
				<div class="fieldcontain">
					<dt><span id="category-label" class="property-label"><g:message code="article.category.label" default="Category" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="admin/category" action="show" id="${articleInstance?.category?.id}">${articleInstance?.category?.encodeAsHTML()}</g:link></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${articleInstance?.dateCreated}">
				<div class="fieldcontain">
					<dt><span id="dateCreated-label" class="property-label"><g:message code="article.dateCreated.label" default="Date Created" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${articleInstance?.dateCreated}" /></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${articleInstance?.lastUpdated}">
				<div class="fieldcontain">
					<dt><span id="lastUpdated-label" class="property-label"><g:message code="article.lastUpdated.label" default="Last Updated" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${articleInstance?.lastUpdated}" /></span>
					
					</dd>
				</div>
				</g:if>
			
				<g:if test="${articleInstance?.user}">
				<div class="fieldcontain">
					<dt><span id="user-label" class="property-label"><g:message code="article.user.label" default="User" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="admin/user" action="show" id="${articleInstance?.user?.id}">${articleInstance?.user?.encodeAsHTML()}</g:link></span>
					
					</dd>
				</div>
				</g:if>
			
			</br>
			<dd>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${articleInstance?.id}" />
					<g:link class="edit btn btn-primary" action="edit" id="${articleInstance?.id}" controller="admin/article"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</dd>
			</dl>
		</div>
	</body>
</html>