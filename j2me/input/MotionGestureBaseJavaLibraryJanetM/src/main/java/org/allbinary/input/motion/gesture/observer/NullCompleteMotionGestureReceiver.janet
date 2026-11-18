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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class NullCompleteMotionGestureReceiver
(var jproto nil)
(var jnew_0 nil)
(var jm_onMotionGestureCompleted nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullCompleteMotionGestureReceiver" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) "Null Gesture Reciever" this (_commonStrings :f_CONSTRUCTOR))
    this))
    
(set jm_onMotionGestureCompleted (fn jm_onMotionGestureCompleted [this _list]
    nil))

(set jproto @{:jm_onMotionGestureCompleted jm_onMotionGestureCompleted})


