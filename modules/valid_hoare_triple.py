# from read_smt import *
from timestamp import infix_to_prefix
from mathsat import *

# function to replace time stamp of 'variable' in 'formula' according to 'according_to' 
def replace_with_time(formula, according_to, variable): 
    n=according_to.find(variable)
    if(n==-1):
        return formula
    elif(according_to[n+len(variable)]=="_"):
        j=according_to[n+len(variable):].find(" ")
        if(not(j==-1)):
            new_var=according_to[n:n+j+1]
        else:
            new_var=according_to[n:]
        formula=formula.replace(variable+" ",new_var+" ")
        formula=formula.replace(variable+")",new_var+")")
        if(formula==variable):
            formula=new_var
        return formula
    else:
        print "error"

# function to check if 'var' is a variable in 'string'
def var_in(string, var):
    n=string.find(var)
    if(string[n+len(var)]=="_"):
        return True
    else:
        return False

# return the list of all the variables in 'string'
def find_vars(string):
    string=string.replace("(","")
    string=string.replace(")","")
    string=string.replace("= ","")
    string=string.replace("+ ","")
    string=string.replace("== ","")
    string=string.replace("- ","")
    string=string.replace("* ","")
    string=string.replace("< ","")
    string=string.replace("<= ","")
    string=string.replace(">= ","")
    string=string.replace("> ","")
    var=string.split(" ")
    for j in range(len(var)):
        if(var[j][0]=="0" or var[j][0]=="1" or var[j][0]=="2" or var[j][0]=="3" or var[j][0]=="4" or var[j][0]=="5" or var[j][0]=="6" or var[j][0]=="7" or var[j][0]=="8" or var[j][0]=="9"):
            var.pop(j)
    return var

# returns 'new_var' with current appropriate time stamp
# num=0 means assignment operator
# eg: pre = "< x_1 0" , post = "= x_2 0" , var = "x" , num = 0
# then returns "x_2"
# if num = 1 then returns "x_1"
def current_time(var,pre,post,num):
    if(var_in(pre,var)):
        var_new=replace_with_time(var,pre,var)
        if(num==0):
            time=var_new.replace(var+"_","")
            var_new=var+"_"+str(int(time)+1)
    elif(var_in(post,var)):
        var_new=replace_with_time(var,post,var)
        if(num==0):
            time=var_new.replace(var+"_","")
            var_new=var+"_"+str(int(time))
    else:
        var_new=var
    return var_new        

def is_valid_hoare_triple(env,pre,statement,post):
	#implement this
	#pre and post are msat declare types
	#f is of form in which they are in ats file transitions
    int_tp = msat_get_integer_type(env)

    # declare all the variables in statement
    for var in find_vars(statement):
        d = msat_declare_function(env, var, int_tp)
        assert(not(MSAT_ERROR_DECL(d)))

    # break statement into lhs, operator and rhs 
    for j in range(len(statement)):
        if(statement[j]==" "):
            k=j
            lhs=statement[0:j]
            break
    for j in range(k+1,len(statement)):
        if(statement[j]==" "):
            operator=statement[k+1:j]
            rhs=statement[j+1:len(statement)]

    # checking if operator is assignment then adding time stamps to lhs
    if(operator=="="):
        lhs=current_time(lhs,pre,post,0)
    else:
        lhs=current_time(lhs,pre,post,1)

    # adding time stamps in rhs
    for var in find_vars(rhs):
        if(var_in(pre,var)):
            print "[DEBUG] lode lag gaye"
            rhs=replace_with_time(rhs, pre, var)
        elif(var_in(post,var)):
            print "[DEBUG] lode nahi lage"
            rhs=replace_with_time(rhs, post, var)

    # replacing "==" by "="
    if(operator=="=="):
        operator="="
    
    # writing statement in smtlib2 term
    statement="("+operator+" "+lhs+" "+infix_to_prefix(rhs)+")"

    # for Debugging
    print "[DEBUG] check Hoare Triple : {"+pre+"} "+statement+" {"+post+"}"

    # push
    msat_push_backtrack_point(env)

    # creating msat terms from pre, statement, post
    statement=msat_from_string(env,statement)
    assert(not(MSAT_ERROR_TERM(statement)))
    pre=msat_from_string(env,pre)
    assert(not(MSAT_ERROR_TERM(pre)))
    post=msat_from_string(env,post)
    assert(not(MSAT_ERROR_TERM(post)))

    # asserting (pre) and (statement) and (not (post))
    res=msat_assert_formula(env, pre)
    assert(res==0)
    res=msat_assert_formula(env, statement)
    assert(res==0)
    res=msat_assert_formula(env,msat_make_not(env,post) )
    assert(res==0)

    for madarchod in msat_get_asserted_formulas(env):
        print "assetrion formula "+msat_to_smtlib2_term(env,madarchod)

    # if env is SAT then return False else return True
    res=msat_solve(env)
    if(res==MSAT_SAT):
        print "[DEBUG] Hoare Triple is NOT valid."

        # pop
        msat_pop_backtrack_point(env)
    	return False
    else:
        print "[DEBUG] Hoare Triple is valid."

        #pop
        msat_pop_backtrack_point(env)
        return True