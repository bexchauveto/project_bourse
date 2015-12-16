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

<xsl:template name="main">
	<div class="container">
		<h1>Liste des actions pour une semaine : </h1>
		<ul class="list-group">
		<xsl:apply-templates select="/Actions" />
		</ul>
	</div>
</xsl:template>

<xsl:template match="/Actions">
	<li class="list-group-item">
		<h5>
			Liste des actions pour la semaine du 06/12/2015 au 12/12/2015.
		</h5>
		<table class="table table-hover table-stripped table-bordered">
			<thead>
				<tr>
					<th class="active col-md-3">Nom</th>
					<th class="active col-md-3">Date</th>
					<th class="active col-md-3">Valeur d'ouverture</th>
					<th class="active col-md-3">Valeur de fermeture</th>
					<th class="active col-md-3">Valeur maximum</th>
					<th class="active col-md-3">Valeur minimum</th>
					<th class="active col-md-3">Nombre d'échanges</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="Action">
		 			<tr>
						<td><xsl:value-of select="@Nom" /></td>
						<td><xsl:value-of select="@Date" /></td>
						<td><xsl:value-of select="ValOuverture" /></td>
						<td>
							<xsl:if test="ValCloture &lt; ValOuverture">
								<span style="color: red;">
									<xsl:value-of select="ValCloture" />
								</span>
							</xsl:if>
							<xsl:if test="ValCloture &gt; ValOuverture">
								<span style="color: green;">
									<xsl:value-of select="ValCloture" />
								</span>
							</xsl:if>
						</td>
						<td><xsl:value-of select="ValMinimum" /></td>
						<td><xsl:value-of select="ValMaximum" /></td>
						<td><xsl:value-of select="NbEchange" /></td>
		 			</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</li>
</xsl:template>


</xsl:stylesheet>
