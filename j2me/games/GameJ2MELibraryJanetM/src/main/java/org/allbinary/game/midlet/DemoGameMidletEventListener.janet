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
(import ../../../../org/allbinary/logic/util/event/EventListenerInterface :as EventListenerInterface)

# Java class DemoGameMidletEventListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onDemoStart nil)
(var jm_onGameStart nil)
(var jm_onDemoGameMidletEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DemoGameMidletEventListener"} jproto))
    this))

    
(set jm_onDemoStart (fn jm_onDemoStart [this]
    (error (JR/newException "AbstractMethodError" "onDemoStart"))))
    
(set jm_onGameStart (fn jm_onGameStart [this]
    (error (JR/newException "AbstractMethodError" "onGameStart"))))
    
(set jm_onDemoGameMidletEvent (fn jm_onDemoGameMidletEvent [this _demoGameMidletEvent]
    (error (JR/newException "AbstractMethodError" "onDemoGameMidletEvent"))))

(set jproto @{:jm_onDemoStart jm_onDemoStart :jm_onGameStart jm_onGameStart :jm_onDemoGameMidletEvent jm_onDemoGameMidletEvent})


