xquery version "3.0";
<Actions>
{
    for $action in doc("xml/db.xml")//Action
    where $action/@Date = "2015-12-12"
    order by $action/NbEchange ascending
    return  <Action Nom="{$action/@Nom}" Date="{$action/@Date}">
                {$action/ValOuverture}
                {$action/ValMaximum}
                {$action/ValMinimum}
                {$action/ValCloture}
                {$action/NbEchange}
            </Action>

}
</Actions>