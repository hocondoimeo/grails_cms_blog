<%@ page import="grails_cms_blog.User" %>



<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name" class="control-label">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="name" maxlength="30" pattern="${userInstance.constraints.name.matches}" required="" value="${userInstance?.name}"/>
	</div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email" class="control-label">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<div class="controls">
		<g:field type="email" name="email" value="${userInstance?.email}"/>
	</div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password" class="control-label">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<div class="controls">
		<g:field type="password" name="password" value="${userInstance?.password}"/>
	</div>
</div>

