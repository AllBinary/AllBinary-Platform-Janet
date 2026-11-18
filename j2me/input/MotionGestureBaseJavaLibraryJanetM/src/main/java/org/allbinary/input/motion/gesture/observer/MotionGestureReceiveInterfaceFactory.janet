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
# package org.allbinary.input.motion.gesture.observer

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MotionGestureConfigurationFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" "jm_getInstance" args))
(defn- ResolveCompleteMotionGestureListener/jnew_0 [& args] (JR/call jfile "./ResolveCompleteMotionGestureListener" "jnew_0" args))
(defn- NullCompleteMotionGestureReceiver/jnew_0 [& args] (JR/call jfile "./NullCompleteMotionGestureReceiver" "jnew_0" args))

# Java class MotionGestureReceiveInterfaceFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MotionGestureReceiveInterfaceFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (var _configuration (MotionGestureConfigurationFactory/jm_getInstance))
        (if (not (:jm_isExecutingActionsAllowed _configuration))
            (do
            (return jreturn (NullCompleteMotionGestureReceiver/jnew_0)))
            (do
            (return jreturn (ResolveCompleteMotionGestureListener/jnew_0)))))))

(set jproto @{})


