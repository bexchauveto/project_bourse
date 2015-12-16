xquery version "3.0";
<Actions>
{
    let $doc := doc("xml/db.xml")
    let $action1 := $doc//Action[@Date="2015-12-12"]
    for $action in $doc//Action
    where $action/@Date = "2015-12-12" and (max($action1/NbEchange) = $action/NbEchange or min($action1/NbEchange) = $action/NbEchange)
    order by $action/NbEchange
    return  <Action Nom="{$action/@Nom}" Date="{$action/@Date}">
                {$action/ValOuverture}
                {$action/ValMaximum}
                {$action/ValMinimum}
                {$action/ValCloture}
                {$action/NbEchange}
            </Action>
}
</Actions>