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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicColorUtil/jm_getInstance [& args] (JR/call jfile "./BasicColorUtil" "jm_getInstance" args))

# Java class BasicColor
(var jproto nil)
(var jnew_3 nil)
(var jm_intValue nil)
(var jm_toInt nil)
(var jm_toString nil)
(var jm_getName nil)
(var jm_getRedComponent nil)
(var jm_getGreenComponent nil)
(var jm_getBlueComponent nil)
(var jm_getAlphaComponent nil)

    
(set jnew_3 (fn jnew_3 [_alphaValue _value _name]
    (var this (table/setproto @{:jclass "BasicColor" :f_name nil :f_value 0 :f_redComponent 0.0 :f_greenComponent 0.0 :f_blueComponent 0.0 :f_alphaComponent 0.0 :f_red 0 :f_green 0 :f_blue 0 :f_alpha 0} jproto))
    
    
    
    
    
    
    
    
    
    
        (set (this :f_name) _name)
        (var _tempValue 0)
        (var _basicColorUtil (BasicColorUtil/jm_getInstance))
        (if (_basicColorUtil :f_isAlpha)
            (do
            (if (_basicColorUtil :f_ffOpaque)
                (do
                (set _tempValue (bor _alphaValue _value)))
                (do
                (set _tempValue (bor 0x00000000 _value)))))
            (do
            (set _tempValue _value)))
        (var _alphaInt (band (brshift _tempValue 24) 255))
        (set (this :f_alpha) (JR/i16 _alphaInt))
        (set (this :f_alphaComponent) (/ _alphaInt 255))
        (var _redInt (band (brshift _tempValue 16) 255))
        (set (this :f_red) (JR/i16 _redInt))
        (set (this :f_redComponent) (/ _redInt 255))
        (var _greenInt (band (brshift _tempValue 8) 255))
        (set (this :f_green) (JR/i16 _greenInt))
        (set (this :f_greenComponent) (/ _greenInt 255))
        (var _blueInt (band _tempValue 255))
        (set (this :f_blue) (JR/i16 _blueInt))
        (set (this :f_blueComponent) (/ _blueInt 255))
        (set (this :f_value) _tempValue)
    this))
    
(set jm_intValue (fn jm_intValue [this]
    (label jreturn
        (return jreturn (this :f_value)))))
    
(set jm_toInt (fn jm_toInt [this]
    (label jreturn
        (return jreturn (this :f_value)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "BasicColor: ")
        (:jm_append _stringBuffer "Alpha: ")
        (:jm_appendshort _stringBuffer (this :f_alpha))
        (:jm_append _stringBuffer " Red: ")
        (:jm_appendshort _stringBuffer (this :f_red))
        (:jm_append _stringBuffer " Green: ")
        (:jm_appendshort _stringBuffer (this :f_green))
        (:jm_append _stringBuffer " Blue: ")
        (:jm_appendshort _stringBuffer (this :f_blue))
        (:jm_append _stringBuffer " Value: ")
        (:jm_appendint _stringBuffer (this :f_value))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_getRedComponent (fn jm_getRedComponent [this]
    (label jreturn
        (return jreturn (this :f_redComponent)))))
    
(set jm_getGreenComponent (fn jm_getGreenComponent [this]
    (label jreturn
        (return jreturn (this :f_greenComponent)))))
    
(set jm_getBlueComponent (fn jm_getBlueComponent [this]
    (label jreturn
        (return jreturn (this :f_blueComponent)))))
    
(set jm_getAlphaComponent (fn jm_getAlphaComponent [this]
    (label jreturn
        (return jreturn (this :f_alphaComponent)))))

(set jproto @{:jm_intValue jm_intValue :jm_toInt jm_toInt :jm_toString jm_toString :jm_getName jm_getName :jm_getRedComponent jm_getRedComponent :jm_getGreenComponent jm_getGreenComponent :jm_getBlueComponent jm_getBlueComponent :jm_getAlphaComponent jm_getAlphaComponent})


