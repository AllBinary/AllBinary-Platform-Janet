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
# package org.allbinary.input

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class AllBinarySensorManager
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_getSensorNamesList nil)
(var jm_shutdown nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinarySensorManager" :f_ORIENTATION_SENSOR_INPUT nil :f_ORIENTATION_TYPE nil :f_list nil} jproto))
    (put this :f_ORIENTATION_SENSOR_INPUT "Orientation Sensor Input")
    (put this :f_ORIENTATION_TYPE "Orientation Type")
    (put this :f_list (BasicArrayListD/jnew_0))
    this))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_getSensorNamesList (fn jm_getSensorNamesList [this]
    (label jreturn
        (return jreturn (this :f_list)))))
    
(set jm_shutdown (fn jm_shutdown [this]
    nil))

(set jproto @{:jm_init jm_init :jm_getSensorNamesList jm_getSensorNamesList :jm_shutdown jm_shutdown})


