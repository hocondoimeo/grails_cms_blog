
<%@ page import="grails_cms_blog.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="create" action="create" controller="admin/user"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1 class="tittle"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
					
						<%--<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />--%>
					
						<g:sortableColumn property="role" title="${message(code: 'user.role.label', default: 'Role')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'user.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'user.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" controller="admin/user" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "email")}</td>
					
						<%--<td>${fieldValue(bean: userInstance, field: "password")}</td>--%>
					
						<td>${fieldValue(bean: userInstance, field: "role")}</td>
					
						<td><g:formatDate date="${userInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${userInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
