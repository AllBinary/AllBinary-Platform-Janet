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
# package org.allbinary.logic.java.bool

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "./BooleanFactory" "jm_getInstance" args))

# Java class BooleanUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getFromString nil)
(var jm_isStringBoolean nil)
(var jm_toStringFromBooleanArray nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BooleanUtil" :f_tsUtil nil} jproto))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    this))
    
(set jm_getFromString (fn jm_getFromString [this _booleanString]
    (label jreturn
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (var _booleanFactory (BooleanFactory/jm_getInstance))
        (if (:jm_isEmpty _stringValidationUtil _booleanString)
            (do
            (return jreturn false)))
        (var _booleanStringLowerCase (JR/toLowerCase _booleanString))
        (if (= (:jm_compareTo (this :f_tsUtil) _booleanStringLowerCase (_booleanFactory :f_TRUE_STRING)) 0)
            (do
            (return jreturn true))
            (if (= (:jm_compareTo (this :f_tsUtil) _booleanStringLowerCase (_booleanFactory :f_FALSE_STRING)) 0)
            (do
            (return jreturn false))
            (do
            (error (JR/newException "Exception" "Invalid booleanString - Must be true or false"))))))))
    
(set jm_isStringBoolean (fn jm_isStringBoolean [this _booleanString]
    (label jreturn
        (var _booleanFactory (BooleanFactory/jm_getInstance))
        (var _booleanStringLowerCase (JR/toLowerCase _booleanString))
        (if (or (= (JR/compareTo _booleanStringLowerCase (_booleanFactory :f_TRUE_STRING)) 0) (= (JR/compareTo _booleanStringLowerCase (_booleanFactory :f_FALSE_STRING)) 0))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_toStringFromBooleanArray (fn jm_toStringFromBooleanArray [this _booleanArray]
    (label jreturn
        (var _stringMaker (StringMaker/jnew_0))
        (var _size (length _booleanArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_appendboolean _stringMaker (_booleanArray _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringMaker)))))

(set jproto @{:jm_getFromString jm_getFromString :jm_isStringBoolean jm_isStringBoolean :jm_toStringFromBooleanArray jm_toStringFromBooleanArray})


