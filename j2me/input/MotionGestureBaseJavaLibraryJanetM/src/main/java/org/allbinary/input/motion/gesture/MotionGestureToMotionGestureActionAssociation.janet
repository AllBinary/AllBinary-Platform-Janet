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
# package org.allbinary.input.motion.gesture

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MotionGestureToMotionGestureActionAssociation
(var jproto nil)
(var jnew_2 nil)
(var jm_getMotionGesture nil)
(var jm_setMotionGestures nil)
(var jm_getCommandAction nil)
(var jm_setMotionGestureAction nil)
(var jm_isMotionGestureArrayEquals nil)

    
(set jnew_2 (fn jnew_2 [_list _commandAction]
    (var this (table/setproto @{:jclass "MotionGestureToMotionGestureActionAssociation" :f_list nil :f_motionGestureAction nil} jproto))
    
    
        (set (this :f_list) _list)
        (set (this :f_motionGestureAction) _commandAction)
    this))
    
(set jm_getMotionGesture (fn jm_getMotionGesture [this]
    (label jreturn
        (return jreturn (this :f_list)))))
    
(set jm_setMotionGestures (fn jm_setMotionGestures [this _list]
        (set (this :f_list) _list)))
    
(set jm_getCommandAction (fn jm_getCommandAction [this]
    (label jreturn
        (return jreturn (this :f_motionGestureAction)))))
    
(set jm_setMotionGestureAction (fn jm_setMotionGestureAction [this _commandAction]
        (set (this :f_motionGestureAction) _commandAction)))
    
(set jm_isMotionGestureArrayEquals (fn jm_isMotionGestureArrayEquals [this _aList]
    (label jreturn
        (var _size (:jm_size _aList))
        (if (not= (:jm_size (this :f_list)) _size)
            (do
            (return jreturn false)))
        (do
            (var _i (JR/i32 (- _size 1)))
            (while (>= _i 0)
                (do
            (if (not= ((_aList :f_objectArray) _i) (((this :f_list) :f_objectArray) _i))
                (do
                (return jreturn false))))
                (do (set _i (JR/i32 (- _i 1))))))
        (return jreturn true))))

(set jproto @{:jm_getMotionGesture jm_getMotionGesture :jm_setMotionGestures jm_setMotionGestures :jm_getCommandAction jm_getCommandAction :jm_setMotionGestureAction jm_setMotionGestureAction :jm_isMotionGestureArrayEquals jm_isMotionGestureArrayEquals})


