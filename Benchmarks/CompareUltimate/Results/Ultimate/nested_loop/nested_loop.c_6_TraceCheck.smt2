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
(declare-fun main_~k~1_8 () Int)
(declare-fun main_~j~1_9 () Int)
(declare-fun |main_#t~post1_9| () Int)
(declare-fun main_~k~1_11 () Int)
(declare-fun main_~j~1_12 () Int)
(declare-fun |main_#t~post1_12| () Int)
(declare-fun |main_#t~post0_15| () Int)
(declare-fun main_~i~1_15 () Int)
(declare-fun main_~j~1_17 () Int)
(declare-fun main_~k~1_19 () Int)
(declare-fun main_~j~1_20 () Int)
(declare-fun |main_#t~post1_20| () Int)
(declare-fun main_~k~1_22 () Int)
(declare-fun main_~j~1_23 () Int)
(declare-fun |main_#t~post1_23| () Int)
(declare-fun |main_#t~post0_26| () Int)
(declare-fun main_~i~1_26 () Int)
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
(assert (! (<= main_~j~1_4 0) :named ssa_4_conjunct0))
(assert (! (>= main_~j~1_4 0) :named ssa_4_conjunct1))
(assert (! (<= main_~i~1_4 1) :named ssa_4_conjunct2))
(assert (! (>= main_~i~1_4 1) :named ssa_4_conjunct3))
(assert (! (<= main_~k~1_4 0) :named ssa_4_conjunct4))
(assert (! (>= main_~k~1_4 0) :named ssa_4_conjunct5))
(assert (! true :named ssa_5_conjunct0))
(assert (! (<= main_~j~1_6 1) :named ssa_6_conjunct0))
(assert (! (>= main_~j~1_6 1) :named ssa_6_conjunct1))
(assert (! (<= (mod main_~i~1_4 4294967296) 3) :named ssa_6_conjunct2))
(assert (! true :named ssa_7_conjunct0))
(assert (! (<= main_~k~1_8 (+ main_~i~1_4 main_~j~1_6 main_~k~1_4)) :named ssa_8_conjunct0))
(assert (! (>= main_~k~1_8 (+ main_~i~1_4 main_~j~1_6 main_~k~1_4)) :named ssa_8_conjunct1))
(assert (! (<= (mod main_~j~1_6 4294967296) 3) :named ssa_8_conjunct2))
(assert (! (<= main_~j~1_9 (+ main_~j~1_6 1)) :named ssa_9_conjunct0))
(assert (! (>= main_~j~1_9 (+ main_~j~1_6 1)) :named ssa_9_conjunct1))
(assert (! true :named ssa_10_conjunct0))
(assert (! (<= main_~k~1_11 (+ main_~i~1_4 main_~j~1_9 main_~k~1_8)) :named ssa_11_conjunct0))
(assert (! (>= main_~k~1_11 (+ main_~i~1_4 main_~j~1_9 main_~k~1_8)) :named ssa_11_conjunct1))
(assert (! (<= (mod main_~j~1_9 4294967296) 3) :named ssa_11_conjunct2))
(assert (! (<= main_~j~1_12 (+ main_~j~1_9 1)) :named ssa_12_conjunct0))
(assert (! (>= main_~j~1_12 (+ main_~j~1_9 1)) :named ssa_12_conjunct1))
(assert (! true :named ssa_13_conjunct0))
(assert (! (not (<= (mod main_~j~1_12 4294967296) 3)) :named ssa_14_conjunct0))
(assert (! (<= main_~i~1_15 (+ main_~i~1_4 1)) :named ssa_15_conjunct0))
(assert (! (>= main_~i~1_15 (+ main_~i~1_4 1)) :named ssa_15_conjunct1))
(assert (! true :named ssa_16_conjunct0))
(assert (! (<= main_~j~1_17 1) :named ssa_17_conjunct0))
(assert (! (>= main_~j~1_17 1) :named ssa_17_conjunct1))
(assert (! (<= (mod main_~i~1_15 4294967296) 3) :named ssa_17_conjunct2))
(assert (! true :named ssa_18_conjunct0))
(assert (! (<= main_~k~1_19 (+ main_~i~1_15 main_~j~1_17 main_~k~1_11)) :named ssa_19_conjunct0))
(assert (! (>= main_~k~1_19 (+ main_~i~1_15 main_~j~1_17 main_~k~1_11)) :named ssa_19_conjunct1))
(assert (! (<= (mod main_~j~1_17 4294967296) 3) :named ssa_19_conjunct2))
(assert (! (<= main_~j~1_20 (+ main_~j~1_17 1)) :named ssa_20_conjunct0))
(assert (! (>= main_~j~1_20 (+ main_~j~1_17 1)) :named ssa_20_conjunct1))
(assert (! true :named ssa_21_conjunct0))
(assert (! (<= main_~k~1_22 (+ main_~i~1_15 main_~j~1_20 main_~k~1_19)) :named ssa_22_conjunct0))
(assert (! (>= main_~k~1_22 (+ main_~i~1_15 main_~j~1_20 main_~k~1_19)) :named ssa_22_conjunct1))
(assert (! (<= (mod main_~j~1_20 4294967296) 3) :named ssa_22_conjunct2))
(assert (! (<= main_~j~1_23 (+ main_~j~1_20 1)) :named ssa_23_conjunct0))
(assert (! (>= main_~j~1_23 (+ main_~j~1_20 1)) :named ssa_23_conjunct1))
(assert (! true :named ssa_24_conjunct0))
(assert (! (not (<= (mod main_~j~1_23 4294967296) 3)) :named ssa_25_conjunct0))
(assert (! (<= main_~i~1_26 (+ main_~i~1_15 1)) :named ssa_26_conjunct0))
(assert (! (>= main_~i~1_26 (+ main_~i~1_15 1)) :named ssa_26_conjunct1))
(assert (! true :named ssa_27_conjunct0))
(assert (! (not (<= (mod main_~i~1_26 4294967296) 3)) :named ssa_28_conjunct0))
(assert (! (not (= (mod main_~k~1_22 4294967296) 36)) :named ssa_29_conjunct0))
(check-sat)
(get-unsat-core)
(echo "finished trace check")
(pop 1)
(exit)
