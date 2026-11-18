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
(defn- AllMotionRecognizer/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/input/motion/AllMotionRecognizer" "jnew_0" args))
(defn- GameMotionGestureListener/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/input/motion/gesture/observer/GameMotionGestureListener" "jnew_1" args))
(defn- MotionGestureReceiveInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

#TouchJ2ME
# Java class TouchJ2ME
(var jproto nil)
(var jnew_0 nil)
(var jm_pointerDragged nil)
(var jm_pointerPressed nil)
(var jm_pointerReleased nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchJ2ME" :f_logUtil nil :f_DEVICE_ID 0 :f_motionRecognizer nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_DEVICE_ID 0)
    (put this :f_motionRecognizer (AllMotionRecognizer/jnew_0))
        (var _motionGesturesHandler (JR/className (:jm_getMotionGestureRecognizer (this :f_motionRecognizer))))
        (:jm_addListenerInterface _motionGesturesHandler (GameMotionGestureListener/jnew_1 (MotionGestureReceiveInterfaceFactory/jm_getInstance)))
    this))
    
(set jm_pointerDragged (fn jm_pointerDragged [this _x _y]
        (try
            (do
            (:jm_processDraggedMotionEvent (this :f_motionRecognizer) _x _y (this :f_DEVICE_ID) 0))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "pointerDragged" _e))))))
    
(set jm_pointerPressed (fn jm_pointerPressed [this _x _y]
        (try
            (do
            (:jm_processStartMotionEvent (this :f_motionRecognizer) _x _y (this :f_DEVICE_ID) 0))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "pointerPressed" _e))))))
    
(set jm_pointerReleased (fn jm_pointerReleased [this _x _y]
        (try
            (do
            (:jm_processEndMotionEvent (this :f_motionRecognizer) _x _y (this :f_DEVICE_ID) 0))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "pointerReleased" _e))))))

(set jproto @{:jm_pointerDragged jm_pointerDragged :jm_pointerPressed jm_pointerPressed :jm_pointerReleased jm_pointerReleased})


