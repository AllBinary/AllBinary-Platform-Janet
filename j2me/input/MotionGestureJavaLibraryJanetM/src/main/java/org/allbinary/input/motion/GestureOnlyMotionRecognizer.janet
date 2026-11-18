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
(defn- MotionGestureRecognizer/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/input/motion/gesture/MotionGestureRecognizer" "jnew_1" args))
(import ./MotionRecognizer :as MotionRecognizer)

# Java class GestureOnlyMotionRecognizer
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

(set jstatic_index (fn jstatic_index []
  (when (= jcell_index :jnone) (set jcell_index 0))
  jcell_index))
(set jsetstatic_index (fn jsetstatic_index [value] (set jcell_index value)))

(set jstatic_pointCircularPool (fn jstatic_pointCircularPool []
  (when (= jcell_pointCircularPool :jnone) (set jcell_pointCircularPool (GPointCircularPool/jnew_1 40)))
  jcell_pointCircularPool))
(set jsetstatic_pointCircularPool (fn jsetstatic_pointCircularPool [value] (set jcell_pointCircularPool value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GestureOnlyMotionRecognizer" :f_motionGestureRecognizer nil :f_id 0} jproto))
    
    
    (JR/superInit this (MotionRecognizer/jnew_0))
        (set (this :f_id) (do (def jold (jstatic_index)) (set jcell_index (JR/i32 (+ (jstatic_index) 1))) jold))
        (set (this :f_motionGestureRecognizer) (MotionGestureRecognizer/jnew_1 (this :f_id)))
    this))
    
(set jm_processStartMotionEvent (fn jm_processStartMotionEvent [this _x _y _deviceId _modifiers]
        (var _point (JR/className (jstatic_pointCircularPool)))
        (:jm_setX _point _x)
        (:jm_setY _point _y)
        (:jm_processPressedMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))
    
(set jm_processEndMotionEvent (fn jm_processEndMotionEvent [this _x _y _deviceId _modifiers]
        (var _point (JR/className (jstatic_pointCircularPool)))
        (:jm_setX _point _x)
        (:jm_setY _point _y)
        (:jm_processReleasedMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))
    
(set jm_processDraggedMotionEvent (fn jm_processDraggedMotionEvent [this _x _y _deviceId _modifiers]
        (var _point (JR/className (jstatic_pointCircularPool)))
        (:jm_setX _point _x)
        (:jm_setY _point _y)
        (:jm_processDraggedMotionEvent (this :f_motionGestureRecognizer) _point _deviceId _modifiers)))

(set jproto (table/setproto @{:jm_processStartMotionEvent jm_processStartMotionEvent :jm_processEndMotionEvent jm_processEndMotionEvent :jm_processDraggedMotionEvent jm_processDraggedMotionEvent} MotionRecognizer/jproto))


