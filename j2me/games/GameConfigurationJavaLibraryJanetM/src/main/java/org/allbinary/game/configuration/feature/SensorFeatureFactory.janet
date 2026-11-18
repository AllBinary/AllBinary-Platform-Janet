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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- SensorFeature/jnew_1 [& args] (JR/call jfile "./SensorFeature" "jnew_1" args))

# Java class SensorFeatureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SensorFeatureFactory" :f_NO_ORIENTATION nil :f_ORIENTATION_SENSORS nil :f_SIMULATED_ORIENTATION_SENSORS nil :f_YAW nil :f_YAW_MINUS_RIGHT_PLUS_LEFT nil :f_YAW_MINUS_LEFT_PLUS_RIGHT nil :f_PITCH nil :f_ROLL nil} jproto))
    (put this :f_NO_ORIENTATION (SensorFeature/jnew_1 "No Orientation"))
    (put this :f_ORIENTATION_SENSORS (SensorFeature/jnew_1 "Orientation Sensors"))
    (put this :f_SIMULATED_ORIENTATION_SENSORS (SensorFeature/jnew_1 "Simulated Orientation Sensors"))
    (put this :f_YAW (SensorFeature/jnew_1 "Yaw"))
    (put this :f_YAW_MINUS_RIGHT_PLUS_LEFT (SensorFeature/jnew_1 "Yaw -Right +Left"))
    (put this :f_YAW_MINUS_LEFT_PLUS_RIGHT (SensorFeature/jnew_1 "Yaw -Left +Right "))
    (put this :f_PITCH (SensorFeature/jnew_1 "Pitch"))
    (put this :f_ROLL (SensorFeature/jnew_1 "Roll"))
    this))

(set jproto @{})


