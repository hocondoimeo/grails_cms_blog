<%@ page import="grails_cms_blog.Article" %>

<div class="control-group fieldcontain ${hasErrors(bean: articleInstance, field: 'title', 'error')} required">
	<label for="title" class="control-label">
		<g:message code="article.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="title" maxlength="30" pattern="${articleInstance.constraints.title.matches}" required="" value="${articleInstance?.title}"/>
	</div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: articleInstance, field: 'desc', 'error')} required">
	<label for="desc" class="control-label">
		<g:message code="article.desc.label" default="Desc" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField name="desc" maxlength="100" required="" value="${articleInstance?.desc}"/>
	</div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: articleInstance, field: 'image', 'error')} required">
	<label for="image" class="control-label">
		<g:message code="article.content.label" default="File" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<input type="file" id="image" name="image"/>
	</div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: articleInstance, field: 'content', 'error')} required">
	<label for="content" class="control-label">
		<g:message code="article.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textArea name="content" cols="40" rows="5" maxlength="1000" required="" value="${articleInstance?.content}"/>
	</div>
</div>

<div class="control-group fieldcontain ${hasErrors(bean: articleInstance, field: 'category', 'error')} required">
	<label for="category" class="control-label">
		<g:message code="article.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:select id="category" name="category.id" from="${grails_cms_blog.Category.list()}" optionKey="id" required="" value="${articleInstance?.category?.id}" class="many-to-one"/>
	</div>
</div>

<%--<div class="control-group fieldcontain ${hasErrors(bean: articleInstance, field: 'user', 'error')} required">
	<label for="user" class="control-label">
		<g:message code="article.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:select id="user" name="user.id" from="${grails_cms_blog.User.list()}" optionKey="id" required="" value="${articleInstance?.user?.id}" class="many-to-one"/>
	</div>
</div>
--%>