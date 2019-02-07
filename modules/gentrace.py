import os
import automata_operations
import time 

def generate_trace(input_file,iteration):

    print "[ok1]"+str(time.time())
    automata_operations.execute_automatascript(input_file, "temp.txt", "trace",iteration)
    print "[ok2]"+str(time.time())

    file = open("temp/temp.txt", "r")
    print "[ok3]"+str(time.time())

    p = "print(getAcceptedWord(nfa"
    print "[ok4]"+str(time.time())

    k = ""
    while p not in k:
        k = file.readline()
    s = file.readline()
    f = [line for line in [line.strip() for line in s.split("\"")] if line]
    print "[ok5]"+str(time.time())

    return f

    # f=[]
    # f.append("(= x 0)")
    # f.append("(= x1 (+ x 1))")
    # f.append("(< x1 1)")

