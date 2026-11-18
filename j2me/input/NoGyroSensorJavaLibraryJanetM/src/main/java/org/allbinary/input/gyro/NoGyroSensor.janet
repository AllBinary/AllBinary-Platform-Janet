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
# package org.allbinary.input.gyro

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Orientation/jstatic_NONE [& args] (JR/call jfile "../../../../org/allbinary/logic/math/Orientation" "jstatic_NONE" args))
(import ./AllBinaryOrientationSensor :as AllBinaryOrientationSensor)

# Java class NoGyroSensor
(var jproto nil)
(var jnew_0 nil)
(var jm_getOrientation nil)
(var jm_onSensorChange nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoGyroSensor"} jproto))
    (JR/superInit this (AllBinaryOrientationSensor/jnew_0))
        (JR/className (this :f_logUtil))
    this))
    
(set jm_getOrientation (fn jm_getOrientation [this]
    (label jreturn
        (return jreturn (Orientation/jstatic_NONE)))))
    
(set jm_onSensorChange (fn jm_onSensorChange [this]
    nil))

(set jproto (table/setproto @{:jm_getOrientation jm_getOrientation :jm_onSensorChange jm_onSensorChange} AllBinaryOrientationSensor/jproto))


