<div class="span4 border">
	<g:link controller="cat" action="article" id="${article.id}">
		<g:displayFile filename="${article.image}" user="${article.author.name}" />
	</g:link>
	<div class="des-article">
		<g:link controller="cat" action="article" id="${article.id}">
			<h4>${article.title}</h4>
		</g:link>
		<p>${article.desc}</p>
		<p class="date"><g:formatDate date="${article.dateCreated}" type="date" style="MEDIUM" /></p>
	</div>
</div>