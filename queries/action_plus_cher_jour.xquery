xquery version "3.0";
<Actions>
{
    for $action in doc("xml/db.xml")//Action
    for $actionn in doc("xml/db.xml")//Action
    where $action/@Date = "2015-12-12" and $action/@Nom ne $actionn/@Nom and $action/ValCloture > $actionn/ValCloture
    return  <Action Nom="{$action/@Nom}" Date="{$action/@Date}">
                {$action/ValOuverture}
                {$action/ValMaximum}
                {$action/ValMinimum}
                {$action/ValCloture}
                {$action/NbEchange}
            </Action>

}
</Actions>