
<%@ page import="grails_cms_blog.admin.CategoryAdmin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'categoryAdmin.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-categoryAdmin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="list" action="list" controller="admin/category"><g:message code="default.list.label" args="[entityName]" /></g:link> <span class="divider">/</span></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-categoryAdmin" class="content scaffold-show" role="main">
			<h1 class="tittle"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="alert alert-success" role="status">${flash.message}</div>
			</g:if>
			<dl class="property-list categoryAdmin dl-horizontal">
			
				<g:if test="${categoryAdminInstance?.name}">
				<div class="fieldcontain">
					<dt><span id="name-label" class="property-label"><g:message code="categoryAdmin.name.label" default="Name" /></span></dt>
				    <dd>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${categoryAdminInstance}" field="name"/></span>
					
					</dd>
				</div>
				</g:if>
			
			</br>
			<dd>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${categoryAdminInstance?.id}" />
					<g:link class="edit btn btn-primary" action="edit" id="${categoryAdminInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</dd>
			</dl>
		</div>
	</body>
</html>
