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
(import ./SensorGameUpdateProcessor :as SensorGameUpdateProcessor)

# Java class SingleSensorGameUpdateProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)
(var jm_sendNotifications nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SingleSensorGameUpdateProcessor"} jproto))
    (JR/superInit this (SensorGameUpdateProcessor/jnew_0))
    this))

    
(set jm_process (fn jm_process [this _anyType]
    nil))
    
(set jm_sendNotifications (fn jm_sendNotifications [this _anyType]
    nil))

(set jproto (table/setproto @{:jm_process jm_process :jm_sendNotifications jm_sendNotifications} SensorGameUpdateProcessor/jproto))


