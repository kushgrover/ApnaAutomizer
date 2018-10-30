import os
import sys
import time
import modules.gentrace as gentrace 
import modules.geninterpolants as geninterpolants
import modules.hoare_automaton as hoare_automaton
import modules.automata_operations as automata_operations

#input_file is program automaton
#automaton must be named "nfa" ()
#result is result of verification

#run as : python runner.py <filename.ats> [OPTIONS]
#OPTIONS : -t to show time involved


def runner(program_ats,arguments):
    # fha = "floyd_hoare.ats"
    iteration = 0
    verification_done = False
    input_file = "temp/input.ats"
    os.system("cp "+program_ats+" ./"+input_file)
    alp = automata_operations.getalphabet(input_file)
    lib_automata_time = 0
    mathsat_time = 0
    while not verification_done:
        time_0 = time.time()
        print"\n\n[DEBUG] iteration count = "+ str(iteration)
        tr = gentrace.generate_trace(input_file,iteration)
        time_1 = time.time()
        print "[DEBUG] Trace generated : "+str(tr)
        iteration += 1
        if (tr == []):
            verification_done = True
            # print "\n[RESULT] Program is correct.\n"
            print "\nVerification Successful.\n"
        else:
            time_2 = time.time()
            (env,itp,jeez) = geninterpolants.get_interpolant(tr) #itp of msat type. env is the environment
            time_3 = time.time()

            if(jeez==1):    # Program is incorrect
                # print "\n[RESULT] Program is incorrect.\n"
                print "\nVerification Failed.\n"
                verification_done = True
            else:
                time_4 = time.time()
                hoare_automaton.floyd_hoare(env,alp,itp,input_file,iteration)
                time_5 = time.time()
                res = automata_operations.cover_check(input_file, iteration) #this modifies input_file too, as input \ floyd_hoare
                time_6 = time.time()
                if res:
                    verification_done = True
                    print "\nVerification Successful.\n"
                        
            #slice_automaton(input_file)   #Do we need this?
        if "-t" in arguments:
            print "[TIME] Generating traces took       : "+ str(time_1 - time_0)+" sec"
            print "[TIME] Generating interpolants took : "+ str(time_3 - time_2)+" sec"
            print "[TIME] Creating Floyd Hoare took    : "+ str(time_5 - time_4)+" sec"
            print "[TIME] checking Automata Inclusion  : "+ str(time_6 - time_5)+" sec"
            print "[TIME] Automata Library took total  : "+ str(time_6 - time_5 + time_1 - time_0)+" sec"
            lib_automata_time += time_6 - time_5 + time_1 - time_0
            print "[TIME] MathSAT took total           : "+ str(time_5 - time_4 + time_3 - time_2)+" sec"
            mathsat_time += time_5 - time_4 + time_3 - time_2
    if "-t" in arguments:
        print "[TIME] Automata Library took finally : "+ str(lib_automata_time)+" sec"
        print "[TIME] MathSAT took finally          : "+ str(mathsat_time)+" sec"






runner(sys.argv[1],sys.argv) 