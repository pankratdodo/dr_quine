# Comment outside

def another_func():
    str = "# Comment outside{0}{0}def another_func():{0}    str = {2}{1}{2}{0}    print(str.format(chr(10), str, chr(34))){0}{0}if __name__ == '__main__':{0}    # Comment inside{0}    another_func()"
    print(str.format(chr(10), str, chr(34)))

if __name__ == '__main__':
    # Comment inside
    another_func()
