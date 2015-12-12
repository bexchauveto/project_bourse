#! usr/bin/python
import sys

if len(sys.argv) != 2:
    print "Bad number of arguments"
    sys.exit()

source_filename = "templates/" + sys.argv[1] + ".xslt"
out_filename = "tmp/temp.xslt"
source = ""
template = ""

with open('template.xslt', 'r') as content_file:
    template = content_file.read()

with open(source_filename, 'r+') as content_file:
    source = content_file.read()

content = template.replace("@RenderXSLT", "\n" + source + "\n");
with open(out_filename, 'w+') as content_file:
    content_file.write(content)

print "Template parsing OK"
sys.exit(0)
