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
