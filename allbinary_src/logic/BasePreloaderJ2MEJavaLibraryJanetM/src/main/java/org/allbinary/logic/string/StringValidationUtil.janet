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
# package org.allbinary.logic.string

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "./StringUtil" "jm_getInstance" args))

# Java class StringValidationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_containsSpaces nil)
(var jm_isNumber nil)
(var jm_isNumberFromChar nil)
(var jm_isValidRequired nil)
(var jm_isValidRequiredNumber nil)
(var jm_isValidNotRequired nil)
(var jm_isValidNotRequiredNumber nil)
(var jm_isEmpty nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StringValidationUtil" :f_stringUtil nil :f_tsUtil nil} jproto))
    (put this :f_stringUtil (StringUtil/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    this))
    
(set jm_containsSpaces (fn jm_containsSpaces [this _value]
    (label jreturn
        (if (>= (JR/indexOf _value (get " " 0)) 0)
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isNumber (fn jm_isNumber [this _value]
    (label jreturn
        (var _numberOfDecimalPoints 0)
        (do
            (var _index 0)
            (while (< _index (length _value))
                (do
            (var _digit (get _value _index))
            (if (and (not (:jm_isNumberFromChar this _digit)) (not= _digit (get "." 0)))
                (do
                (return jreturn false)))
            (if (= _digit (get "." 0))
                (do
                (set _numberOfDecimalPoints (JR/i32 (+ _numberOfDecimalPoints 1)))
                (if (> _numberOfDecimalPoints 1)
                    (do
                    (return jreturn false))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn true))))
    
(set jm_isNumberFromChar (fn jm_isNumberFromChar [this _digit]
    (label jreturn
        (if (and (and (and (and (and (and (and (and (and (not= _digit (get "0" 0)) (not= _digit (get "1" 0))) (not= _digit (get "2" 0))) (not= _digit (get "3" 0))) (not= _digit (get "4" 0))) (not= _digit (get "5" 0))) (not= _digit (get "6" 0))) (not= _digit (get "7" 0))) (not= _digit (get "8" 0))) (not= _digit (get "9" 0)))
            (do
            (return jreturn false)))
        (return jreturn true))))
    
(set jm_isValidRequired (fn jm_isValidRequired [this _value _min _max]
    (label jreturn
        (if (or (< (length _value) _min) (> (length _value) _max))
            (do
            (return jreturn false)))
        (return jreturn true))))
    
(set jm_isValidRequiredNumber (fn jm_isValidRequiredNumber [this _value _min _max]
    (label jreturn
        (if (or (or (:jm_isEmpty this _value) (< (length _value) _min)) (> (length _value) _max))
            (do
            (return jreturn false)))
        (if (not (:jm_isNumber this _value))
            (do
            (return jreturn false)))
        (return jreturn true))))
    
(set jm_isValidNotRequired (fn jm_isValidNotRequired [this _value _min _max]
    (label jreturn
        (if (> (length _value) 0)
            (do
            (if (or (< (length _value) _min) (> (length _value) _max))
                (do
                (return jreturn false)))))
        (return jreturn true))))
    
(set jm_isValidNotRequiredNumber (fn jm_isValidNotRequiredNumber [this _value _min _max]
    (label jreturn
        (if (> (length _value) 0)
            (do
            (if (or (or (= (:jm_compareTo (this :f_tsUtil) _value ((this :f_stringUtil) :f_NULL_STRING)) 0) (< (length _value) _min)) (> (length _value) _max))
                (do
                (return jreturn false)))
            (if (not (:jm_isNumber this _value))
                (do
                (return jreturn false)))))
        (return jreturn true))))
    
(set jm_isEmpty (fn jm_isEmpty [this _string]
    (label jreturn
        (if (and (not= (:jm_compareTo (this :f_tsUtil) _string ((this :f_stringUtil) :f_NULL_STRING)) 0) (not= (:jm_compareTo (this :f_tsUtil) _string ((this :f_stringUtil) :f_EMPTY_STRING)) 0))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))

(set jproto @{:jm_containsSpaces jm_containsSpaces :jm_isNumber jm_isNumber :jm_isNumberFromChar jm_isNumberFromChar :jm_isValidRequired jm_isValidRequired :jm_isValidRequiredNumber jm_isValidRequiredNumber :jm_isValidNotRequired jm_isValidNotRequired :jm_isValidNotRequiredNumber jm_isValidNotRequiredNumber :jm_isEmpty jm_isEmpty})


