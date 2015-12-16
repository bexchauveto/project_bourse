xquery version "3.0";
<Actions>
{
    let $doc := doc("xml/db.xml")
    let $action1 := $doc//Action[@Date="2015-12-06"]
    for $action in $doc//Action
    where $action/@Date = "2015-12-06" and (max($action1/ValCloture) = $action/ValCloture or min($action1/ValCloture) = $action/ValCloture)
    order by $action/ValCloture
    return  <Action Nom="{$action/@Nom}" Date="{$action/@Date}">
                {$action/ValOuverture}
                {$action/ValMaximum}
                {$action/ValMinimum}
                {$action/ValCloture}
                {$action/NbEchange}
            </Action>
}
</Actions>