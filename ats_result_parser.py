f = open("output.txt", "r")
p = "print(getAcceptedWord(nfa1))"
k = ""

while p not in k:
	k = f.readline()

s = f.readline()

formula = [line for line in [line.strip() for line in s.split("\"")] if line]

print formula