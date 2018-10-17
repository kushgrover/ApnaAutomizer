import os


# generallay automatons are named nfa_0
# fha is named fha 


def getalphabet(ats_file):		#what is this doing exactly? seems more complicated than needed
	file=open(ats_file,"r")
	p = "print(getAcceptedWord(nfa))"
	k = ""
	while p not in k:
		k = file.readline()
		if("alphabet" in k):
			n=k.find("{")
			m=k.find("}")
			alphabet=k[n+2:m-1]
			alphabet=alphabet.split('" "')
			print "[DEBUG] Alphabet : "+str(alphabet)
			return alphabet

# automata library execution is hardcoded. need to install and change properly.
def execute_automatascript(ats_file, result, operation, iteration):
	os.system("cp "+ats_file+" apna_ats.ats")

	with open("apna_ats.ats", "a") as ats:
		ats.write("\n")
		if(operation == "trace"):
			print "[DEBUG] fyck"
			ats.write("print(getAcceptedWord(nfa_"+str(iteration)+"));\n\n")
		if(operation == "subset"):
			ats.write("print(isEmpty(nfa_"+str(iteration)+"));")
	#os.system("/home/hydra/Downloads/UltimateAutomizer-linux/UAutomizer-linux/Ultimate -tc AutomataScriptInterpreter.xml -i "+ ats_file + " > temp.txt")
	os.system("/home/arijit/verification/UAutomizer-linux/Ultimate -tc AutomataScriptInterpreter.xml -i apna_ats.ats > "+result)



def cover_check(first_file, iteration): #checks first subset second
	# first = open(first_file,"r")
	# second = open(second_file,"r")

	# os.system("rm temp.ats")

	# compare_ats = open("temp.ats","w+")

	# for line in first:
	# 	compare_ats.write(line)
	# for line in second:
	# 	compare_ats.write(line)

	# os.system("cp temp.ats input.ats")



	#perform program automaton \ fha

	with open(first_file,"a") as ats_file:
		ats_file.write("\nFiniteAutomaton nfa_"+str(iteration)+" = intersect(nfa_"+str(iteration-1)+",complement(fha_"+str(iteration)+"));\n")


	execute_automatascript(first_file,"temp.txt","subset",iteration)

	#keep fail check

	file = open("temp.txt", "r")

	p = "print(isEmpty("

	k = ""

	while p not in k:
		k = file.readline()

	s = file.readline()

	if "ture" in s:
		return True
	else:
		return False


