from mathsat import *
from collections import OrderedDict
import timestamp

def floyd_hoare(alpha,interpolants):
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

	pre_state = interpolants[0]
	for state_no, state in enumerate(interpolants):	#most "unsmart" way to get all hoare triples
		for letter in alpha:
			if is_valid_hoare_triple(state,letter,state):
				new_ats_tr.append("q"+str(state_no)+" \""+letter+"\" "+"q"+str(state_no))
			if is_valid_hoare_triple(pre_state,letter,state) and state_no > 0:
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



def is_valid_hoare_triple(pre,f,post):
	#implement this
	#pre and post are msat declare types
	#f is of form in which they are in ats file transitions
	cfg = msat_create_config()
	env = msat_create_env(cfg)
    msat_push_backtrack_point(env)
    res=msat_assert_formula(env,pre)
    assert(res==0)

	return True







tr = ["x = 0", "y = 0", "x++", "x==-1"]

floyd_hoare(tr)
	












