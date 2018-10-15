from timestamp import *
from mathsat import *
from formula_translator import *


def get_interpolant(f):
    vars=[]
    time=[]

    cfg = msat_create_config()
    msat_set_option(cfg, "interpolation", "true")       #   enable interpolation support 
    env = msat_create_env(cfg)
    assert(not(MSAT_ERROR_ENV(env)))
    msat_destroy_config(cfg)

    int_tp = msat_get_integer_type(env)
    paramtps = []
    paramtps.append(int_tp)
    func_tp = msat_get_function_type(env, paramtps, int_tp)

    for j in range(len(f)):
        f[j]=time_stamp(f[j],vars,time)

    for j in range(len(vars)):
        for k in range(time[j]+1):
            d = msat_declare_function(env, vars[j]+str(k+1), int_tp) #did_changes
            print "[DEBUG] var declared in msat : "+vars[j]+"_"+str(k+1)
            assert(not(MSAT_ERROR_DECL(d)))

    formula=[]
    for j in range(len(f)):
        formula.append(msat_from_string(env, f[j]))
        print "cool"+str(f[j])
        assert(not(MSAT_ERROR_TERM(formula[j])))

    # filename="temp.txt"
    # file=open(filename,"w")


    group=[]
    for j in range(len(f)):
        group.append(msat_create_itp_group(env))
        msat_set_itp_group(env, group[j])
        res=msat_assert_formula(env, formula[j])
        assert(res==0)

    res=msat_solve(env)
    assert(res==MSAT_UNSAT)
    ga=[]
    itp=[]
    itp.append(msat_from_string(env,"true"))
    for j in range(len(f)):
        ga.append(group[j])
        itp.append(msat_get_interpolant(env, ga))
        assert(not(MSAT_ERROR_TERM(itp[j])))

    for j in range(len(itp)):
        print "itp"+str(j)+"="+msat_to_smtlib2_term(env,itp[j])



    return (env,itp)