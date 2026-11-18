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
(import ../../../../../../org/allbinary/logic/util/event/EventListenerInterface :as EventListenerInterface)

# Java class GameNotificationListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onGameNotificationEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameNotificationListenerInterface"} jproto))
    this))

    
(set jm_onGameNotificationEvent (fn jm_onGameNotificationEvent [this _gameNotificationEvent]
    (error (JR/newException "AbstractMethodError" "onGameNotificationEvent"))))

(set jproto @{:jm_onGameNotificationEvent jm_onGameNotificationEvent})


