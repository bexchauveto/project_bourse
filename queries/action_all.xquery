<Actions>
{
    let $doc := doc("xml/db.xml")
    for $action in $doc//Action
    order by $action/@Nom
    return  <Action Nom="{$action/@Nom}" Date="{$action/@Date}">
                {$action/ValOuverture}
                {$action/ValMaximum}
                {$action/ValMinimum}
                {$action/ValCloture}
                {$action/NbEchange}
            </Action>
}
</Actions>
