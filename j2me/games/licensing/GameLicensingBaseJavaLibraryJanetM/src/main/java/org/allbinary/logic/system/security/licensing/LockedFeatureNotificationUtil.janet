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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameNotificationEvent/jnew_5 [& args] (JR/call jfile "../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEvent" "jnew_5" args))
(defn- GameNotificationEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- ErrorSound/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/media/audio/ErrorSound" "jm_getInstance" args))
(defn- PrimaryPlayerQueueFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" "jm_getInstance" args))
(defn- LicenseStrings/jm_getInstance [& args] (JR/call jfile "./LicenseStrings" "jm_getInstance" args))

# Java class LockedFeatureNotificationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_fire nil)
(var jm_fireWithColor nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LockedFeatureNotificationUtil" :f_gameNotificationEvent nil} jproto))
    (put this :f_gameNotificationEvent (GameNotificationEvent/jnew_5 this ((LicenseStrings/jm_getInstance) :f_LOCKED) (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 3) ((BasicColorFactory/jm_getInstance) :f_RED) ((BooleanFactory/jm_getInstance) :f_FALSE)))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_fire (fn jm_fire [this]
        (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (ErrorSound/jm_getInstance))
        (:jm_fireEvent (GameNotificationEventHandler/jm_getInstance) (this :f_gameNotificationEvent))))
    
(set jm_fireWithColor (fn jm_fireWithColor [this _basicColor]
        (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (ErrorSound/jm_getInstance))
        (:jm_setBasicColorP (this :f_gameNotificationEvent) _basicColor)
        (:jm_fireEvent (GameNotificationEventHandler/jm_getInstance) (this :f_gameNotificationEvent))))

(set jproto @{:jm_fire jm_fire :jm_fireWithColor jm_fireWithColor})


