<xsl:template name="main">
	<div class="container">
		<h1>Liste des étudiants par année : </h1>
		<ul class="list-group">
		<xsl:apply-templates select="/Bourses" />
		</ul>
	</div>
</xsl:template>

<xsl:template match="/Bourses">
	<li class="list-group-item">
		<h5>
			Liste de tous les étudiants.
		</h5>
		<table class="table table-hover table-stripped table-bordered">
			<thead>
				<tr>
					<th class="active col-md-3">Nom</th>
					<th class="active col-md-3">Code</th>
					<th class="active col-md-3">Numéro de rue</th>
					<th class="active col-md-3">Nom de rue</th>
					<th class="active col-md-3">Nom de la ville</th>
					<th class="active col-md-3">Code de la ville</th>
					<th class="active col-md-3">Pays</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="Bourse">
		 			<tr>
						<td><xsl:value-of select="Nom" /></td>
						<td><xsl:value-of select="Code" /></td>
						<td><xsl:value-of select="NumRue" /></td>
						<td><xsl:value-of select="NomRue" /></td>
						<td><xsl:value-of select="NomVille" /></td>
						<td><xsl:value-of select="CodeVille" /></td>
						<td><xsl:value-of select="Pays" /></td>
		 			</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</li>
</xsl:template>


