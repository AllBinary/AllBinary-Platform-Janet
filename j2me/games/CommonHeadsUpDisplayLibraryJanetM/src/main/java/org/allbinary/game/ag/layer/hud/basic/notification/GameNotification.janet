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
(defn- GameNotificationEvent/jnew_5 [& args] (JR/call jfile "../../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent" "jnew_5" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../../../../java/lang/Integer :as Integer)

# Java class GameNotification
(var jproto nil)
(var jcell_NULL_GAME_NOTIFICATION_EVENT :jnone)
(var jstatic_NULL_GAME_NOTIFICATION_EVENT nil)
(var jsetstatic_NULL_GAME_NOTIFICATION_EVENT nil)
(var jnew_0 nil)
(var jm_add nil)
(var jm_clear nil)
(var jm_getSize nil)

(set jstatic_NULL_GAME_NOTIFICATION_EVENT (fn jstatic_NULL_GAME_NOTIFICATION_EVENT []
  (when (= jcell_NULL_GAME_NOTIFICATION_EVENT :jnone) (set jcell_NULL_GAME_NOTIFICATION_EVENT (GameNotificationEvent/jnew_5 ((NullUtil/jm_getInstance) :f_NULL_OBJECT) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) 0 ((BasicColorFactory/jm_getInstance) :f_RED) ((BooleanFactory/jm_getInstance) :f_FALSE))))
  jcell_NULL_GAME_NOTIFICATION_EVENT))
(set jsetstatic_NULL_GAME_NOTIFICATION_EVENT (fn jsetstatic_NULL_GAME_NOTIFICATION_EVENT [value] (set jcell_NULL_GAME_NOTIFICATION_EVENT value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameNotification" :f_stringList nil :f_timeList nil :f_colorList nil} jproto))
    (put this :f_stringList (BasicArrayListD/jnew_0))
    (put this :f_timeList (BasicArrayListD/jnew_0))
    (put this :f_colorList (BasicArrayListD/jnew_0))
    this))

    
(set jm_add (fn jm_add [this _string _seconds _basicColor]
        (if (not (:jm_contains (this :f_stringList) _string))
            (do
            (:jm_add (this :f_stringList) _string)
            (:jm_add (this :f_timeList) _seconds)
            (:jm_add (this :f_colorList) _basicColor)))))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_stringList))
        (:jm_clear (this :f_timeList))
        (:jm_clear (this :f_colorList))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_size (this :f_stringList))))))

(set jproto @{:jm_add jm_add :jm_clear jm_clear :jm_getSize jm_getSize})


