import os

files = [
    "bourse_all",
    "entreprise_all",
    "Action_by_ID_evolutionWeek"
]

for f in files:
    os.system("bash ./tohtml.sh " + f + " noconfirm")
