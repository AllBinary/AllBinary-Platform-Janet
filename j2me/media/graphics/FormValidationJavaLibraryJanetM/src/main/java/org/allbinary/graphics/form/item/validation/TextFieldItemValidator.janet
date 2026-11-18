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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../../java/lang/Boolean :as Boolean)

# Java class TextFieldItemValidator
(var jproto nil)
(var jnew_4 nil)
(var jm_isValid nil)
(var jm_toList nil)

    
(set jnew_4 (fn jnew_4 [_textFieldItem _min _max _allowOnEmpty]
    (var this (table/setproto @{:jclass "TextFieldItemValidator" :f_textFieldItem nil :f_min 0 :f_max 0 :f_allowOnEmpty false} jproto))
    
    
    
    
    (JR/superInit this (ValidatorBase/jnew_0))
        (set (this :f_textFieldItem) _textFieldItem)
        (set (this :f_min) _min)
        (set (this :f_max) _max)
        (set (this :f_allowOnEmpty) _allowOnEmpty)
    this))
    
(set jm_isValid (fn jm_isValid [this]
    (label jreturn
        (var _booleanFactory (BooleanFactory/jm_getInstance))
        (var _result (_booleanFactory :f_TRUE))
        (var _string (:jm_getString (this :f_textFieldItem)))
        (var _textLength (length _string))
        (if (or (and (= _textLength 0) (this :f_allowOnEmpty)) (and (> _textLength (this :f_min)) (< _textLength (this :f_max))))
            (do
            nil)
            (do
            (if (< _textLength (this :f_min))
                (do
                (set _result (_booleanFactory :f_FALSE)))
                (if (> _textLength (this :f_max))
                (do
                (set _result (_booleanFactory :f_FALSE)))))))
        (return jreturn _result))))
    
(set jm_toList (fn jm_toList [this]
    (label jreturn
        (var _list (BasicArrayListD/jnew_0))
        (var _string (:jm_getString (this :f_textFieldItem)))
        (var _textLength (length _string))
        (if (and (> _textLength (this :f_min)) (< _textLength (this :f_max)))
            (do
            nil)
            (do
            (var _label (:jm_getLabel (this :f_textFieldItem)))
            (var _name (JR/substring _label 0 (JR/i32 (- (length _label) 2))))
            (if (< _textLength (this :f_min))
                (do
                (:jm_add _list (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) _name) " is to short"))))
                (if (> _textLength (this :f_max))
                (do
                (:jm_add _list (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) _name) " is to long"))))))))
        (return jreturn _list))))

(set jproto (table/setproto @{:jm_isValid jm_isValid :jm_toList jm_toList} ValidatorBase/jproto))


