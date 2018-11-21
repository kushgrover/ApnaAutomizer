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
(declare-fun main_~n~2_4 () Int)
(declare-fun main_~i~2_4 () Int)
(declare-fun main_~a~2_4 () Int)
(declare-fun main_~b~2_4 () Int)
(declare-fun rand_~x~1_8 () Int)
(declare-fun |rand_#res_8| () Int)
(declare-fun |main_#t~ret0_10| () Int)
(declare-fun |main_#t~ret0_12| () Int)
(declare-fun main_~a~2_12 () Int)
(declare-fun main_~b~2_12 () Int)
(declare-fun main_~i~2_13 () Int)
(declare-fun rand_~x~1_17 () Int)
(declare-fun |rand_#res_17| () Int)
(declare-fun |main_#t~ret0_19| () Int)
(declare-fun |main_#t~ret0_21| () Int)
(declare-fun main_~a~2_21 () Int)
(declare-fun main_~b~2_21 () Int)
(declare-fun main_~i~2_22 () Int)
(declare-fun rand_~x~1_26 () Int)
(declare-fun |rand_#res_26| () Int)
(declare-fun |main_#t~ret0_28| () Int)
(declare-fun |main_#t~ret0_30| () Int)
(declare-fun main_~a~2_30 () Int)
(declare-fun main_~b~2_30 () Int)
(declare-fun main_~i~2_31 () Int)
(declare-fun rand_~x~1_35 () Int)
(declare-fun |rand_#res_35| () Int)
(declare-fun |main_#t~ret0_37| () Int)
(declare-fun |main_#t~ret0_39| () Int)
(declare-fun main_~a~2_39 () Int)
(declare-fun main_~b~2_39 () Int)
(declare-fun main_~i~2_40 () Int)
(declare-fun rand_~x~1_44 () Int)
(declare-fun |rand_#res_44| () Int)
(declare-fun |main_#t~ret0_46| () Int)
(declare-fun |main_#t~ret0_48| () Int)
(declare-fun main_~a~2_48 () Int)
(declare-fun main_~b~2_48 () Int)
(declare-fun main_~i~2_49 () Int)
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
(assert (! (<= main_~b~2_4 0) :named ssa_4_conjunct0))
(assert (! (>= main_~b~2_4 0) :named ssa_4_conjunct1))
(assert (! (<= main_~n~2_4 5) :named ssa_4_conjunct2))
(assert (! (>= main_~n~2_4 5) :named ssa_4_conjunct3))
(assert (! (<= main_~i~2_4 0) :named ssa_4_conjunct4))
(assert (! (>= main_~i~2_4 0) :named ssa_4_conjunct5))
(assert (! (<= main_~a~2_4 0) :named ssa_4_conjunct6))
(assert (! (>= main_~a~2_4 0) :named ssa_4_conjunct7))
(assert (! true :named ssa_5_conjunct0))
(assert (! (< main_~i~2_4 main_~n~2_4) :named ssa_6_conjunct0))
(assert (! true :named ssa_7_GlobVarAssigCall_conjunct0))
(assert (! true :named ssa_7_LocVarAssigCall_conjunct0))
(assert (! true :named ssa_7_OldVarAssigCall_conjunct0))
(assert (! (<= |rand_#res_8| (ite (and (not (= 0 (mod rand_~x~1_8 2))) (< rand_~x~1_8 0)) (+ (mod rand_~x~1_8 2) (- 2)) (mod rand_~x~1_8 2))) :named ssa_8_conjunct0))
(assert (! (>= |rand_#res_8| (ite (and (not (= 0 (mod rand_~x~1_8 2))) (< rand_~x~1_8 0)) (+ (mod rand_~x~1_8 2) (- 2)) (mod rand_~x~1_8 2))) :named ssa_8_conjunct1))
(assert (! true :named ssa_9_conjunct0))
(assert (! (<= |main_#t~ret0_10| |rand_#res_8|) :named ssa_10_return_conjunct0))
(assert (! (>= |main_#t~ret0_10| |rand_#res_8|) :named ssa_10_return_conjunct1))
(assert (! (<= 0 (+ |main_#t~ret0_10| 2147483648)) :named ssa_11_conjunct0))
(assert (! (<= |main_#t~ret0_10| 2147483647) :named ssa_11_conjunct1))
(assert (! (<= main_~a~2_12 (+ main_~a~2_4 2)) :named ssa_12_conjunct0))
(assert (! (>= main_~a~2_12 (+ main_~a~2_4 2)) :named ssa_12_conjunct1))
(assert (! (<= |main_#t~ret0_10| 0) :named ssa_12_conjunct2))
(assert (! (>= |main_#t~ret0_10| 0) :named ssa_12_conjunct3))
(assert (! (<= main_~b~2_12 (+ main_~b~2_4 1)) :named ssa_12_conjunct4))
(assert (! (>= main_~b~2_12 (+ main_~b~2_4 1)) :named ssa_12_conjunct5))
(assert (! (<= main_~i~2_13 (+ main_~i~2_4 1)) :named ssa_13_conjunct0))
(assert (! (>= main_~i~2_13 (+ main_~i~2_4 1)) :named ssa_13_conjunct1))
(assert (! true :named ssa_14_conjunct0))
(assert (! (< main_~i~2_13 main_~n~2_4) :named ssa_15_conjunct0))
(assert (! true :named ssa_16_GlobVarAssigCall_conjunct0))
(assert (! true :named ssa_16_LocVarAssigCall_conjunct0))
(assert (! true :named ssa_16_OldVarAssigCall_conjunct0))
(assert (! (<= |rand_#res_17| (ite (and (not (= 0 (mod rand_~x~1_17 2))) (< rand_~x~1_17 0)) (+ (mod rand_~x~1_17 2) (- 2)) (mod rand_~x~1_17 2))) :named ssa_17_conjunct0))
(assert (! (>= |rand_#res_17| (ite (and (not (= 0 (mod rand_~x~1_17 2))) (< rand_~x~1_17 0)) (+ (mod rand_~x~1_17 2) (- 2)) (mod rand_~x~1_17 2))) :named ssa_17_conjunct1))
(assert (! true :named ssa_18_conjunct0))
(assert (! (<= |main_#t~ret0_19| |rand_#res_17|) :named ssa_19_return_conjunct0))
(assert (! (>= |main_#t~ret0_19| |rand_#res_17|) :named ssa_19_return_conjunct1))
(assert (! (<= 0 (+ |main_#t~ret0_19| 2147483648)) :named ssa_20_conjunct0))
(assert (! (<= |main_#t~ret0_19| 2147483647) :named ssa_20_conjunct1))
(assert (! (not (= |main_#t~ret0_19| 0)) :named ssa_21_conjunct0))
(assert (! (<= main_~b~2_21 (+ main_~b~2_12 2)) :named ssa_21_conjunct1))
(assert (! (>= main_~b~2_21 (+ main_~b~2_12 2)) :named ssa_21_conjunct2))
(assert (! (<= main_~a~2_21 (+ main_~a~2_12 1)) :named ssa_21_conjunct3))
(assert (! (>= main_~a~2_21 (+ main_~a~2_12 1)) :named ssa_21_conjunct4))
(assert (! (<= main_~i~2_22 (+ main_~i~2_13 1)) :named ssa_22_conjunct0))
(assert (! (>= main_~i~2_22 (+ main_~i~2_13 1)) :named ssa_22_conjunct1))
(assert (! true :named ssa_23_conjunct0))
(assert (! (< main_~i~2_22 main_~n~2_4) :named ssa_24_conjunct0))
(assert (! true :named ssa_25_GlobVarAssigCall_conjunct0))
(assert (! true :named ssa_25_LocVarAssigCall_conjunct0))
(assert (! true :named ssa_25_OldVarAssigCall_conjunct0))
(assert (! (<= |rand_#res_26| (ite (and (not (= 0 (mod rand_~x~1_26 2))) (< rand_~x~1_26 0)) (+ (mod rand_~x~1_26 2) (- 2)) (mod rand_~x~1_26 2))) :named ssa_26_conjunct0))
(assert (! (>= |rand_#res_26| (ite (and (not (= 0 (mod rand_~x~1_26 2))) (< rand_~x~1_26 0)) (+ (mod rand_~x~1_26 2) (- 2)) (mod rand_~x~1_26 2))) :named ssa_26_conjunct1))
(assert (! true :named ssa_27_conjunct0))
(assert (! (<= |main_#t~ret0_28| |rand_#res_26|) :named ssa_28_return_conjunct0))
(assert (! (>= |main_#t~ret0_28| |rand_#res_26|) :named ssa_28_return_conjunct1))
(assert (! (<= 0 (+ |main_#t~ret0_28| 2147483648)) :named ssa_29_conjunct0))
(assert (! (<= |main_#t~ret0_28| 2147483647) :named ssa_29_conjunct1))
(assert (! (not (= |main_#t~ret0_28| 0)) :named ssa_30_conjunct0))
(assert (! (<= main_~b~2_30 (+ main_~b~2_21 2)) :named ssa_30_conjunct1))
(assert (! (>= main_~b~2_30 (+ main_~b~2_21 2)) :named ssa_30_conjunct2))
(assert (! (<= main_~a~2_30 (+ main_~a~2_21 1)) :named ssa_30_conjunct3))
(assert (! (>= main_~a~2_30 (+ main_~a~2_21 1)) :named ssa_30_conjunct4))
(assert (! (<= main_~i~2_31 (+ main_~i~2_22 1)) :named ssa_31_conjunct0))
(assert (! (>= main_~i~2_31 (+ main_~i~2_22 1)) :named ssa_31_conjunct1))
(assert (! true :named ssa_32_conjunct0))
(assert (! (< main_~i~2_31 main_~n~2_4) :named ssa_33_conjunct0))
(assert (! true :named ssa_34_GlobVarAssigCall_conjunct0))
(assert (! true :named ssa_34_LocVarAssigCall_conjunct0))
(assert (! true :named ssa_34_OldVarAssigCall_conjunct0))
(assert (! (<= |rand_#res_35| (ite (and (not (= 0 (mod rand_~x~1_35 2))) (< rand_~x~1_35 0)) (+ (mod rand_~x~1_35 2) (- 2)) (mod rand_~x~1_35 2))) :named ssa_35_conjunct0))
(assert (! (>= |rand_#res_35| (ite (and (not (= 0 (mod rand_~x~1_35 2))) (< rand_~x~1_35 0)) (+ (mod rand_~x~1_35 2) (- 2)) (mod rand_~x~1_35 2))) :named ssa_35_conjunct1))
(assert (! true :named ssa_36_conjunct0))
(assert (! (<= |main_#t~ret0_37| |rand_#res_35|) :named ssa_37_return_conjunct0))
(assert (! (>= |main_#t~ret0_37| |rand_#res_35|) :named ssa_37_return_conjunct1))
(assert (! (<= 0 (+ |main_#t~ret0_37| 2147483648)) :named ssa_38_conjunct0))
(assert (! (<= |main_#t~ret0_37| 2147483647) :named ssa_38_conjunct1))
(assert (! (not (= |main_#t~ret0_37| 0)) :named ssa_39_conjunct0))
(assert (! (<= main_~b~2_39 (+ main_~b~2_30 2)) :named ssa_39_conjunct1))
(assert (! (>= main_~b~2_39 (+ main_~b~2_30 2)) :named ssa_39_conjunct2))
(assert (! (<= main_~a~2_39 (+ main_~a~2_30 1)) :named ssa_39_conjunct3))
(assert (! (>= main_~a~2_39 (+ main_~a~2_30 1)) :named ssa_39_conjunct4))
(assert (! (<= main_~i~2_40 (+ main_~i~2_31 1)) :named ssa_40_conjunct0))
(assert (! (>= main_~i~2_40 (+ main_~i~2_31 1)) :named ssa_40_conjunct1))
(assert (! true :named ssa_41_conjunct0))
(assert (! (< main_~i~2_40 main_~n~2_4) :named ssa_42_conjunct0))
(assert (! true :named ssa_43_GlobVarAssigCall_conjunct0))
(assert (! true :named ssa_43_LocVarAssigCall_conjunct0))
(assert (! true :named ssa_43_OldVarAssigCall_conjunct0))
(assert (! (<= |rand_#res_44| (ite (and (not (= 0 (mod rand_~x~1_44 2))) (< rand_~x~1_44 0)) (+ (mod rand_~x~1_44 2) (- 2)) (mod rand_~x~1_44 2))) :named ssa_44_conjunct0))
(assert (! (>= |rand_#res_44| (ite (and (not (= 0 (mod rand_~x~1_44 2))) (< rand_~x~1_44 0)) (+ (mod rand_~x~1_44 2) (- 2)) (mod rand_~x~1_44 2))) :named ssa_44_conjunct1))
(assert (! true :named ssa_45_conjunct0))
(assert (! (<= |main_#t~ret0_46| |rand_#res_44|) :named ssa_46_return_conjunct0))
(assert (! (>= |main_#t~ret0_46| |rand_#res_44|) :named ssa_46_return_conjunct1))
(assert (! (<= 0 (+ |main_#t~ret0_46| 2147483648)) :named ssa_47_conjunct0))
(assert (! (<= |main_#t~ret0_46| 2147483647) :named ssa_47_conjunct1))
(assert (! (not (= |main_#t~ret0_46| 0)) :named ssa_48_conjunct0))
(assert (! (<= main_~b~2_48 (+ main_~b~2_39 2)) :named ssa_48_conjunct1))
(assert (! (>= main_~b~2_48 (+ main_~b~2_39 2)) :named ssa_48_conjunct2))
(assert (! (<= main_~a~2_48 (+ main_~a~2_39 1)) :named ssa_48_conjunct3))
(assert (! (>= main_~a~2_48 (+ main_~a~2_39 1)) :named ssa_48_conjunct4))
(assert (! (<= main_~i~2_49 (+ main_~i~2_40 1)) :named ssa_49_conjunct0))
(assert (! (>= main_~i~2_49 (+ main_~i~2_40 1)) :named ssa_49_conjunct1))
(assert (! true :named ssa_50_conjunct0))
(assert (! (not (< main_~i~2_49 main_~n~2_4)) :named ssa_51_conjunct0))
(assert (! (not (= (+ main_~a~2_48 main_~b~2_48) (* 3 main_~n~2_4))) :named ssa_52_conjunct0))
(check-sat)
(get-unsat-core)
(echo "finished trace check")
(pop 1)
(exit)
