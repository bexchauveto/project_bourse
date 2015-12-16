xquery version "3.0";
<Entreprises>
{
    for $entreprise in doc("xml/db.xml")//Entreprise
    for $bourse in doc("xml/db.xml")//Bourse
    where $bourse/BourseId = $entreprise/PlaceBoursiere
    return  <Entreprise>
    			{$entreprise/Nom}
    			{$entreprise/Secteur}
                {$entreprise/AnneeCreation}
                {$entreprise/Symbole}
    			{$entreprise/SiteWeb}
    			<NomBourse>{$bourse/Nom}</NomBourse>
    		</Entreprise>
}
</Entreprises>
