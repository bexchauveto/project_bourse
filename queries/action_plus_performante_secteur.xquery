xquery version "3.0";
<Actions>
{
    let $doc := doc("xml/db.xml")
    for $action in $doc//Action,
        $entreprise in $doc//Entreprise
    where $action/@Nom = $entreprise/Symbole and max($doc//Action/ValCloture) = $action/ValCloture and $entreprise/Secteur = "Telecommunications" and $action/@Date = "2015-12-06"
    return  <Action Nom="{$action/@Nom}" Date="{$action/@Date}">
                {$action/ValOuverture}
                {$action/ValMaximum}
                {$action/ValMinimum}
                {$action/ValCloture}
                {$action/NbEchange}
            </Action>
}
</Actions>