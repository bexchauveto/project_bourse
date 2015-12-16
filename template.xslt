<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head></head>
			<body>
				<!-- Latest compiled and minified CSS -->
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous" />

				<!-- Optional theme -->
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous" />

				<nav class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Bourses <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="bourse_all.html">Toutes</a></li>
										<!--<li role="separator" class="divider"></li>
										<li><a href="students_by_year.html">Par année</a></li>
										<li><a href="students_by_group.html">Par groupe</a></li>
										<li><a href="students_by_cursus.html">Par cursus</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="students_uf.html">Notes</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="students_uf_validated.html">UF validées</a></li>
										<li><a href="students_uf_nonvalidated.html">UF non validées</a></li>-->
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Entreprises <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="entreprise_all.html">Toutes</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Actions <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="Action_by_ID_evolutionWeek.html">Par semaine</a></li>
									</ul>
								</li>
								<!--<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Professeurs <span class="caret"></span></a>
								<ul class="dropdown-menu">
								<li><a href="teachings_course.html">Par cours</a></li>
							</ul>
						</li>-->
					</ul>
				</div>
			</div>
		</nav>

		<div class="container">
			<xsl:call-template name="main"/>
		</div>

		<!-- Latest compiled and minified JavaScript -->

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

	</body>
</html>
</xsl:template>
@RenderXSLT
</xsl:stylesheet>
