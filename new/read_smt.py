from mathsat import *
from collections import OrderedDict
from valid_hoare_triple import is_valid_hoare_triple

def floyd_hoare(env,alpha,interpolants):
	# smt_f = open("example_interpolants.smt", "r")

	# interpolants = []
	#alpha = []		#get this from orig ats result

	# for line in smt_f:
	# 	if line.startswith("(assert"):
	# 		interpolants.append(line)
	# print "interpolants read : "+str(interpolants)

	# interpolants = ["t", "x>=0", "x>=0", "f"]
	"""
	if len(alpha) == (len(interpolants)-1):
		print "number of interpolants"" is ok"
	else:
		print "problem : number of interpolants "+str(len(interpolants))+" mismatches number of transition "+str(len(alpha))
	"""

	new_ats_tr = []	#transition list in new floyd-hoare automaton
	"""
	it_ip=1
	state_count = 0
	for transition in alpha:
		if(interpolants[it_ip] == interpolants[it_ip-1]):
			new_ats_tr.append("q"+str(state_count)+" \""+transition+"\" "+"q"+str(state_count))
		else:
			new_ats_tr.append("q"+str(state_count)+" \""+transition+"\" "+"q"+str(state_count+1))
			state_count += 1
		it_ip += 1
	"""
	interpolants = list(OrderedDict.fromkeys(interpolants))

    # cfg = msat_create_config()
    # env = msat_create_env(cfg)
    # msat_destroy_config(cfg)

	pre_state = interpolants[0]
	for state_no, state in enumerate(interpolants):	#most "unsmart" way to get all hoare triples
		for letter in alpha:
			state_string=msat_to_smtlib2_term(env,state)
			pre_state_string=msat_to_smtlib2_term(env,pre_state)
			if is_valid_hoare_triple(env,state_string,letter,state_string):
				new_ats_tr.append("q"+str(state_no)+" \""+letter+"\" "+"q"+str(state_no))
			if is_valid_hoare_triple(env,pre_state_string,letter,state_string) and state_no > 0:
				new_ats_tr.append("q"+str(state_no-1)+" \""+letter+"\" "+"q"+str(state_no))	
		pre_state = state


	alphabet = set(alpha)

	new_ats =  open("floyd_hoare.ats", "w")

	new_ats.write("FiniteAutomaton nfa1 = (\n")

	s = "     alphabet = {"
	for letter in alphabet:
		s = s + "\""+letter + "\" "
	s = s + "},\n"
	new_ats.write(s)

	s = "     states = {"

	for i in range (0,len(interpolants)):
		s = s + "q"+str(i) + " "
	s = s + "},\n"
	new_ats.write(s)

	new_ats.write("     initialStates = {q0},\n")
	new_ats.write("     finalStates = {q"+str(len(interpolants)-1)+"},\n")
	new_ats.write("     transitions = {\n")

	for transition in new_ats_tr:
		new_ats.write("         ("+transition+")\n")

	new_ats.write("     }\n")
	new_ats.write(");\n")
	new_ats.write("print(getAcceptedWord(nfa1));")


tr = ["x = 0", "y = 0", "x = x + 1", "x == (-1)"]

# floyd_hoare(tr,tr)
	












