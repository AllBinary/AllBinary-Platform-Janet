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
# package org.allbinary.game.ag.layer.hud.basic.notification

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GameNotificationHudCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getGameNotificationHud nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameNotificationHudCompositeInterface"} jproto))
    this))

    
(set jm_getGameNotificationHud (fn jm_getGameNotificationHud [this]
    (error (JR/newException "AbstractMethodError" "getGameNotificationHud"))))

(set jproto @{:jm_getGameNotificationHud jm_getGameNotificationHud})


