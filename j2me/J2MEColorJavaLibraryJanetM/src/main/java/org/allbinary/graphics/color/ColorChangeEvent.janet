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
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "./BasicColorFactory" "jm_getInstance" args))

# Java class ColorChangeEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)

    
(set jnew_1 (fn jnew_1 [_anyType]
    (var this (table/setproto @{:jclass "ColorChangeEvent" :f_basicColor nil} jproto))
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_WHITE))
        nil
    this))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))

(set jproto (table/setproto @{:jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP} AllBinaryEventObject/jproto))


