# 
# AllBinary Open License Version 1 
# Copyright (c) 2011 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/util/Arrays :as Arrays)
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(import ../../../../../java/lang/System :as System)
(defn- ComparableObject/jnew_0 [& args] (JR/call jfile "./ComparableObject" "jnew_0" args))
(defn- ObjectPermutationVisitor/jnew_1 [& args] (JR/call jfile "./ObjectPermutationVisitor" "jnew_1" args))

# Java class OrderedObjectArrayPermutationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getNext nil)
(var jm_swap nil)
(var jm_factorial nil)
(var jm_generate nil)
(var jm_main nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OrderedObjectArrayPermutationUtil" :f_TOTAL_ITERATIONS_TABLE nil :f_FINISHED nil} jproto))
    (put this :f_TOTAL_ITERATIONS_TABLE "Total Iterations: ")
    (put this :f_FINISHED "\nFINISHED")
    this))
    
(set jm_getNext (fn jm_getNext [this _data]
        (var _length (length _data))
        (var _i (JR/i32 (- _length 1)))
        (var _tsUtil (TsUtil/jm_getInstance))
        (do
            (while (>= (:jm_hashCode_1 _tsUtil (_data (JR/i32 (- _i 1)))) (:jm_hashCode_1 _tsUtil (_data _i)))
                (do
            (set _i (JR/i32 (- _i 1))))))
        (var _j _length)
        (do
            (while (<= (:jm_hashCode_1 _tsUtil (_data (JR/i32 (- _j 1)))) (:jm_hashCode_1 _tsUtil (_data (JR/i32 (- _i 1)))))
                (do
            (set _j (JR/i32 (- _j 1))))))
        (:jm_swap this _data (JR/i32 (- _i 1)) (JR/i32 (- _j 1)))
        (set _i (JR/i32 (+ _i 1)))
        (set _j _length)
        (do
            (while (< _i _j)
                (do
            (:jm_swap this _data (JR/i32 (- _i 1)) (JR/i32 (- _j 1)))
            (set _i (JR/i32 (+ _i 1)))
            (set _j (JR/i32 (- _j 1))))))))
    
(set jm_swap (fn jm_swap [this _data _a _b]
        (var _temp (_data _a))
        (set (_data _a) (_data _b))
        (set (_data _b) _temp)))
    
(set jm_factorial (fn jm_factorial [this _dataLength]
    (label jreturn
        (var _temp 1)
        (if (> _dataLength 1)
            (do
            (do
                (var _i 1)
                (while (<= _i _dataLength)
                    (do
                (set _temp (* _temp _i)))
                    (do (set _i (JR/i32 (+ _i 1))))))))
        (return jreturn _temp))))
    
(set jm_generate (fn jm_generate [this _data _visitor]
        (var _iterations (:jm_factorial this (length _data)))
        (prin (this :f_TOTAL_ITERATIONS_TABLE))
        (print (JR/str _iterations))
        (do
            (var _count 0)
            (while (< _count (- _iterations 1))
                (do
            (:jm_getNext this _data)
            (:jm_visit _visitor this))
                (do (set _count (+ _count 1)))))
        (print (this :f_FINISHED))))
    
(set jm_main (fn jm_main [_args]
        (var _TOTAL 7)
        (var _data (array/new-filled _TOTAL nil))
        (do
            (var _i 0)
            (while (< _i _TOTAL)
                (do
            (set (_data _i) (ComparableObject/jnew_0)))
                (do (set _i (JR/i32 (+ _i 1))))))
        (Arrays/jm_sort _data)
        (var _permutationVisitor (ObjectPermutationVisitor/jnew_1 _data))
        (var _ORIGINAL_DATA_LABEL "Original Data: ")
        (prin _ORIGINAL_DATA_LABEL)
        (:jm_visit _permutationVisitor _data)
        (:jm_generate (jm_getInstance) _data _permutationVisitor)))

(set jproto @{:jm_getNext jm_getNext :jm_swap jm_swap :jm_factorial jm_factorial :jm_generate jm_generate})


