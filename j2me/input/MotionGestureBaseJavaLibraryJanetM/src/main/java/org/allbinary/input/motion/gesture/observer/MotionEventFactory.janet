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
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- MotionGestureEvent/jnew_3 [& args] (JR/call jfile "./MotionGestureEvent" "jnew_3" args))

# Java class MotionEventFactory
(var jproto nil)
(var jcell_index :jnone)
(var jstatic_index nil)
(var jsetstatic_index nil)
(var jnew_2 nil)
(var jm_getInstance nil)

(set jstatic_index (fn jstatic_index []
  (when (= jcell_index :jnone) (set jcell_index 0))
  jcell_index))
(set jsetstatic_index (fn jsetstatic_index [value] (set jcell_index value)))

    
(set jnew_2 (fn jnew_2 [_source _id]
    (var this (table/setproto @{:jclass "MotionEventFactory" :f_source nil :f_id 0} jproto))
    
    
        (set (this :f_source) _source)
        (set (this :f_id) _id)
        (set jcell_index (JR/className ((TouchMotionGestureFactory/jm_getInstance) :f_LAST_MOTION)))
    this))
    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (var _inputFactory (InputFactory/jm_getInstance))
        (var _input (:jm_getInstanceById _inputFactory (do (def jold (jstatic_index)) (set jcell_index (JR/i32 (+ (jstatic_index) 1))) jold)))
        (if (= _input (_inputFactory :f_NO_INPUT))
            (do
            (return jreturn (MotionGestureEvent/jnew_3 (this :f_source) (this :f_id) ((TouchMotionGestureFactory/jm_getInstance) :f_NO_MOTION))))
            (do
            (return jreturn (MotionGestureEvent/jnew_3 (this :f_source) (this :f_id) _input)))))))

(set jproto @{:jm_getInstance jm_getInstance})


