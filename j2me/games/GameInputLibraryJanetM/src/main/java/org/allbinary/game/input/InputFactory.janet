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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- Input/jnew_2 [& args] (JR/call jfile "./Input" "jnew_2" args))

# Java class InputFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_add nil)
(var jm_getInstanceById nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InputFactory" :f_logUtil nil :f_commonStrings nil :f_KEY_CODE_LABEL nil :f_DEVICE_ID_LABEL nil :f_MAX 0 :f_inputIntegerArray nil :f_NO_INPUT nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_KEY_CODE_LABEL "KeyCode: ")
    (put this :f_DEVICE_ID_LABEL "DeviceId: ")
    (put this :f_MAX (:jm_getMin (SmallIntegerSingletonFactory/jm_getInstance)))
    (put this :f_inputIntegerArray (array/new-filled (this :f_MAX) nil))
    (put this :f_NO_INPUT (Input/jnew_2 0 ((this :f_commonStrings) :f_UNKNOWN)))
        (var _size (length (this :f_inputIntegerArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set ((this :f_inputIntegerArray) _index) (this :f_NO_INPUT)))
                (do (set _index (JR/i32 (+ _index 1))))))
    this))
    
(set jm_add (fn jm_add [this _id _input]
        (set ((this :f_inputIntegerArray) _id) _input)))
    
(set jm_getInstanceById (fn jm_getInstanceById [this _id]
    (var _id _id)
    (label jreturn
        (if (< _id 0)
            (do
            (set _id (JR/i32 (- _id)))))
        (if (> _id (length (this :f_inputIntegerArray)))
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Warning id: ") _id)) this ((this :f_commonStrings) :f_GET_INSTANCE))
            (return jreturn (this :f_NO_INPUT))))
        (return jreturn ((this :f_inputIntegerArray) _id)))))

(set jproto @{:jm_add jm_add :jm_getInstanceById jm_getInstanceById})


