xquery version "3.0";
<Bourses>
{
let $doc := doc("xml/db.xml")
for $bourse in $doc//Bourse
return
    <Bourse bourse="{$bourse/Nom}">
    {
        let $actionsDuJour := $doc//Action[@Date = "2015-12-06"]
        let $entreprisesDeCetteBourse := $doc//Entreprise[PlaceBoursiere = $bourse/BourseId]
        let $actionsDeCetteBourse := $doc//Action[@Nom = $entreprisesDeCetteBourse/Symbole]
        let $actionsDuJourDeCetteBourse := $doc//Action[. = $actionsDuJour and . = $actionsDeCetteBourse]
        for $action in $doc//Action
        where max($actionsDuJourDeCetteBourse/ValCloture) = $action/ValCloture
        and $action/@Date = "2015-12-06"
        return $action
    }
    </Bourse>
}
</Bourses>
