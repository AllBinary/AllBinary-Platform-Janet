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
# package org.allbinary.input.motion

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TouchButtonRecognizer/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/input/motion/button/TouchButtonRecognizer" "jnew_0" args))
(import ./MotionRecognizer :as MotionRecognizer)

# Java class OnlyTouchButtonRecognizer
(var jproto nil)
(var jnew_0 nil)
(var jm_processStartMotionEvent nil)
(var jm_processEndMotionEvent nil)
(var jm_processDraggedMotionEvent nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OnlyTouchButtonRecognizer" :f_touchButtonRecognizer nil :f_touchButtonProcessing false} jproto))
    
    (put this :f_touchButtonProcessing false)
    (JR/superInit this (MotionRecognizer/jnew_0))
        (set (this :f_touchButtonRecognizer) (TouchButtonRecognizer/jnew_0))
    this))
    
(set jm_processStartMotionEvent (fn jm_processStartMotionEvent [this _x _y _deviceId _modifiers]
        (if (:jm_pressTouchButtonInput (this :f_touchButtonRecognizer) _x _y _deviceId)
            (do
            (set (this :f_touchButtonProcessing) true)))))
    
(set jm_processEndMotionEvent (fn jm_processEndMotionEvent [this _x _y _deviceId _modifiers]
    (label jreturn
        (if (this :f_touchButtonProcessing)
            (do
            (set (this :f_touchButtonProcessing) false)))
        (if (:jm_releaseTouchButtonInput (this :f_touchButtonRecognizer) _x _y _deviceId)
            (do
            (return jreturn))))))
    
(set jm_processDraggedMotionEvent (fn jm_processDraggedMotionEvent [this _x _y _deviceId _modifiers]
        (if (this :f_touchButtonProcessing)
            (do
            (:jm_pressTouchButtonInput (this :f_touchButtonRecognizer) _x _y _deviceId)))))

(set jproto (table/setproto @{:jm_processStartMotionEvent jm_processStartMotionEvent :jm_processEndMotionEvent jm_processEndMotionEvent :jm_processDraggedMotionEvent jm_processDraggedMotionEvent} MotionRecognizer/jproto))


