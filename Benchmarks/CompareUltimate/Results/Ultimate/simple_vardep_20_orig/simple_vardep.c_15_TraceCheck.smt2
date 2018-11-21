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
(declare-fun main_~j~1_9 () Int)
(declare-fun main_~k~1_9 () Int)
(declare-fun main_~i~1_9 () Int)
(declare-fun main_~j~1_12 () Int)
(declare-fun main_~k~1_12 () Int)
(declare-fun main_~i~1_12 () Int)
(declare-fun main_~j~1_15 () Int)
(declare-fun main_~k~1_15 () Int)
(declare-fun main_~i~1_15 () Int)
(declare-fun main_~j~1_18 () Int)
(declare-fun main_~k~1_18 () Int)
(declare-fun main_~i~1_18 () Int)
(declare-fun main_~j~1_21 () Int)
(declare-fun main_~k~1_21 () Int)
(declare-fun main_~i~1_21 () Int)
(declare-fun main_~j~1_24 () Int)
(declare-fun main_~k~1_24 () Int)
(declare-fun main_~i~1_24 () Int)
(declare-fun main_~j~1_27 () Int)
(declare-fun main_~k~1_27 () Int)
(declare-fun main_~i~1_27 () Int)
(declare-fun main_~j~1_30 () Int)
(declare-fun main_~k~1_30 () Int)
(declare-fun main_~i~1_30 () Int)
(declare-fun main_~j~1_33 () Int)
(declare-fun main_~k~1_33 () Int)
(declare-fun main_~i~1_33 () Int)
(declare-fun main_~j~1_36 () Int)
(declare-fun main_~k~1_36 () Int)
(declare-fun main_~i~1_36 () Int)
(declare-fun main_~j~1_39 () Int)
(declare-fun main_~k~1_39 () Int)
(declare-fun main_~i~1_39 () Int)
(declare-fun main_~j~1_42 () Int)
(declare-fun main_~k~1_42 () Int)
(declare-fun main_~i~1_42 () Int)
(declare-fun main_~j~1_45 () Int)
(declare-fun main_~k~1_45 () Int)
(declare-fun main_~i~1_45 () Int)
(declare-fun main_~j~1_48 () Int)
(declare-fun main_~k~1_48 () Int)
(declare-fun main_~i~1_48 () Int)
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
(assert (! (< (mod main_~k~1_4 4294967296) 60) :named ssa_6_conjunct0))
(assert (! (<= main_~k~1_6 (+ main_~k~1_4 3)) :named ssa_6_conjunct1))
(assert (! (>= main_~k~1_6 (+ main_~k~1_4 3)) :named ssa_6_conjunct2))
(assert (! (<= main_~j~1_6 (+ main_~j~1_4 2)) :named ssa_6_conjunct3))
(assert (! (>= main_~j~1_6 (+ main_~j~1_4 2)) :named ssa_6_conjunct4))
(assert (! (<= main_~i~1_6 (+ main_~i~1_4 1)) :named ssa_6_conjunct5))
(assert (! (>= main_~i~1_6 (+ main_~i~1_4 1)) :named ssa_6_conjunct6))
(assert (! (<= (mod main_~k~1_6 4294967296) (mod (* 3 main_~i~1_6) 4294967296)) :named ssa_7_conjunct0))
(assert (! (>= (mod main_~k~1_6 4294967296) (mod (* 3 main_~i~1_6) 4294967296)) :named ssa_7_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_6) 4294967296) (mod main_~j~1_6 4294967296)) :named ssa_7_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_6) 4294967296) (mod main_~j~1_6 4294967296)) :named ssa_7_conjunct3))
(assert (! true :named ssa_8_conjunct0))
(assert (! (< (mod main_~k~1_6 4294967296) 60) :named ssa_9_conjunct0))
(assert (! (<= main_~k~1_9 (+ main_~k~1_6 3)) :named ssa_9_conjunct1))
(assert (! (>= main_~k~1_9 (+ main_~k~1_6 3)) :named ssa_9_conjunct2))
(assert (! (<= main_~j~1_9 (+ main_~j~1_6 2)) :named ssa_9_conjunct3))
(assert (! (>= main_~j~1_9 (+ main_~j~1_6 2)) :named ssa_9_conjunct4))
(assert (! (<= main_~i~1_9 (+ main_~i~1_6 1)) :named ssa_9_conjunct5))
(assert (! (>= main_~i~1_9 (+ main_~i~1_6 1)) :named ssa_9_conjunct6))
(assert (! (<= (mod main_~k~1_9 4294967296) (mod (* 3 main_~i~1_9) 4294967296)) :named ssa_10_conjunct0))
(assert (! (>= (mod main_~k~1_9 4294967296) (mod (* 3 main_~i~1_9) 4294967296)) :named ssa_10_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_9) 4294967296) (mod main_~j~1_9 4294967296)) :named ssa_10_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_9) 4294967296) (mod main_~j~1_9 4294967296)) :named ssa_10_conjunct3))
(assert (! true :named ssa_11_conjunct0))
(assert (! (< (mod main_~k~1_9 4294967296) 60) :named ssa_12_conjunct0))
(assert (! (<= main_~k~1_12 (+ main_~k~1_9 3)) :named ssa_12_conjunct1))
(assert (! (>= main_~k~1_12 (+ main_~k~1_9 3)) :named ssa_12_conjunct2))
(assert (! (<= main_~j~1_12 (+ main_~j~1_9 2)) :named ssa_12_conjunct3))
(assert (! (>= main_~j~1_12 (+ main_~j~1_9 2)) :named ssa_12_conjunct4))
(assert (! (<= main_~i~1_12 (+ main_~i~1_9 1)) :named ssa_12_conjunct5))
(assert (! (>= main_~i~1_12 (+ main_~i~1_9 1)) :named ssa_12_conjunct6))
(assert (! (<= (mod main_~k~1_12 4294967296) (mod (* 3 main_~i~1_12) 4294967296)) :named ssa_13_conjunct0))
(assert (! (>= (mod main_~k~1_12 4294967296) (mod (* 3 main_~i~1_12) 4294967296)) :named ssa_13_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_12) 4294967296) (mod main_~j~1_12 4294967296)) :named ssa_13_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_12) 4294967296) (mod main_~j~1_12 4294967296)) :named ssa_13_conjunct3))
(assert (! true :named ssa_14_conjunct0))
(assert (! (< (mod main_~k~1_12 4294967296) 60) :named ssa_15_conjunct0))
(assert (! (<= main_~k~1_15 (+ main_~k~1_12 3)) :named ssa_15_conjunct1))
(assert (! (>= main_~k~1_15 (+ main_~k~1_12 3)) :named ssa_15_conjunct2))
(assert (! (<= main_~j~1_15 (+ main_~j~1_12 2)) :named ssa_15_conjunct3))
(assert (! (>= main_~j~1_15 (+ main_~j~1_12 2)) :named ssa_15_conjunct4))
(assert (! (<= main_~i~1_15 (+ main_~i~1_12 1)) :named ssa_15_conjunct5))
(assert (! (>= main_~i~1_15 (+ main_~i~1_12 1)) :named ssa_15_conjunct6))
(assert (! (<= (mod main_~k~1_15 4294967296) (mod (* 3 main_~i~1_15) 4294967296)) :named ssa_16_conjunct0))
(assert (! (>= (mod main_~k~1_15 4294967296) (mod (* 3 main_~i~1_15) 4294967296)) :named ssa_16_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_15) 4294967296) (mod main_~j~1_15 4294967296)) :named ssa_16_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_15) 4294967296) (mod main_~j~1_15 4294967296)) :named ssa_16_conjunct3))
(assert (! true :named ssa_17_conjunct0))
(assert (! (< (mod main_~k~1_15 4294967296) 60) :named ssa_18_conjunct0))
(assert (! (<= main_~k~1_18 (+ main_~k~1_15 3)) :named ssa_18_conjunct1))
(assert (! (>= main_~k~1_18 (+ main_~k~1_15 3)) :named ssa_18_conjunct2))
(assert (! (<= main_~j~1_18 (+ main_~j~1_15 2)) :named ssa_18_conjunct3))
(assert (! (>= main_~j~1_18 (+ main_~j~1_15 2)) :named ssa_18_conjunct4))
(assert (! (<= main_~i~1_18 (+ main_~i~1_15 1)) :named ssa_18_conjunct5))
(assert (! (>= main_~i~1_18 (+ main_~i~1_15 1)) :named ssa_18_conjunct6))
(assert (! (<= (mod main_~k~1_18 4294967296) (mod (* 3 main_~i~1_18) 4294967296)) :named ssa_19_conjunct0))
(assert (! (>= (mod main_~k~1_18 4294967296) (mod (* 3 main_~i~1_18) 4294967296)) :named ssa_19_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_18) 4294967296) (mod main_~j~1_18 4294967296)) :named ssa_19_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_18) 4294967296) (mod main_~j~1_18 4294967296)) :named ssa_19_conjunct3))
(assert (! true :named ssa_20_conjunct0))
(assert (! (< (mod main_~k~1_18 4294967296) 60) :named ssa_21_conjunct0))
(assert (! (<= main_~k~1_21 (+ main_~k~1_18 3)) :named ssa_21_conjunct1))
(assert (! (>= main_~k~1_21 (+ main_~k~1_18 3)) :named ssa_21_conjunct2))
(assert (! (<= main_~j~1_21 (+ main_~j~1_18 2)) :named ssa_21_conjunct3))
(assert (! (>= main_~j~1_21 (+ main_~j~1_18 2)) :named ssa_21_conjunct4))
(assert (! (<= main_~i~1_21 (+ main_~i~1_18 1)) :named ssa_21_conjunct5))
(assert (! (>= main_~i~1_21 (+ main_~i~1_18 1)) :named ssa_21_conjunct6))
(assert (! (<= (mod main_~k~1_21 4294967296) (mod (* 3 main_~i~1_21) 4294967296)) :named ssa_22_conjunct0))
(assert (! (>= (mod main_~k~1_21 4294967296) (mod (* 3 main_~i~1_21) 4294967296)) :named ssa_22_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_21) 4294967296) (mod main_~j~1_21 4294967296)) :named ssa_22_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_21) 4294967296) (mod main_~j~1_21 4294967296)) :named ssa_22_conjunct3))
(assert (! true :named ssa_23_conjunct0))
(assert (! (< (mod main_~k~1_21 4294967296) 60) :named ssa_24_conjunct0))
(assert (! (<= main_~k~1_24 (+ main_~k~1_21 3)) :named ssa_24_conjunct1))
(assert (! (>= main_~k~1_24 (+ main_~k~1_21 3)) :named ssa_24_conjunct2))
(assert (! (<= main_~j~1_24 (+ main_~j~1_21 2)) :named ssa_24_conjunct3))
(assert (! (>= main_~j~1_24 (+ main_~j~1_21 2)) :named ssa_24_conjunct4))
(assert (! (<= main_~i~1_24 (+ main_~i~1_21 1)) :named ssa_24_conjunct5))
(assert (! (>= main_~i~1_24 (+ main_~i~1_21 1)) :named ssa_24_conjunct6))
(assert (! (<= (mod main_~k~1_24 4294967296) (mod (* 3 main_~i~1_24) 4294967296)) :named ssa_25_conjunct0))
(assert (! (>= (mod main_~k~1_24 4294967296) (mod (* 3 main_~i~1_24) 4294967296)) :named ssa_25_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_24) 4294967296) (mod main_~j~1_24 4294967296)) :named ssa_25_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_24) 4294967296) (mod main_~j~1_24 4294967296)) :named ssa_25_conjunct3))
(assert (! true :named ssa_26_conjunct0))
(assert (! (< (mod main_~k~1_24 4294967296) 60) :named ssa_27_conjunct0))
(assert (! (<= main_~k~1_27 (+ main_~k~1_24 3)) :named ssa_27_conjunct1))
(assert (! (>= main_~k~1_27 (+ main_~k~1_24 3)) :named ssa_27_conjunct2))
(assert (! (<= main_~j~1_27 (+ main_~j~1_24 2)) :named ssa_27_conjunct3))
(assert (! (>= main_~j~1_27 (+ main_~j~1_24 2)) :named ssa_27_conjunct4))
(assert (! (<= main_~i~1_27 (+ main_~i~1_24 1)) :named ssa_27_conjunct5))
(assert (! (>= main_~i~1_27 (+ main_~i~1_24 1)) :named ssa_27_conjunct6))
(assert (! (<= (mod main_~k~1_27 4294967296) (mod (* 3 main_~i~1_27) 4294967296)) :named ssa_28_conjunct0))
(assert (! (>= (mod main_~k~1_27 4294967296) (mod (* 3 main_~i~1_27) 4294967296)) :named ssa_28_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_27) 4294967296) (mod main_~j~1_27 4294967296)) :named ssa_28_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_27) 4294967296) (mod main_~j~1_27 4294967296)) :named ssa_28_conjunct3))
(assert (! true :named ssa_29_conjunct0))
(assert (! (< (mod main_~k~1_27 4294967296) 60) :named ssa_30_conjunct0))
(assert (! (<= main_~k~1_30 (+ main_~k~1_27 3)) :named ssa_30_conjunct1))
(assert (! (>= main_~k~1_30 (+ main_~k~1_27 3)) :named ssa_30_conjunct2))
(assert (! (<= main_~j~1_30 (+ main_~j~1_27 2)) :named ssa_30_conjunct3))
(assert (! (>= main_~j~1_30 (+ main_~j~1_27 2)) :named ssa_30_conjunct4))
(assert (! (<= main_~i~1_30 (+ main_~i~1_27 1)) :named ssa_30_conjunct5))
(assert (! (>= main_~i~1_30 (+ main_~i~1_27 1)) :named ssa_30_conjunct6))
(assert (! (<= (mod main_~k~1_30 4294967296) (mod (* 3 main_~i~1_30) 4294967296)) :named ssa_31_conjunct0))
(assert (! (>= (mod main_~k~1_30 4294967296) (mod (* 3 main_~i~1_30) 4294967296)) :named ssa_31_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_30) 4294967296) (mod main_~j~1_30 4294967296)) :named ssa_31_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_30) 4294967296) (mod main_~j~1_30 4294967296)) :named ssa_31_conjunct3))
(assert (! true :named ssa_32_conjunct0))
(assert (! (< (mod main_~k~1_30 4294967296) 60) :named ssa_33_conjunct0))
(assert (! (<= main_~k~1_33 (+ main_~k~1_30 3)) :named ssa_33_conjunct1))
(assert (! (>= main_~k~1_33 (+ main_~k~1_30 3)) :named ssa_33_conjunct2))
(assert (! (<= main_~j~1_33 (+ main_~j~1_30 2)) :named ssa_33_conjunct3))
(assert (! (>= main_~j~1_33 (+ main_~j~1_30 2)) :named ssa_33_conjunct4))
(assert (! (<= main_~i~1_33 (+ main_~i~1_30 1)) :named ssa_33_conjunct5))
(assert (! (>= main_~i~1_33 (+ main_~i~1_30 1)) :named ssa_33_conjunct6))
(assert (! (<= (mod main_~k~1_33 4294967296) (mod (* 3 main_~i~1_33) 4294967296)) :named ssa_34_conjunct0))
(assert (! (>= (mod main_~k~1_33 4294967296) (mod (* 3 main_~i~1_33) 4294967296)) :named ssa_34_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_33) 4294967296) (mod main_~j~1_33 4294967296)) :named ssa_34_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_33) 4294967296) (mod main_~j~1_33 4294967296)) :named ssa_34_conjunct3))
(assert (! true :named ssa_35_conjunct0))
(assert (! (< (mod main_~k~1_33 4294967296) 60) :named ssa_36_conjunct0))
(assert (! (<= main_~k~1_36 (+ main_~k~1_33 3)) :named ssa_36_conjunct1))
(assert (! (>= main_~k~1_36 (+ main_~k~1_33 3)) :named ssa_36_conjunct2))
(assert (! (<= main_~j~1_36 (+ main_~j~1_33 2)) :named ssa_36_conjunct3))
(assert (! (>= main_~j~1_36 (+ main_~j~1_33 2)) :named ssa_36_conjunct4))
(assert (! (<= main_~i~1_36 (+ main_~i~1_33 1)) :named ssa_36_conjunct5))
(assert (! (>= main_~i~1_36 (+ main_~i~1_33 1)) :named ssa_36_conjunct6))
(assert (! (<= (mod main_~k~1_36 4294967296) (mod (* 3 main_~i~1_36) 4294967296)) :named ssa_37_conjunct0))
(assert (! (>= (mod main_~k~1_36 4294967296) (mod (* 3 main_~i~1_36) 4294967296)) :named ssa_37_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_36) 4294967296) (mod main_~j~1_36 4294967296)) :named ssa_37_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_36) 4294967296) (mod main_~j~1_36 4294967296)) :named ssa_37_conjunct3))
(assert (! true :named ssa_38_conjunct0))
(assert (! (< (mod main_~k~1_36 4294967296) 60) :named ssa_39_conjunct0))
(assert (! (<= main_~k~1_39 (+ main_~k~1_36 3)) :named ssa_39_conjunct1))
(assert (! (>= main_~k~1_39 (+ main_~k~1_36 3)) :named ssa_39_conjunct2))
(assert (! (<= main_~j~1_39 (+ main_~j~1_36 2)) :named ssa_39_conjunct3))
(assert (! (>= main_~j~1_39 (+ main_~j~1_36 2)) :named ssa_39_conjunct4))
(assert (! (<= main_~i~1_39 (+ main_~i~1_36 1)) :named ssa_39_conjunct5))
(assert (! (>= main_~i~1_39 (+ main_~i~1_36 1)) :named ssa_39_conjunct6))
(assert (! (<= (mod main_~k~1_39 4294967296) (mod (* 3 main_~i~1_39) 4294967296)) :named ssa_40_conjunct0))
(assert (! (>= (mod main_~k~1_39 4294967296) (mod (* 3 main_~i~1_39) 4294967296)) :named ssa_40_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_39) 4294967296) (mod main_~j~1_39 4294967296)) :named ssa_40_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_39) 4294967296) (mod main_~j~1_39 4294967296)) :named ssa_40_conjunct3))
(assert (! true :named ssa_41_conjunct0))
(assert (! (< (mod main_~k~1_39 4294967296) 60) :named ssa_42_conjunct0))
(assert (! (<= main_~k~1_42 (+ main_~k~1_39 3)) :named ssa_42_conjunct1))
(assert (! (>= main_~k~1_42 (+ main_~k~1_39 3)) :named ssa_42_conjunct2))
(assert (! (<= main_~j~1_42 (+ main_~j~1_39 2)) :named ssa_42_conjunct3))
(assert (! (>= main_~j~1_42 (+ main_~j~1_39 2)) :named ssa_42_conjunct4))
(assert (! (<= main_~i~1_42 (+ main_~i~1_39 1)) :named ssa_42_conjunct5))
(assert (! (>= main_~i~1_42 (+ main_~i~1_39 1)) :named ssa_42_conjunct6))
(assert (! (<= (mod main_~k~1_42 4294967296) (mod (* 3 main_~i~1_42) 4294967296)) :named ssa_43_conjunct0))
(assert (! (>= (mod main_~k~1_42 4294967296) (mod (* 3 main_~i~1_42) 4294967296)) :named ssa_43_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_42) 4294967296) (mod main_~j~1_42 4294967296)) :named ssa_43_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_42) 4294967296) (mod main_~j~1_42 4294967296)) :named ssa_43_conjunct3))
(assert (! true :named ssa_44_conjunct0))
(assert (! (< (mod main_~k~1_42 4294967296) 60) :named ssa_45_conjunct0))
(assert (! (<= main_~k~1_45 (+ main_~k~1_42 3)) :named ssa_45_conjunct1))
(assert (! (>= main_~k~1_45 (+ main_~k~1_42 3)) :named ssa_45_conjunct2))
(assert (! (<= main_~j~1_45 (+ main_~j~1_42 2)) :named ssa_45_conjunct3))
(assert (! (>= main_~j~1_45 (+ main_~j~1_42 2)) :named ssa_45_conjunct4))
(assert (! (<= main_~i~1_45 (+ main_~i~1_42 1)) :named ssa_45_conjunct5))
(assert (! (>= main_~i~1_45 (+ main_~i~1_42 1)) :named ssa_45_conjunct6))
(assert (! (<= (mod main_~k~1_45 4294967296) (mod (* 3 main_~i~1_45) 4294967296)) :named ssa_46_conjunct0))
(assert (! (>= (mod main_~k~1_45 4294967296) (mod (* 3 main_~i~1_45) 4294967296)) :named ssa_46_conjunct1))
(assert (! (<= (mod (* 2 main_~i~1_45) 4294967296) (mod main_~j~1_45 4294967296)) :named ssa_46_conjunct2))
(assert (! (>= (mod (* 2 main_~i~1_45) 4294967296) (mod main_~j~1_45 4294967296)) :named ssa_46_conjunct3))
(assert (! true :named ssa_47_conjunct0))
(assert (! (< (mod main_~k~1_45 4294967296) 60) :named ssa_48_conjunct0))
(assert (! (<= main_~k~1_48 (+ main_~k~1_45 3)) :named ssa_48_conjunct1))
(assert (! (>= main_~k~1_48 (+ main_~k~1_45 3)) :named ssa_48_conjunct2))
(assert (! (<= main_~j~1_48 (+ main_~j~1_45 2)) :named ssa_48_conjunct3))
(assert (! (>= main_~j~1_48 (+ main_~j~1_45 2)) :named ssa_48_conjunct4))
(assert (! (<= main_~i~1_48 (+ main_~i~1_45 1)) :named ssa_48_conjunct5))
(assert (! (>= main_~i~1_48 (+ main_~i~1_45 1)) :named ssa_48_conjunct6))
(assert (! (or (not (= (mod (* 3 main_~i~1_48) 4294967296) (mod main_~k~1_48 4294967296))) (not (= (mod (* 2 main_~i~1_48) 4294967296) (mod main_~j~1_48 4294967296)))) :named ssa_49_conjunct0))
(check-sat)
(get-unsat-core)
(echo "finished trace check")
(pop 1)
(exit)
