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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./Input :as Input)
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "./InputFactory" "jm_getInstance" args))

# Java class PCGameKey
(var jproto nil)
(var jnew_2 nil)
(var jm_toString nil)
(var jm_getString nil)

    
(set jnew_2 (fn jnew_2 [_keyCode _name]
    (var this (table/setproto @{:jclass "PCGameKey"} jproto))
        (JR/superInit this (Input/jnew_2 _keyCode _name))
        (var _id (:jm_getId this))
        (if (>= _id 0)
            (do
            (:jm_add (InputFactory/jm_getInstance) _id this)))
    this))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (string "PCGameKey: " ((get Input/jproto :jm_toString) this))))))
    
(set jm_getString (fn jm_getString [_keyCode]
    (label jreturn
        (var _input (:jm_getInstanceById (InputFactory/jm_getInstance) _keyCode))
        (if (not (nil? _input))
            (do
            (return jreturn (:jm_getName _input)))
            (do
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))))

(set jproto (table/setproto @{:jm_toString jm_toString} Input/jproto))


