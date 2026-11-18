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
# package org.allbinary.game.layer.hud.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)
(import ../../../../../../java/lang/Integer :as Integer)
(import ../../../../../../java/lang/Boolean :as Boolean)

# Java class GameNotificationEvent
(var jproto nil)
(var jnew_5 nil)
(var jm_getString nil)
(var jm_getSeconds nil)
(var jm_getBasicColorP nil)
(var jm_getPermanent nil)
(var jm_setString nil)
(var jm_setBasicColorP nil)

    
(set jnew_5 (fn jnew_5 [_anyType _string _seconds _basicColor _permanent]
    (var this (table/setproto @{:jclass "GameNotificationEvent" :f_string nil :f_seconds nil :f_basicColor nil :f_removeable nil} jproto))
    (put this :f_string ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_BLACK))
    
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
        (:jm_setString this _string)
        (set (this :f_seconds) _seconds)
        (:jm_setBasicColorP this _basicColor)
        (set (this :f_removeable) _permanent)
    this))
    
(set jm_getString (fn jm_getString [this]
    (label jreturn
        (return jreturn (this :f_string)))))
    
(set jm_getSeconds (fn jm_getSeconds [this]
    (label jreturn
        (return jreturn (this :f_seconds)))))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))
    
(set jm_getPermanent (fn jm_getPermanent [this]
    (label jreturn
        (return jreturn (this :f_removeable)))))
    
(set jm_setString (fn jm_setString [this _string]
        (set (this :f_string) _string)))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))

(set jproto (table/setproto @{:jm_getString jm_getString :jm_getSeconds jm_getSeconds :jm_getBasicColorP jm_getBasicColorP :jm_getPermanent jm_getPermanent :jm_setString jm_setString :jm_setBasicColorP jm_setBasicColorP} AllBinaryEventObject/jproto))


