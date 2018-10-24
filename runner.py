import os
import sys
import modules.gentrace as gentrace 
import modules.geninterpolants as geninterpolants
import modules.hoare_automaton as hoare_automaton
import modules.automata_operations as automata_operations

#input_file is program automaton
#automaton must be named "nfa" ()
#result is result of verification


def runner(program_ats):
    # fha = "floyd_hoare.ats"
    iteration = 0
    verification_done = False
    input_file = "temp/input.ats"
    os.system("cp "+program_ats+" ./"+input_file)
    alp = automata_operations.getalphabet(input_file)
    while not verification_done:
        print"[DEBUG] iteration count = "+ str(iteration)
        tr = gentrace.generate_trace(input_file,iteration)
        print "[DEBUG] Trace generated : "+str(tr)
        iteration += 1
        if (tr == []):
            verification_done = True
            # print "\n[RESULT] Program is correct.\n"
            print "\nVerification Successful.\n"
        else:
            (env,itp,jeez) = geninterpolants.get_interpolant(tr) #itp of msat type. env is the environment
            if(jeez==1):    # Program is incorrect
                # print "\n[RESULT] Program is incorrect.\n"
                print "\nVerification Failed.\n"
                verification_done = True
            else:
                hoare_automaton.floyd_hoare(env,alp,itp,input_file,iteration)
                res = automata_operations.cover_check(input_file, iteration) #this modifies input_file too, as input \ floyd_hoare
                if res:
                    verification_done = True
                    print "\nVerification Successful.\n"
                        
            #slice_automaton(input_file)   #Do we need this?


runner(sys.argv[1]) 