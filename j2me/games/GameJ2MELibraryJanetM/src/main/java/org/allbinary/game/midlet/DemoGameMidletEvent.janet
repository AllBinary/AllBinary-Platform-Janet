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
# package org.allbinary.game.midlet

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class DemoGameMidletEvent
(var jproto nil)
(var jnew_2 nil)
(var jm_init nil)
(var jm_setDemoGameMidletState nil)
(var jm_getDemoGameMidletState nil)

    
(set jnew_2 (fn jnew_2 [_anyType _demoGameMidletState]
    (var this (table/setproto @{:jclass "DemoGameMidletEvent" :f_demoGameMidletState nil} jproto))
    
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
        (set (this :f_demoGameMidletState) _demoGameMidletState)
    this))
    
(set jm_init (fn jm_init [this _anyType]
        (:jm_setSource this _anyType)))
    
(set jm_setDemoGameMidletState (fn jm_setDemoGameMidletState [this _demoGameMidletState]
        (set (this :f_demoGameMidletState) _demoGameMidletState)))
    
(set jm_getDemoGameMidletState (fn jm_getDemoGameMidletState [this]
    (label jreturn
        (return jreturn (this :f_demoGameMidletState)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_setDemoGameMidletState jm_setDemoGameMidletState :jm_getDemoGameMidletState jm_getDemoGameMidletState} AllBinaryEventObject/jproto))


