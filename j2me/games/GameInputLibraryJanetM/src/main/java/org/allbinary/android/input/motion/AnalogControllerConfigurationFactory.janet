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
# package org.allbinary.android.input.motion

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnalogControllerConfigurationEvent/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent" "jnew_1" args))
(defn- AnalogControllerConfigurationEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler" "jm_getInstance" args))
(defn- ScaleFactorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/ScaleFactorFactory" "jm_getInstance" args))

# Java class AnalogControllerConfigurationFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isAvailable nil)
(var jm_setAvailable nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnalogControllerConfigurationFactory" :f_SCALE_FACTOR 0 :f_SCALE_VALUE 0 :f_available false :f_analogControllerConfigurationEvent nil} jproto))
    (put this :f_SCALE_FACTOR ((ScaleFactorFactory/jm_getInstance) :f_DEFAULT_SCALE_FACTOR))
    (put this :f_SCALE_VALUE ((ScaleFactorFactory/jm_getInstance) :f_DEFAULT_SCALE_VALUE))
    
    (put this :f_analogControllerConfigurationEvent (AnalogControllerConfigurationEvent/jnew_1 this))
    this))
    
(set jm_isAvailable (fn jm_isAvailable [this]
    (label jreturn
        (return jreturn (this :f_available)))))
    
(set jm_setAvailable (fn jm_setAvailable [this _available]
        (set (this :f_available) _available)
        (:jm_fireEvent (AnalogControllerConfigurationEventHandler/jm_getInstance) (this :f_analogControllerConfigurationEvent))))

(set jproto @{:jm_isAvailable jm_isAvailable :jm_setAvailable jm_setAvailable})


