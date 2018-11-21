(set-option :timeout |900000|)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
(set-option :produce-interpolants true)
(set-option :interpolant-check-mode true)
(set-option :proof-transformation LU)
(set-logic QF_AUFLIRA)
(set-info :source |
    SMT script generated on 2018/11/19 by Ultimate. http://ultimate.informatik.uni-freiburg.de/
|)
(set-info :smt-lib-version 2.5)
(set-info :category "industrial")
(assert true)
(echo "starting trace check")
(push 1)
(declare-fun main_~j~1_4 () Int)
(declare-fun main_~k~1_4 () Int)
(declare-fun main_~i~1_4 () Int)
(declare-fun main_~j~1_6 () Int)
(declare-fun main_~k~1_6 () Int)
(declare-fun main_~i~1_6 () Int)
(assert (! true :named ssa_precond_conjunct0))
(assert (! (not false) :named ssa_postcond))
(assert (! true :named ssa_0_GlobVarAssigCall_conjunct0))
(assert (! true :named ssa_0_LocVarAssigCall_conjunct0))
(assert (! true :named ssa_0_OldVarAssigCall_conjunct0))
(assert (! true :named ssa_1_conjunct0))
(assert (! true :named ssa_2_return_conjunct0))
(assert (! true :named ssa_3_GlobVarAssigCall_conjunct0))
(assert (! true :named ssa_3_LocVarAssigCall_conjunct0))
(assert (! true :named ssa_3_OldVarAssigCall_conjunct0))
(assert (! (<= main_~i~1_4 0) :named ssa_4_conjunct0))
(assert (! (>= main_~i~1_4 0) :named ssa_4_conjunct1))
(assert (! (<= main_~k~1_4 0) :named ssa_4_conjunct2))
(assert (! (>= main_~k~1_4 0) :named ssa_4_conjunct3))
(assert (! (<= main_~j~1_4 0) :named ssa_4_conjunct4))
(assert (! (>= main_~j~1_4 0) :named ssa_4_conjunct5))
(assert (! true :named ssa_5_conjunct0))
(assert (! (<= main_~k~1_6 (+ main_~k~1_4 3)) :named ssa_6_conjunct0))
(assert (! (>= main_~k~1_6 (+ main_~k~1_4 3)) :named ssa_6_conjunct1))
(assert (! (< (mod main_~k~1_4 4294967296) 30) :named ssa_6_conjunct2))
(assert (! (<= main_~j~1_6 (+ main_~j~1_4 2)) :named ssa_6_conjunct3))
(assert (! (>= main_~j~1_6 (+ main_~j~1_4 2)) :named ssa_6_conjunct4))
(assert (! (<= main_~i~1_6 (+ main_~i~1_4 1)) :named ssa_6_conjunct5))
(assert (! (>= main_~i~1_6 (+ main_~i~1_4 1)) :named ssa_6_conjunct6))
(assert (! (or (not (= (mod (* 3 main_~i~1_6) 4294967296) (mod main_~k~1_6 4294967296))) (not (= (mod (* 2 main_~i~1_6) 4294967296) (mod main_~j~1_6 4294967296)))) :named ssa_7_conjunct0))
(check-sat)
(get-unsat-core)
(echo "finished trace check")
(pop 1)
(exit)