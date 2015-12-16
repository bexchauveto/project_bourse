<xsl:template name="main">
	<div class="container">
		<h1>Liste des actions : </h1>
		<ul class="list-group">
		<xsl:apply-templates select="/Actions" />
		</ul>
	</div>
</xsl:template>

<xsl:template match="/Actions">
	<li class="list-group-item">
		<h5>
			Liste de toutes les actions.
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
							<xsl:choose>
							    <xsl:when test="ValCloture &lt; ValOuverture">
									<span style="color: red;">
    									<xsl:value-of select="ValCloture" />
    								</span>
							    </xsl:when>

							   <xsl:otherwise>
								   <span style="color: green;">
   									<xsl:value-of select="ValCloture" />
   								</span>
							   </xsl:otherwise>
						   </xsl:choose>
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
