import os
import sys
import gentrace
import geninterpolants
import hoare_automaton
import automata_operations

#input_file is program automaton
#automaton must be named "nfa" ()
#result is result of verification


def runner(program_ats):
    # fha = "floyd_hoare.ats"
    iteration = 0
    verification_done = False
    input_file = "input.ats"
    os.system("cp "+program_ats+" "+input_file)
    alp = automata_operations.getalphabet(input_file)
    while not verification_done:
        iteration += 1
        print"[DEBUG] iteration count = "+ str(iteration)
        tr = gentrace.generate_trace(input_file)
        print "[DEBUG] Trace generated : "+str(tr)
        if (tr == []):
            verification_done = True
            print "Verification Successful"
        else:
            (env,itp) = geninterpolants.get_interpolant(tr) #itp of msat type. env is the environment
            hoare_automaton.floyd_hoare(env,alp,itp,input_file,iteration)
            res = automata_operations.cover_check(input_file, iteration)     #this modifies input_file too, as input \ floyd_hoare
            #slice_automaton(input_file)   #Do we need this?
            if res:
                verification_done = True
                print "Verification Failed"


runner(sys.argv[1]) 