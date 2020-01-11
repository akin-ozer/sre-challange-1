import sys

userDict = {}
rev_dict = {}

# Get file name as argument
file = open(sys.argv[1], "r")

# Get values by line to dictionary
for line in file:
    items = line.split(":")
    userId = items.pop(1)
    user = items.pop(0)
    userDict[user] = userId

# Reverse dict
for key, value in userDict.items():
    rev_dict.setdefault(value, set()).add(key)

# Remove not duplicated user
for key in rev_dict.copy():
    if len(rev_dict[key]) < 2:
        del rev_dict[key]

# Format
for k, v in rev_dict.items():
    print(k + ":", ', '.join(v))
