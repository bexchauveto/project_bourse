xquery version "3.0";
<Bourses>
{
    for $bourse in doc("xml/db.xml")//Bourse
    return  <Bourse>
    			{$bourse/Nom}
    			{$bourse/Code}
    			{$bourse/Adresse/NumRue}
    			{$bourse/Adresse/NomRue}
                {$bourse/Adresse/NomVille}
                {$bourse/Adresse/CodeVille}
                {$bourse/Adresse/Pays}
    		</Bourse>
}
</Bourses>
