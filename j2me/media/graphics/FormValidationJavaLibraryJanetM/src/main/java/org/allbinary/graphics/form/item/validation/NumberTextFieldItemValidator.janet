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
# package org.allbinary.graphics.form.item.validation

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../org/allbinary/logic/control/validate/ValidatorBase :as ValidatorBase)
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../../java/lang/Integer :as Integer)
(import ../../../../../../java/lang/Boolean :as Boolean)

# Java class NumberTextFieldItemValidator
(var jproto nil)
(var jnew_4 nil)
(var jm_isNumberValid nil)
(var jm_toNumberVector nil)
(var jm_isValid nil)
(var jm_toList nil)

    
(set jnew_4 (fn jnew_4 [_textFieldItem _maxChars _min _max]
    (var this (table/setproto @{:jclass "NumberTextFieldItemValidator" :f_textFieldItem nil :f_min 0 :f_max 0 :f_maxChars 0} jproto))
    
    
    
    
    (JR/superInit this (ValidatorBase/jnew_0))
        (set (this :f_textFieldItem) _textFieldItem)
        (set (this :f_min) _min)
        (set (this :f_max) _max)
        (set (this :f_maxChars) _maxChars)
    this))
    
(set jm_isNumberValid (fn jm_isNumberValid [this _value]
    (label jreturn
        (return jreturn ((BooleanFactory/jm_getInstance) :f_TRUE)))))
    
(set jm_toNumberVector (fn jm_toNumberVector [this _value]
    (label jreturn
        (return jreturn (BasicArrayListD/jnew_0)))))
    
(set jm_isValid (fn jm_isValid [this]
    (label jreturn
        (var _result ((BooleanFactory/jm_getInstance) :f_TRUE))
        (var _string (:jm_getString (this :f_textFieldItem)))
        (var _textLength (length _string))
        (if (and (> _textLength 0) (< _textLength (this :f_maxChars)))
            (do
            (try
                (do
                (Integer/jm_parseInt (:jm_getString (this :f_textFieldItem))))
                ([_e] (do
                (set _result ((BooleanFactory/jm_getInstance) :f_FALSE))))))
            (do
            (if (< _textLength 1)
                (do
                (set _result ((BooleanFactory/jm_getInstance) :f_FALSE)))
                (if (> _textLength (this :f_maxChars))
                (do
                (set _result ((BooleanFactory/jm_getInstance) :f_FALSE)))))))
        (return jreturn _result))))
    
(set jm_toList (fn jm_toList [this]
    (label jreturn
        (var _list (BasicArrayListD/jnew_0))
        (var _string (:jm_getString (this :f_textFieldItem)))
        (var _textLength (length _string))
        (var _label (:jm_getLabel (this :f_textFieldItem)))
        (var _name (JR/substring _label 0 (JR/i32 (- (length _label) 2))))
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (var _stringMaker (StringMaker/jnew_0))
        (if (and (> _textLength 0) (< _textLength (this :f_maxChars)))
            (do
            (try
                (do
                (var _number (:jm_createInstance _smallIntegerSingletonFactory (Integer/jm_parseInt (:jm_getString (this :f_textFieldItem)))))
                (if (> (:jm_intValue _number) (this :f_min))
                    (do
                    (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                    (:jm_add _list (:jm_toString (:jm_append (:jm_append _stringMaker _name) " is to small"))))
                    (if (> (:jm_intValue _number) (this :f_max))
                    (do
                    (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                    (:jm_add _list (:jm_toString (:jm_append (:jm_append _stringMaker _name) " is to large")))))))
                ([_e] (do
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (:jm_add _list (:jm_toString (:jm_append (:jm_append _stringMaker _name) " is not a number")))))))
            (do
            (if (< _textLength 1)
                (do
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (:jm_add _list (:jm_toString (:jm_append (:jm_append _stringMaker _name) " is to short"))))
                (if (> _textLength (this :f_maxChars))
                (do
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (:jm_add _list (:jm_toString (:jm_append (:jm_append _stringMaker _name) " is to long"))))))))
        (return jreturn _list))))

(set jproto (table/setproto @{:jm_isNumberValid jm_isNumberValid :jm_toNumberVector jm_toNumberVector :jm_isValid jm_isValid :jm_toList jm_toList} ValidatorBase/jproto))


