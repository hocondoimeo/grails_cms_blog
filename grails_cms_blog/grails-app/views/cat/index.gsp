<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>				
	</head>
	<body>
		<g:if test="${articlesInstance}">
		
		<div class="row-fluid list-articles">
			<g:each in="${articlesInstance}" status="i" var="article">
			  <g:render template="itemArticle" bean="${article}" var="article"></g:render>
			  ${((i+1) % 3) == 0? '</div><div class="row-fluid list-articles">' : ''}
			</g:each>
		</div>
		<div class="pagination pagination-centered">
			<g:paginate total="${articlesInstanceTotal}" prev="«" next="»" id="${params.id }"/>
		</div>
		</g:if>	
		<g:else>
			<div class="border">
			<h4>There are no articles</h4>
			</div>
		</g:else>
	</body>
</html>