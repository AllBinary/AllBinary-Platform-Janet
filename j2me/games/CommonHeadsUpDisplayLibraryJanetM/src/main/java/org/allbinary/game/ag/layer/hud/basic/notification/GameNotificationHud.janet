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
(import ../../../../../../../../org/allbinary/game/graphics/hud/BasicHud :as BasicHud)
(defn- BasicHudFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(import ../../../../../../../../java/lang/Integer :as Integer)
(import ../../../../../../../../java/lang/Boolean :as Boolean)
(defn- GameNotification/jstatic_NULL_GAME_NOTIFICATION_EVENT [& args] (JR/call jfile "./GameNotification" "jstatic_NULL_GAME_NOTIFICATION_EVENT" args))

# Java class GameNotificationHud
(var jproto nil)
(var jcell_NULL_GAME_NOTIFICATION :jnone)
(var jstatic_NULL_GAME_NOTIFICATION nil)
(var jsetstatic_NULL_GAME_NOTIFICATION nil)
(var jnew_4 nil)
(var jm_onEvent nil)
(var jm_onGameNotificationEvent nil)
(var jm_add nil)
(var jm_processTick nil)
(var jm_paint nil)
(var jm_clear nil)

(set jstatic_NULL_GAME_NOTIFICATION (fn jstatic_NULL_GAME_NOTIFICATION []
  (when (= jcell_NULL_GAME_NOTIFICATION :jnone) (set jcell_NULL_GAME_NOTIFICATION (jnew_4 ((BasicHudFactory/jm_getInstance) :f_TOPCENTER) ((BasicHudFactory/jm_getInstance) :f_HORIZONTAL) 0 ((BasicColorFactory/jm_getInstance) :f_RED))))
  jcell_NULL_GAME_NOTIFICATION))
(set jsetstatic_NULL_GAME_NOTIFICATION (fn jsetstatic_NULL_GAME_NOTIFICATION [value] (set jcell_NULL_GAME_NOTIFICATION value)))

    
(set jnew_4 (fn jnew_4 [_location _direction _bufferZone _basicColor]
    (var this (table/setproto @{:jclass "GameNotificationHud" :f_METHOD_NAME nil :f_lastGameNotificationEvent nil} jproto))
    (put this :f_METHOD_NAME "onGameNotificationEvent")
    (put this :f_lastGameNotificationEvent (GameNotification/jstatic_NULL_GAME_NOTIFICATION_EVENT))
        (JR/superInit this (BasicHud/jnew_4 _location _direction _bufferZone _basicColor))
    this))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onGameNotificationEvent (fn jm_onGameNotificationEvent [this _gameNotificationEvent]
        (if (not= (this :f_lastGameNotificationEvent) _gameNotificationEvent)
            (do
            (set (this :f_lastGameNotificationEvent) _gameNotificationEvent)
            (JR/className (this :f_logUtil))))
        (:jm_add this (:jm_getString _gameNotificationEvent) (:jm_getSeconds _gameNotificationEvent) (:jm_getBasicColorP _gameNotificationEvent) (:jm_getPermanent _gameNotificationEvent))))
    
(set jm_add (fn jm_add [this _string _seconds _basicColor _permanent]
    nil))
    
(set jm_processTick (fn jm_processTick [this]
    nil))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_clear (fn jm_clear [this]
    nil))

(set jproto (table/setproto @{:jm_onEvent jm_onEvent :jm_onGameNotificationEvent jm_onGameNotificationEvent :jm_add jm_add :jm_processTick jm_processTick :jm_paint jm_paint :jm_clear jm_clear} BasicHud/jproto))


