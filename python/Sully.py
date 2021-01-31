import os.path
i = 5
str = "import os.path{0}i = {5}{0}str = {1}{2}{1}{0}if i > 0:{0}    name = {1}Sully_{3}{4}.py{1}.format(i){0}    if os.path.exists(name):{0}        i -= 1{0}        name = {1}Sully_{3}{4}.py{1}.format(i){0}    with open(name, {1}w{1}) as f:{0}        f.write(str.format(chr(10), chr(34), str, chr(123), chr(125), i)){0}        f.close(){0}    os.system({1}python {1} + name){0}"
if i > 0:
    name = "Sully_{}.py".format(i)
    if os.path.exists(name):
        i -= 1
        name = "Sully_{}.py".format(i)
    with open(name, "w") as f:
        f.write(str.format(chr(10), chr(34), str, chr(123), chr(125), i))
        f.close()
    os.system("python " + name)
