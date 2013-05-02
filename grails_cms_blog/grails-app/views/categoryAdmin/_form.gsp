<%@ page import="grails_cms_blog.admin.CategoryAdmin" %>



<div class="control-group fieldcontain ${hasErrors(bean: categoryAdminInstance, field: 'name', 'error')} ">
	<label for="name" class="control-label">
		<g:message code="categoryAdmin.name.label" default="Name" />
		
	</label>
	<div class="controls">
		<g:textField name="name" value="${categoryAdminInstance?.name}"/>
	</div>
</div>

