<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
</head>
<body>
	<div id="myCarousel" class="carousel slide border">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<g:each in="${featuredArticles}" status="i" var="featuredArticle">
				<div class="item ${i==0? 'active' : '' }">
					<g:link controller="cat" action="article" id="${featuredArticle.id}">
						<g:displayFile filename="${featuredArticle.image}" user="${featuredArticle.author.name}" />
					</g:link>
					<div class="carousel-caption">
						<g:link controller="cat" action="article" id="${featuredArticle.id}"><h4>${featuredArticle.title}</h4></g:link>
						<p>
							${featuredArticle.desc}
						</p>
						<p class="date">
							<g:formatDate date="${featuredArticle.dateCreated}" type="date" style="MEDIUM" />
						</p>
					</div>
				</div>
			</g:each>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	<script>
		$('.carousel').carousel()		
	</script>

	<div class="row-fluid lasted-articles">
		<g:each in="${lastedArticles}" status="i" var="lastedArticle">
			<div class="span4 border">
				<g:link controller="cat" action="article" id="${lastedArticle.id}">
					<g:displayFile filename="${lastedArticle.image}" user="${lastedArticle.author.name}" />
				</g:link>
				<div class="des-article">
					<g:link controller="cat" action="article" id="${lastedArticle.id}">
						<h4>${lastedArticle.title}</h4>
					</g:link>
					<p>
						${lastedArticle.desc}
					</p>
					<p class="date">
						<g:formatDate date="${lastedArticle.dateCreated}" type="date" style="MEDIUM" />
					</p>
				</div>
			</div>
		</g:each>
	</div>
</body>
</html>