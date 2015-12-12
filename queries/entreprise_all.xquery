xquery version "3.0";
<Entreprises>
{
    for $entreprise in doc("xml/db.xml")//Entreprise
    return  <Entreprise>
    			{$entreprise/Nom}
    			{$entreprise/Secteur}
                {$entreprise/AnneeCreation}
                {$entreprise/Symbole}
    			{$entreprise/SiteWeb}
    			{$entreprise/PlaceBoursiere}
    		</Entreprise>
}
</Entreprises>
