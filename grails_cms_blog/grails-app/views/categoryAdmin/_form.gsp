<%@ page import="grails_cms_blog.Category" %>



<div class="control-group fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} ">
	<label for="name" class="control-label">
		<g:message code="category.name.label" default="Name" />
		
	</label>
	<div class="controls">
		<g:textField name="name" value="${categoryInstance?.name}"/>
	</div>
</div>

