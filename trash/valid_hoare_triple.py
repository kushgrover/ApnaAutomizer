# from read_smt import *
from timestamp import infix_to_prefix
from mathsat import *

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

def var_in(string, var):
    n=string.find(var)
    if(string[n+len(var)]=="_"):
        return True
    else:
        return False

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

def is_valid_hoare_triple(env,pre,string,post):
	#implement this
	#pre and post are msat declare types
	#f is of form in which they are in ats file transitions
    int_tp = msat_get_integer_type(env)

    for var in find_vars(string):
        d = msat_declare_function(env, var, int_tp)
        assert(not(MSAT_ERROR_DECL(d)))
    # d = msat_declare_function(env, "x_3", int_tp)
    # assert(not(MSAT_ERROR_DECL(d)))
    for j in range(len(string)):
        if(string[j]==" "):
            k=j
            lhs=string[0:j]
            break
    for j in range(k+1,len(string)):
        if(string[j]==" "):
            operator=string[k+1:j]
            rhs=string[j+1:len(string)]
    if(operator=="="):
        lhs=current_time(lhs,pre,post,0)
    else:
        lhs=current_time(lhs,pre,post,1)
    for var in find_vars(rhs):
        if(var_in(pre,var)):
            rhs=replace_with_time(rhs, pre, var)
        elif(var_in(post,var)):
            rhs=replace_with_time(rhs, post, var)
    if(operator=="=="):
        operator="="
    f="("+operator+" "+lhs+" "+infix_to_prefix(rhs)+")"

    msat_push_backtrack_point(env)

    f=msat_from_string(env,f)
    assert(not(MSAT_ERROR_TERM(f)))
    pre=msat_from_string(env,pre)
    assert(not(MSAT_ERROR_TERM(pre)))
    post=msat_from_string(env,post)
    assert(not(MSAT_ERROR_TERM(post)))

    result=msat_assert_formula(env, msat_make_and(env, pre, f))
    assert(result==0)
    res=msat_assert_formula(env,msat_make_not(env,post) )
    assert(res==0)

    res=msat_solve(env)
    if(res==MSAT_SAT):
        print False
    	return False
    else:
        print True
        return True
    msat_pop_backtrack_point(env)
