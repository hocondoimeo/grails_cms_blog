
<%@ page import="grails_cms_blog.Subscriber" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'subscriber.label', default: 'Subscriber')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subscriber" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="create" action="create" controller="admin/subscriber"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subscriber" class="content scaffold-list" role="main">
			<h1 class="tittle"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'subscriber.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'subscriber.dateCreated.label', default: 'Date Created')}" />					
						
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subscriberInstanceList}" status="i" var="subscriberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: subscriberInstance, field: "email")}</td>
					
						<td><g:formatDate date="${subscriberInstance.dateCreated}" /></td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subscriberInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
