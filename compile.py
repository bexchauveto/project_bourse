import os

files = [
    "students_by_cursus",
    "students_by_group",
    "students_by_year",
    "students_all",
    "teachings_course",
    "teachings_cursus",
    "teachings_teacher",
    "students_uf",
    "students_uf_nonvalidated",
    "students_uf_validated"
]

for f in files:
    os.system("bash ./tohtml.sh " + f + " noconfirm")

