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
# package org.allbinary.input.motion.gesture.configuration

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MotionGestureConfiguration/jnew_0 [& args] (JR/call jfile "./MotionGestureConfiguration" "jnew_0" args))

# Java class MotionGestureConfigurationFactory
(var jproto nil)
(var jcell_config :jnone)
(var jstatic_config nil)
(var jsetstatic_config nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_config (fn jstatic_config []
  (when (= jcell_config :jnone) (set jcell_config (MotionGestureConfiguration/jnew_0)))
  jcell_config))
(set jsetstatic_config (fn jsetstatic_config [value] (set jcell_config value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MotionGestureConfigurationFactory"} jproto))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_config)))))

(set jproto @{})


