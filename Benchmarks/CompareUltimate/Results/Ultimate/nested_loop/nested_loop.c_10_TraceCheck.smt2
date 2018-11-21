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
(declare-fun main_~k~1_14 () Int)
(declare-fun main_~j~1_15 () Int)
(declare-fun |main_#t~post1_15| () Int)
(declare-fun |main_#t~post0_18| () Int)
(declare-fun main_~i~1_18 () Int)
(declare-fun main_~j~1_20 () Int)
(declare-fun main_~k~1_22 () Int)
(declare-fun main_~j~1_23 () Int)
(declare-fun |main_#t~post1_23| () Int)
(declare-fun main_~k~1_25 () Int)
(declare-fun main_~j~1_26 () Int)
(declare-fun |main_#t~post1_26| () Int)
(declare-fun main_~k~1_28 () Int)
(declare-fun main_~j~1_29 () Int)
(declare-fun |main_#t~post1_29| () Int)
(declare-fun |main_#t~post0_32| () Int)
(declare-fun main_~i~1_32 () Int)
(declare-fun main_~j~1_34 () Int)
(declare-fun main_~k~1_36 () Int)
(declare-fun main_~j~1_37 () Int)
(declare-fun |main_#t~post1_37| () Int)
(declare-fun main_~k~1_39 () Int)
(declare-fun main_~j~1_40 () Int)
(declare-fun |main_#t~post1_40| () Int)
(declare-fun main_~k~1_42 () Int)
(declare-fun main_~j~1_43 () Int)
(declare-fun |main_#t~post1_43| () Int)
(declare-fun |main_#t~post0_46| () Int)
(declare-fun main_~i~1_46 () Int)
(declare-fun main_~j~1_48 () Int)
(declare-fun main_~k~1_50 () Int)
(declare-fun main_~j~1_51 () Int)
(declare-fun |main_#t~post1_51| () Int)
(declare-fun main_~k~1_53 () Int)
(declare-fun main_~j~1_54 () Int)
(declare-fun |main_#t~post1_54| () Int)
(declare-fun main_~k~1_56 () Int)
(declare-fun main_~j~1_57 () Int)
(declare-fun |main_#t~post1_57| () Int)
(declare-fun |main_#t~post0_60| () Int)
(declare-fun main_~i~1_60 () Int)
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
(assert (! (<= main_~k~1_14 (+ main_~i~1_4 main_~j~1_12 main_~k~1_11)) :named ssa_14_conjunct0))
(assert (! (>= main_~k~1_14 (+ main_~i~1_4 main_~j~1_12 main_~k~1_11)) :named ssa_14_conjunct1))
(assert (! (<= (mod main_~j~1_12 4294967296) 3) :named ssa_14_conjunct2))
(assert (! (<= main_~j~1_15 (+ main_~j~1_12 1)) :named ssa_15_conjunct0))
(assert (! (>= main_~j~1_15 (+ main_~j~1_12 1)) :named ssa_15_conjunct1))
(assert (! true :named ssa_16_conjunct0))
(assert (! (not (<= (mod main_~j~1_15 4294967296) 3)) :named ssa_17_conjunct0))
(assert (! (<= main_~i~1_18 (+ main_~i~1_4 1)) :named ssa_18_conjunct0))
(assert (! (>= main_~i~1_18 (+ main_~i~1_4 1)) :named ssa_18_conjunct1))
(assert (! true :named ssa_19_conjunct0))
(assert (! (<= main_~j~1_20 1) :named ssa_20_conjunct0))
(assert (! (>= main_~j~1_20 1) :named ssa_20_conjunct1))
(assert (! (<= (mod main_~i~1_18 4294967296) 3) :named ssa_20_conjunct2))
(assert (! true :named ssa_21_conjunct0))
(assert (! (<= main_~k~1_22 (+ main_~i~1_18 main_~j~1_20 main_~k~1_14)) :named ssa_22_conjunct0))
(assert (! (>= main_~k~1_22 (+ main_~i~1_18 main_~j~1_20 main_~k~1_14)) :named ssa_22_conjunct1))
(assert (! (<= (mod main_~j~1_20 4294967296) 3) :named ssa_22_conjunct2))
(assert (! (<= main_~j~1_23 (+ main_~j~1_20 1)) :named ssa_23_conjunct0))
(assert (! (>= main_~j~1_23 (+ main_~j~1_20 1)) :named ssa_23_conjunct1))
(assert (! true :named ssa_24_conjunct0))
(assert (! (<= main_~k~1_25 (+ main_~i~1_18 main_~j~1_23 main_~k~1_22)) :named ssa_25_conjunct0))
(assert (! (>= main_~k~1_25 (+ main_~i~1_18 main_~j~1_23 main_~k~1_22)) :named ssa_25_conjunct1))
(assert (! (<= (mod main_~j~1_23 4294967296) 3) :named ssa_25_conjunct2))
(assert (! (<= main_~j~1_26 (+ main_~j~1_23 1)) :named ssa_26_conjunct0))
(assert (! (>= main_~j~1_26 (+ main_~j~1_23 1)) :named ssa_26_conjunct1))
(assert (! true :named ssa_27_conjunct0))
(assert (! (<= main_~k~1_28 (+ main_~i~1_18 main_~j~1_26 main_~k~1_25)) :named ssa_28_conjunct0))
(assert (! (>= main_~k~1_28 (+ main_~i~1_18 main_~j~1_26 main_~k~1_25)) :named ssa_28_conjunct1))
(assert (! (<= (mod main_~j~1_26 4294967296) 3) :named ssa_28_conjunct2))
(assert (! (<= main_~j~1_29 (+ main_~j~1_26 1)) :named ssa_29_conjunct0))
(assert (! (>= main_~j~1_29 (+ main_~j~1_26 1)) :named ssa_29_conjunct1))
(assert (! true :named ssa_30_conjunct0))
(assert (! (not (<= (mod main_~j~1_29 4294967296) 3)) :named ssa_31_conjunct0))
(assert (! (<= main_~i~1_32 (+ main_~i~1_18 1)) :named ssa_32_conjunct0))
(assert (! (>= main_~i~1_32 (+ main_~i~1_18 1)) :named ssa_32_conjunct1))
(assert (! true :named ssa_33_conjunct0))
(assert (! (<= main_~j~1_34 1) :named ssa_34_conjunct0))
(assert (! (>= main_~j~1_34 1) :named ssa_34_conjunct1))
(assert (! (<= (mod main_~i~1_32 4294967296) 3) :named ssa_34_conjunct2))
(assert (! true :named ssa_35_conjunct0))
(assert (! (<= main_~k~1_36 (+ main_~i~1_32 main_~j~1_34 main_~k~1_28)) :named ssa_36_conjunct0))
(assert (! (>= main_~k~1_36 (+ main_~i~1_32 main_~j~1_34 main_~k~1_28)) :named ssa_36_conjunct1))
(assert (! (<= (mod main_~j~1_34 4294967296) 3) :named ssa_36_conjunct2))
(assert (! (<= main_~j~1_37 (+ main_~j~1_34 1)) :named ssa_37_conjunct0))
(assert (! (>= main_~j~1_37 (+ main_~j~1_34 1)) :named ssa_37_conjunct1))
(assert (! true :named ssa_38_conjunct0))
(assert (! (<= main_~k~1_39 (+ main_~i~1_32 main_~j~1_37 main_~k~1_36)) :named ssa_39_conjunct0))
(assert (! (>= main_~k~1_39 (+ main_~i~1_32 main_~j~1_37 main_~k~1_36)) :named ssa_39_conjunct1))
(assert (! (<= (mod main_~j~1_37 4294967296) 3) :named ssa_39_conjunct2))
(assert (! (<= main_~j~1_40 (+ main_~j~1_37 1)) :named ssa_40_conjunct0))
(assert (! (>= main_~j~1_40 (+ main_~j~1_37 1)) :named ssa_40_conjunct1))
(assert (! true :named ssa_41_conjunct0))
(assert (! (<= main_~k~1_42 (+ main_~i~1_32 main_~j~1_40 main_~k~1_39)) :named ssa_42_conjunct0))
(assert (! (>= main_~k~1_42 (+ main_~i~1_32 main_~j~1_40 main_~k~1_39)) :named ssa_42_conjunct1))
(assert (! (<= (mod main_~j~1_40 4294967296) 3) :named ssa_42_conjunct2))
(assert (! (<= main_~j~1_43 (+ main_~j~1_40 1)) :named ssa_43_conjunct0))
(assert (! (>= main_~j~1_43 (+ main_~j~1_40 1)) :named ssa_43_conjunct1))
(assert (! true :named ssa_44_conjunct0))
(assert (! (not (<= (mod main_~j~1_43 4294967296) 3)) :named ssa_45_conjunct0))
(assert (! (<= main_~i~1_46 (+ main_~i~1_32 1)) :named ssa_46_conjunct0))
(assert (! (>= main_~i~1_46 (+ main_~i~1_32 1)) :named ssa_46_conjunct1))
(assert (! true :named ssa_47_conjunct0))
(assert (! (<= main_~j~1_48 1) :named ssa_48_conjunct0))
(assert (! (>= main_~j~1_48 1) :named ssa_48_conjunct1))
(assert (! (<= (mod main_~i~1_46 4294967296) 3) :named ssa_48_conjunct2))
(assert (! true :named ssa_49_conjunct0))
(assert (! (<= main_~k~1_50 (+ main_~i~1_46 main_~j~1_48 main_~k~1_42)) :named ssa_50_conjunct0))
(assert (! (>= main_~k~1_50 (+ main_~i~1_46 main_~j~1_48 main_~k~1_42)) :named ssa_50_conjunct1))
(assert (! (<= (mod main_~j~1_48 4294967296) 3) :named ssa_50_conjunct2))
(assert (! (<= main_~j~1_51 (+ main_~j~1_48 1)) :named ssa_51_conjunct0))
(assert (! (>= main_~j~1_51 (+ main_~j~1_48 1)) :named ssa_51_conjunct1))
(assert (! true :named ssa_52_conjunct0))
(assert (! (<= main_~k~1_53 (+ main_~i~1_46 main_~j~1_51 main_~k~1_50)) :named ssa_53_conjunct0))
(assert (! (>= main_~k~1_53 (+ main_~i~1_46 main_~j~1_51 main_~k~1_50)) :named ssa_53_conjunct1))
(assert (! (<= (mod main_~j~1_51 4294967296) 3) :named ssa_53_conjunct2))
(assert (! (<= main_~j~1_54 (+ main_~j~1_51 1)) :named ssa_54_conjunct0))
(assert (! (>= main_~j~1_54 (+ main_~j~1_51 1)) :named ssa_54_conjunct1))
(assert (! true :named ssa_55_conjunct0))
(assert (! (<= main_~k~1_56 (+ main_~i~1_46 main_~j~1_54 main_~k~1_53)) :named ssa_56_conjunct0))
(assert (! (>= main_~k~1_56 (+ main_~i~1_46 main_~j~1_54 main_~k~1_53)) :named ssa_56_conjunct1))
(assert (! (<= (mod main_~j~1_54 4294967296) 3) :named ssa_56_conjunct2))
(assert (! (<= main_~j~1_57 (+ main_~j~1_54 1)) :named ssa_57_conjunct0))
(assert (! (>= main_~j~1_57 (+ main_~j~1_54 1)) :named ssa_57_conjunct1))
(assert (! true :named ssa_58_conjunct0))
(assert (! (not (<= (mod main_~j~1_57 4294967296) 3)) :named ssa_59_conjunct0))
(assert (! (<= main_~i~1_60 (+ main_~i~1_46 1)) :named ssa_60_conjunct0))
(assert (! (>= main_~i~1_60 (+ main_~i~1_46 1)) :named ssa_60_conjunct1))
(assert (! true :named ssa_61_conjunct0))
(assert (! (not (<= (mod main_~i~1_60 4294967296) 3)) :named ssa_62_conjunct0))
(assert (! (not (= (mod main_~k~1_56 4294967296) 36)) :named ssa_63_conjunct0))
(check-sat)
(get-unsat-core)
(echo "finished trace check")
(pop 1)
(exit)
