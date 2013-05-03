<%@ page import="grails_cms_blog.Subscriber" %>



<div class="control-group fieldcontain ${hasErrors(bean: subscriberInstance, field: 'email', 'error')} required">
	<label for="email" class="control-label">
		<g:message code="subscriber.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:field type="email" name="email" required="" value="${subscriberInstance?.email}"/>
	</div>
</div>

