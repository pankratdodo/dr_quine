# Comment
FILE_NAME = "Grace_kid.py"
STR = "# Comment{0}FILE_NAME = {1}Grace_kid.py{1}{0}STR = {1}{2}{1}{0}FN = lambda fd : fd.write(STR.format(chr(10), chr(34), STR)){0}FN(open(FILE_NAME, {1}w{1}))"
FN = lambda fd : fd.write(STR.format(chr(10), chr(34), STR))
FN(open(FILE_NAME, "w"))