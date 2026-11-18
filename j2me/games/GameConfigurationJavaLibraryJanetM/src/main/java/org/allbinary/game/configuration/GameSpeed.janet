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
# package org.allbinary.game.configuration

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "./GameConfigurationCentral" "jm_getInstance" args))

# Java class GameSpeed
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getSpeed nil)
(var jm_getDelay nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameSpeed"} jproto))
    this))

    
(set jm_getSpeed (fn jm_getSpeed [this]
    (label jreturn
        (var _speedGameConfiguration ((GameConfigurationCentral/jm_getInstance) :f_SPEED))
        (return jreturn (JR/i32 (+ (JR/i32 (- (JR/className (:jm_getMaxValue _speedGameConfiguration)) (JR/className (:jm_getValue _speedGameConfiguration)))) 1))))))
    
(set jm_getDelay (fn jm_getDelay [this]
    (label jreturn
        (var _speedGameConfiguration ((GameConfigurationCentral/jm_getInstance) :f_SPEED))
        (return jreturn (JR/i32 (* 19 (JR/i32 (- (JR/className (:jm_getMaxValue _speedGameConfiguration)) (JR/className (:jm_getValue _speedGameConfiguration))))))))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{:jm_getSpeed jm_getSpeed :jm_getDelay jm_getDelay})


