from formula_translator import *

def existing_var(string,vars):
    for j in range(len(vars)):
        if(string==vars[j]):
            return True
    return False

def index_of(string,vars):
    for j in range(len(vars)):
        if(string==vars[j]):
            return j


def time_stamp(string,vars,time):
    for j in range(len(string)):
        if(string[j]==" "):
            k=j
            lhs=string[0:j]
            break
    for j in range(k+1,len(string)):
        if(string[j]==" "):
            operator=string[k+1:j]
            rhs=string[j+1:len(string)]
            break
    if (operator=="="):
        if(existing_var(lhs,vars)):
            time[index_of(lhs,vars)]+=1
        else:
            vars.append(lhs)
            time.append(1)
    if(operator=="=="):
        operator = "="
    if(not(existing_var(lhs,vars))):
        vars.append(lhs)
        time.append(1)
    return "("+operator+" "+lhs+str(time[index_of(lhs,vars)])+" "+infix_to_prefix(rhs)+")"