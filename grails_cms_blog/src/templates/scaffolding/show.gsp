<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-${domainClass.propertyName}" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div role="navigation">
			<ul class="breadcrumb">
				<li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a> <span class="divider">/</span></li>
				<li><g:link class="list" action="list" controller="admin/${domainClass.propertyName.toLowerCase()}"><g:message code="default.list.label" args="[entityName]" /></g:link> <span class="divider">/</span></li>
				<li><g:link class="create" action="create" controller="admin/${domainClass.propertyName.toLowerCase()}"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-${domainClass.propertyName}" class="content scaffold-show" role="main">
			<h1 class="tittle"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="\${flash.message}">
			<div class="alert alert-success" role="status">\${flash.message}</div>
			</g:if>
			<dl class="property-list ${domainClass.propertyName} dl-horizontal">
			<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
				allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
				props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
				Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
				props.each { p -> %>
				<g:if test="\${${propertyName}?.${p.name}}">
				<div class="fieldcontain">
					<dt><span id="${p.name}-label" class="property-label"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></span></dt>
				    <dd>
					<%  if (p.isEnum()) { %>
						<span class="property-value" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></span>
					<%  } else if (p.oneToMany || p.manyToMany) { %>
						<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
						<span class="property-value" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></span>
						</g:each>
					<%  } else if (p.manyToOne || p.oneToOne) { %>
						<span class="property-value" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></span>
					<%  } else if (p.type == Boolean || p.type == boolean) { %>
						<span class="property-value" aria-labelledby="${p.name}-label"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></span>
					<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
						<span class="property-value" aria-labelledby="${p.name}-label"><g:formatDate date="\${${propertyName}?.${p.name}}" /></span>
					<%  } else if (!p.type.isArray()) { %>
						<span class="property-value" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></span>
					<%  } %>
					</dd>
				</div>
				</g:if>
			<%  } %>
			</br>
			<dd>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="\${${propertyName}?.id}" />
					<g:link class="edit btn btn-primary" action="edit" id="\${${propertyName}?.id}" controller="admin/${domainClass.propertyName.toLowerCase()}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</dd>
			</dl>
		</div>
	</body>
</html>
