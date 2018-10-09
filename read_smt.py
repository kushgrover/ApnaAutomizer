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


	new_ats_tr = []
	it_ip=1
	state_count = 0
	for transition in trace:
		if(interpolants[it_ip] == interpolants[it_ip-1]):
			new_ats_tr.append("q"+str(state_count)+" \""+transition+"\" "+"q"+str(state_count))
		else:
			new_ats_tr.append("q"+str(state_count)+" \""+transition+"\" "+"q"+str(state_count+1))
			state_count += 1
		it_ip += 1

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
	new_ats.write(");")
	new_ats.write("print(getAcceptedWord(nfa1));")



		
tr = ["x = 0", "y = 0"]#, "x = x + 1", "x = (-1)"]

floyd_hoare(tr)
	












