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
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- SensorFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" "jm_getInstance" args))
(defn- NoGyroSensor/jnew_0 [& args] (JR/call jfile "./NoGyroSensor" "jnew_0" args))

# Java class OrientationToGameKeyEvent
(var jproto nil)
(var jnew_0 nil)
(var jm_setAllBinaryGyroSensor nil)
(var jm_getAllBinaryGyroSensor nil)
(var jm_process nil)
(var jm_updateGameKeyEvents nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OrientationToGameKeyEvent" :f_allBinaryGyroSensor nil :f_MIN 0} jproto))
    
    (put this :f_MIN 15)
        (if (:jm_isFeature (Features/jm_getInstance) ((SensorFeatureFactory/jm_getInstance) :f_NO_ORIENTATION))
            (do
            (set (this :f_allBinaryGyroSensor) (NoGyroSensor/jnew_0)))
            (do
            (error (JR/newException "Exception" "Not Such Feature"))))
    this))
    
(set jm_setAllBinaryGyroSensor (fn jm_setAllBinaryGyroSensor [this _allBinaryGyroSensor]
        (set (this :f_allBinaryGyroSensor) _allBinaryGyroSensor)))
    
(set jm_getAllBinaryGyroSensor (fn jm_getAllBinaryGyroSensor [this]
    (label jreturn
        (return jreturn (this :f_allBinaryGyroSensor)))))
    
(set jm_process (fn jm_process [this]
    nil))
    
(set jm_updateGameKeyEvents (fn jm_updateGameKeyEvents [this _orientation _yaw _pitch _roll]
    nil))

(set jproto @{:jm_setAllBinaryGyroSensor jm_setAllBinaryGyroSensor :jm_getAllBinaryGyroSensor jm_getAllBinaryGyroSensor :jm_process jm_process :jm_updateGameKeyEvents jm_updateGameKeyEvents})


