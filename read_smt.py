from mathsat import *
from collections import OrderedDict

def floyd_hoare(trace):
	smt_f = open("example_interpolants.smt", "r")

	interpolants = []
	#trace = []		#get this from orig ats result

	for line in smt_f:
		if line.startswith("(assert"):
			interpolants.append(line)
	print "interpolants read : "+str(interpolants)

	if len(trace) == (len(interpolants)-1):
		print "number of interpolants"" is ok"
	else:
		print "problem : number of interpolants "+str(len(interpolants))+" mismatches number of transition "+str(len(trace))


	new_ats_tr = []	#transition list in new floyd-hoare automaton
	it_ip=1
	state_count = 0
	for transition in trace:
		if(interpolants[it_ip] == interpolants[it_ip-1]):
			new_ats_tr.append("q"+str(state_count)+" \""+transition+"\" "+"q"+str(state_count))
		else:
			new_ats_tr.append("q"+str(state_count)+" \""+transition+"\" "+"q"+str(state_count+1))
			state_count += 1
		it_ip += 1

	interpolants = list(OrderedDict.fromkeys(interpolants))

	for pre_state_no, pre_state in enumerate(interpolants):	#most "unsmart" way to get all hoare triples
		for post_state_no, post_state in enumerate(interpolants):
			for transition in trace:
				if is_valid_hoare_triple(pre_state,transition,post_state):
					new_ats_tr.append("q"+str(pre_state_no)+" \""+transition+"\" "+"q"+str(post_state_no))



	alphabet = set(trace)

	new_ats =  open("floyd_hoare.ats", "w")

	new_ats.write("FiniteAutomaton nfa1 = (\n")

	s = "     alphabet = {"
	for letter in alphabet:
		s = s + "\""+letter + "\" "
	s = s + "},\n"
	new_ats.write(s)

	s = "     states = {"
	for i in range (0,it_ip):
		s = s + "q"+str(i) + " "
	s = s + "},\n"
	new_ats.write(s)

	new_ats.write("     initialStates = {q0},\n")
	new_ats.write("     finalStates = {q"+str(state_count)+"},\n")
	new_ats.write("     transitions = {\n")

	for transition in new_ats_tr:
		new_ats.write("         ("+transition+")\n")

	new_ats.write("     }\n")
	new_ats.write(");\n")
	new_ats.write("print(getAcceptedWord(nfa1));")



def is_valid_hoare_triple(pre,f,post):
	#implement this
	#pre and post are msat declare types
	#f is of form in which they are in ats file transitions
	cfg = msat_create_config()
	env = msat_create_env(cfg)

	return True







tr = ["x = 0", "y = 0"]#, "x = x + 1", "x = (-1)"]

floyd_hoare(tr)
	












