
<%@ page import="grails_cms_blog.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="create" action="create" controller="admin/article"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-article" class="content scaffold-list" role="main">
			<h1 class="tittle"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'article.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="desc" title="${message(code: 'article.desc.label', default: 'Desc')}" />
					
						<%--<g:sortableColumn property="content" title="${message(code: 'article.content.label', default: 'Content')}" />--%>
					
						<g:sortableColumn property="category" title="${message(code: 'article.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'article.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'article.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${articleInstanceList}" status="i" var="articleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" controller="admin/article" id="${articleInstance.id}">${fieldValue(bean: articleInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: articleInstance, field: "desc")}</td>
					
						<%--<td>${fieldValue(bean: articleInstance, field: "content")}</td>--%>
					
						<td>${fieldValue(bean: articleInstance, field: "category")}</td>
					
						<td><g:formatDate date="${articleInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${articleInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${articleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
