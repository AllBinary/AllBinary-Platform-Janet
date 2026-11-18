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
(defn- TextNotificationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/TextNotificationUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(import ../../../../../../org/allbinary/logic/util/visitor/Visitor :as Visitor)
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class TextItemUserIdentifierVisitor
(var jproto nil)
(var jnew_0 nil)
(var jm_visit nil)
(var jm_isLetter nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TextItemUserIdentifierVisitor" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (JR/superInit this (Visitor/jnew_0))
    this))
    
(set jm_visit (fn jm_visit [this _anyType]
    (label jreturn
        (var _value _anyType)
        (if (< (length _value) 2)
            (do
            (var _charValue (get _value 0))
            (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
            (if (:jm_isNumber _stringValidationUtil _value)
                (do
                (return jreturn ((BooleanFactory/jm_getInstance) :f_TRUE)))
                (if (:jm_isLetter this _charValue)
                (do
                (return jreturn ((BooleanFactory/jm_getInstance) :f_TRUE)))
                (do
                (try
                    (do
                    (:jm_fireError (TextNotificationUtil/jm_getInstance) "Only Letters & Numbers Allowed"))
                    ([_e] (do
                    (var _commonStrings (CommonStrings/jm_getInstance))
                    (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_VISIT) _e))))
                (return jreturn ((BooleanFactory/jm_getInstance) :f_FALSE))))))
            (do
            (return jreturn ((BooleanFactory/jm_getInstance) :f_FALSE)))))))
    
(set jm_isLetter (fn jm_isLetter [this _charValue]
    (label jreturn
        (var _value _charValue)
        (return jreturn (or (and (> _value 64) (< _value 91)) (and (> _value 96) (< _value 123)))))))

(set jproto (table/setproto @{:jm_visit jm_visit :jm_isLetter jm_isLetter} Visitor/jproto))


