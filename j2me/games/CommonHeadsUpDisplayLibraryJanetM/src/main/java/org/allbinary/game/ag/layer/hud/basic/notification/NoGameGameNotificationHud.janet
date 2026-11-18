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
(defn- BasicHudFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(import ./GameNotificationHud :as GameNotificationHud)

# Java class NoGameGameNotificationHud
(var jproto nil)
(var jnew_0 nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoGameGameNotificationHud"} jproto))
        (JR/superInit this (GameNotificationHud/jnew_4 ((BasicHudFactory/jm_getInstance) :f_TOPCENTER) ((BasicHudFactory/jm_getInstance) :f_HORIZONTAL) 2 ((BasicColorFactory/jm_getInstance) :f_RED)))
        (set (this :f_updateMaxWidth) 40)
        (set (this :f_updateMaxHeight) 14)
    this))

(set jproto (table/setproto @{} GameNotificationHud/jproto))


