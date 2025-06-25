try:
    with open("log.txt", "r") as f:
        print(f.read())
except FileNotFoundError:
    print("File not found!")
except Exception as e:
    print(f"An error occurred: {e}")
