<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>				
	</head>
	<body>
		<div class="border well">
		<h1 class="tittle">${article.title}</h1>
		<p class="date"><g:formatDate date="${article.dateCreated}" type="date" style="MEDIUM" /></p>		
		<p class="lead">${article.desc}</p>
		<g:displayFile filename="${article.image}" user="${article.author.name}" />
		<div class="lead">
			${article.content}
		</div>
		</div>
	</body>
</html>