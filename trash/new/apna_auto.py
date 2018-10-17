import os
from timestamp import *
from mathsat import *
from read_smt import *
# import make_hoare_automaton

os.system("/home/hydra/Downloads/UltimateAutomizer-linux/UAutomizer-linux/Ultimate -tc AutomataScriptInterpreter.xml -i input.ats > temp.txt")
file = open("temp.txt", "r")
p = "print(getAcceptedWord(nfa))"
k = ""
while p not in k:
    k = file.readline()
s = file.readline()
f = [line for line in [line.strip() for line in s.split("\"")] if line]
file.close()
print f

# f=[]
# f.append("(= x 0)")
# f.append("(= x1 (+ x 1))")
# f.append("(< x1 1)")

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

formula=[]
for j in range(len(f)):
    f[j]=time_stamp(f[j],vars,time)

for j in range(len(vars)):
    for k in range(time[j]+1):
        d = msat_declare_function(env, vars[j]+"_"+str(k+1), int_tp)
        assert(not(MSAT_ERROR_DECL(d)))

for j in range(len(f)):
    formula.append(msat_from_string(env, f[j]))
    print f[j]
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

file=open("input.ats","r")
p = "print(getAcceptedWord(nfa))"
k = ""
while p not in k:
    k = file.readline()
    if("alphabet" in k):
        n=k.find("{")
        m=k.find("}")
        alphabet=k[n+2:m-1]
        alphabet=alphabet.split('" "')

floyd_hoare(env,alphabet,itp)
    # s=msat_to_smtlib2_term(env,itp[j])
    # file.write(s)


# group_a=msat_create_itp_group(env)
# group_b=msat_create_itp_group(env)
# for j in range(len(f)):
#     msat_push_backtrack_point(env)
#     msat_set_itp_group(env, group_a)
#     for k in range(j+1):
#         res=msat_assert_formula(env, formula[k])
#         assert(res==0)
#     msat_set_itp_group(env, group_b)
#     for k in range(j+1,len(f)):
#         res=msat_assert_formula(env, formula[k])
#         assert(res==0)
#     res=msat_solve(env)
#     assert(res==MSAT_UNSAT)
#     ga=[]
#     ga.append(group_a)
#     itp=msat_get_interpolant(env, ga)
#     assert(not(MSAT_ERROR_TERM(itp)))
#     s=msat_to_smtlib2(env,itp)
#     file.write(s)
#     msat_pop_backtrack_point(env)

file.close()

os.system("rm temp.txt")