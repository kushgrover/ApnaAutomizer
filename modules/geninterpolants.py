from library.timestamp import *
from mathsat import *
from library.formula_translator import *


def get_interpolant(f):
    vars=[]
    time=[]

    # create config
    cfg = msat_create_config()

    # enable interpolation support 
    msat_set_option(cfg, "interpolation", "true")       
    
    # create environment
    env = msat_create_env(cfg)
    assert(not(MSAT_ERROR_ENV(env)))
    # destroy config
    msat_destroy_config(cfg)

    int_tp = msat_get_integer_type(env)
    # paramtps = []
    # paramtps.append(int_tp)
    # func_tp = msat_get_function_type(env, paramtps, int_tp)

    # adding time stamp to all formulas in the trace accordingly
    for j in range(len(f)):
        f[j]=time_stamp(f[j],vars,time)
        # print f[j]

    # declaring all the variables with possible time stamps 
    for j in range(len(vars)):
        for k in range(time[j]+2):
            d = msat_declare_function(env, vars[j]+"_"+str(k), int_tp) #did_changes
            # print "[DEBUG] var declared in msat : "+vars[j]+str(k+1)
            assert(not(MSAT_ERROR_DECL(d)))
    
    # creating mathsat terms from trace
    formula=[]
    for j in range(len(f)):
        formula.append(msat_from_string(env, f[j]))
        assert(not(MSAT_ERROR_TERM(formula[j])))

    # push
    msat_push_backtrack_point(env)

    # Find interpolants between all consecutives statements in trace
    group=[]
    for j in range(len(f)):
        group.append(msat_create_itp_group(env))
        msat_set_itp_group(env, group[j])
        res=msat_assert_formula(env, formula[j])
        assert(res==0)

    res=msat_solve(env)
    ga=[]
    itp=[]
    if(res==MSAT_SAT):
        return (env,itp,1)
    assert(res==MSAT_UNSAT)    
    itp.append(msat_from_string(env,"true"))
    for j in range(len(f)):
        ga.append(group[j])
        itp.append(msat_get_interpolant(env, ga))
        assert(not(MSAT_ERROR_TERM(itp[j])))

    # for Debugging
    for j in range(len(itp)):
        print "[DEBUG] Found interpolant "+str(j)+" : "+msat_to_smtlib2_term(env,itp[j])
    
    # pop
    msat_pop_backtrack_point(env)

    return (env,itp,0)