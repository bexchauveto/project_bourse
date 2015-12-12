<xsl:template name="main">
    <div class="container">
        <h1>Liste des entreprises : </h1>
        <ul class="list-group">
            <xsl:apply-templates select="/Entreprises" />
        </ul>
    </div>
</xsl:template>

<xsl:template match="/Entreprises">
    <li class="list-group-item">
        <h5>
            Liste de toutes les entreprises.
        </h5>
        <table class="table table-hover table-stripped table-bordered">
            <thead>
                <tr>
                    <th class="active col-md-3">Nom</th>
                    <th class="active col-md-3">Symbole</th>
                    <th class="active col-md-3">Secteur</th>
                    <th class="active col-md-3">Année de création</th>
                    <th class="active col-md-3">Site Web</th>
                    <th class="active col-md-3">Place Boursière</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="Entreprise">
                    <tr>
                        <td><xsl:value-of select="Nom" /></td>
                        <td><xsl:value-of select="Symbole" /></td>
                        <td><xsl:value-of select="Secteur" /></td>
                        <td><xsl:value-of select="AnneeCreation" /></td>
                        <td><xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="SiteWeb"/>
                            </xsl:attribute>
                            <xsl:value-of select="SiteWeb"/>
                        </xsl:element></td>
                        <td><xsl:value-of select="PlaceBoursiere" /></td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </li>
</xsl:template>
