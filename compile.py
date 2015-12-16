import os

files = [
    "bourse_all",
    "entreprise_all",
    "action_all",
    "Action_by_ID_evolutionWeek",
    "action_plus_performante_secteur",
    "action_plus_performante_place",
    "action_la_plus_vendue_la_moins_vendue",
    "action_la_plus_cher_la_moins_cher"
]

for f in files:
    os.system("bash ./tohtml.sh " + f + " noconfirm")
