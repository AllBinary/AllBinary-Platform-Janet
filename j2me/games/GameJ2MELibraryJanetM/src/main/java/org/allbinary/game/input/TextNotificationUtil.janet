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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameNotificationEvent/jnew_5 [& args] (JR/call jfile "../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent" "jnew_5" args))
(defn- GameNotificationEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- ErrorSound/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/media/audio/ErrorSound" "jm_getInstance" args))
(defn- PrimaryPlayerQueueFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" "jm_getInstance" args))
(defn- SelectSound/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/media/audio/SelectSound" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(import ../../../../java/lang/Boolean :as Boolean)

# Java class TextNotificationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_fireError nil)
(var jm_fireNew nil)
(var jm_fireSuccess nil)
(var jm_fire nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TextNotificationUtil" :f_TWO nil :f_FALSE nil :f_gameNotificationEventHandler nil} jproto))
    (put this :f_TWO (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 2))
    (put this :f_FALSE ((BooleanFactory/jm_getInstance) :f_FALSE))
    (put this :f_gameNotificationEventHandler (GameNotificationEventHandler/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_fireError (fn jm_fireError [this _message]
        (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (ErrorSound/jm_getInstance))
        (:jm_fire this _message)))
    
(set jm_fireNew (fn jm_fireNew [this _message]
        (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (SelectSound/jm_getInstance))
        (:jm_fire this _message)))
    
(set jm_fireSuccess (fn jm_fireSuccess [this _message]
        (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (SelectSound/jm_getInstance))
        (:jm_fire this _message)))
    
(set jm_fire (fn jm_fire [this _message]
        (var _gameNotificationEvent (GameNotificationEvent/jnew_5 this _message (this :f_TWO) ((BasicColorFactory/jm_getInstance) :f_RED) (this :f_FALSE)))
        (:jm_fireEvent (this :f_gameNotificationEventHandler) _gameNotificationEvent)))

(set jproto @{:jm_fireError jm_fireError :jm_fireNew jm_fireNew :jm_fireSuccess jm_fireSuccess :jm_fire jm_fire})


