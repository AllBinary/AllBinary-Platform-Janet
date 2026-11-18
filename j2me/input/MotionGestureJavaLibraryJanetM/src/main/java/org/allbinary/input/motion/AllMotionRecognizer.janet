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
(defn- GPointCircularPool/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/GPointCircularPool" "jnew_1" args))
(defn- TouchButtonRecognizer/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/input/motion/button/TouchButtonRecognizer" "jnew_0" args))
(defn- MotionGestureRecognizer/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/input/motion/gesture/MotionGestureRecognizer" "jnew_1" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(import ./MotionRecognizer :as MotionRecognizer)

# Java class AllMotionRecognizer
(var jproto nil)
(var jcell_index :jnone)
(var jstatic_index nil)
(var jsetstatic_index nil)
(var jcell_pointCircularPool :jnone)
(var jstatic_pointCircularPool nil)
(var jsetstatic_pointCircularPool nil)
(var jnew_0 nil)
(var jm_processStartMotionEvent nil)
(var jm_processEndMotionEvent nil)
(var jm_processDraggedMotionEvent nil)
(var jm_processMovedMotionEvent nil)
(var jm_processScrolledMotionEvent nil)
(var jm_getMotionGestureRecognizer nil)

(set jstatic_index (fn jstatic_index []
  (when (= jcell_index :jnone) (set jcell_index 0))
  jcell_index))
(set jsetstatic_index (fn jsetstatic_index [value] (set jcell_index value)))

(set jstatic_pointCircularPool (fn jstatic_pointCircularPool []
  (when (= jcell_pointCircularPool :jnone) (set jcell_pointCircularPool (GPointCircularPool/jnew_1 40)))
  jcell_pointCircularPool))
(set jsetstatic_pointCircularPool (fn jsetstatic_pointCircularPool [value] (set jcell_pointCircularPool value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllMotionRecognizer" :f_logUtil nil :f_motionGestureRecognizer nil :f_touchButtonProcessing false :f_touchButtonRecognizer nil :f_id 0 :f_lastX 0 :f_lastY 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_touchButtonProcessing false)
    
    
    
    
    (JR/superInit this (MotionRecognizer/jnew_0))
        (set (this :f_id) (do (def jold (jstatic_index)) (set jcell_index (JR/i32 (+ (jstatic_index) 1))) jold))
        (set (this :f_motionGestureRecognizer) (MotionGestureRecognizer/jnew_1 (this :f_id)))
        (set (this :f_touchButtonRecognizer) (TouchButtonRecognizer/jnew_0))
    this))
    
(set jm_processStartMotionEvent (fn jm_processStartMotionEvent [this _x _y _deviceId _modifiers]
        (if (:jm_pressTouchButtonInput (this :f_touchButtonRecognizer) _x _y _deviceId)
            (do
            (set (this :f_touchButtonProcessing) true)))
        (if (not (this :f_touchButtonProcessing))
            (do
            (var _point (JR/className (jstatic_pointCircularPool)))
            (:jm_setX _point _x)
            (:jm_setY _point _y)
            (:jm_processPressedMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))))
    
(set jm_processEndMotionEvent (fn jm_processEndMotionEvent [this _x _y _deviceId _modifiers]
        (if (:jm_releaseTouchButtonInput (this :f_touchButtonRecognizer) _x _y _deviceId)
            (do
            nil))
        (if (not (this :f_touchButtonProcessing))
            (do
            (var _point (JR/className (jstatic_pointCircularPool)))
            (:jm_setX _point _x)
            (:jm_setY _point _y)
            (:jm_processReleasedMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))
        (if (this :f_touchButtonProcessing)
            (do
            (set (this :f_touchButtonProcessing) false)))))
    
(set jm_processDraggedMotionEvent (fn jm_processDraggedMotionEvent [this _x _y _deviceId _modifiers]
        (if (this :f_touchButtonProcessing)
            (do
            (:jm_pressTouchButtonInput (this :f_touchButtonRecognizer) _x _y _deviceId)))
        (if (not (this :f_touchButtonProcessing))
            (do
            (var _point (JR/className (jstatic_pointCircularPool)))
            (:jm_setX _point _x)
            (:jm_setY _point _y)
            (:jm_processDraggedMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))))
    
(set jm_processMovedMotionEvent (fn jm_processMovedMotionEvent [this _x _y _deviceId _modifiers]
        (if (or (not= _x (this :f_lastX)) (not= _y (this :f_lastY)))
            (do
            (set (this :f_lastX) _x)
            (set (this :f_lastY) _y)
            (var _point (JR/className (jstatic_pointCircularPool)))
            (:jm_setX _point _x)
            (:jm_setY _point _y)
            (:jm_processMovedMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))))
    
(set jm_processScrolledMotionEvent (fn jm_processScrolledMotionEvent [this _x _y _deviceId _modifiers]
        (var _point (JR/className (jstatic_pointCircularPool)))
        (:jm_setX _point _x)
        (:jm_setY _point _y)
        (:jm_processScrolledMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))
    
(set jm_getMotionGestureRecognizer (fn jm_getMotionGestureRecognizer [this]
    (label jreturn
        (return jreturn (this :f_motionGestureRecognizer)))))

(set jproto (table/setproto @{:jm_processStartMotionEvent jm_processStartMotionEvent :jm_processEndMotionEvent jm_processEndMotionEvent :jm_processDraggedMotionEvent jm_processDraggedMotionEvent :jm_processMovedMotionEvent jm_processMovedMotionEvent :jm_processScrolledMotionEvent jm_processScrolledMotionEvent :jm_getMotionGestureRecognizer jm_getMotionGestureRecognizer} MotionRecognizer/jproto))


