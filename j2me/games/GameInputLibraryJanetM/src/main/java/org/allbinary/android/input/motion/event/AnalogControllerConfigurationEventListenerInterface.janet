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
# package org.allbinary.android.input.motion.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../org/allbinary/logic/util/event/EventListenerInterface :as EventListenerInterface)

# Java class AnalogControllerConfigurationEventListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onAnalogControllerConfigurationEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnalogControllerConfigurationEventListenerInterface"} jproto))
    this))

    
(set jm_onAnalogControllerConfigurationEvent (fn jm_onAnalogControllerConfigurationEvent [this _analogControllerConfigurationEvent]
    (error (JR/newException "AbstractMethodError" "onAnalogControllerConfigurationEvent"))))

(set jproto @{:jm_onAnalogControllerConfigurationEvent jm_onAnalogControllerConfigurationEvent})


