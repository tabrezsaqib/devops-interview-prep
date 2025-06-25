with open("log.txt", "w") as f:
    f.write("Log entry 1\n")
    f.write("Log entry 2\n")

with open("log.txt", "r") as f:
    content = f.read()
    print(content)
