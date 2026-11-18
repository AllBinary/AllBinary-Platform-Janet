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
(import ./BaseMotionGestureEventListener :as BaseMotionGestureEventListener)

# Java class MotionGestureEventListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onPressedMotionGestureEvent nil)
(var jm_onUpMotionGestureEvent nil)
(var jm_onDownMotionGestureEvent nil)
(var jm_onLeftMotionGestureEvent nil)
(var jm_onRightMotionGestureEvent nil)
(var jm_onDiagonalDownRightMotionGestureEvent nil)
(var jm_onDiagonalDownLeftMotionGestureEvent nil)
(var jm_onDiagonalUpRightMotionGestureEvent nil)
(var jm_onDiagonalUpLeftMotionGestureEvent nil)
(var jm_released nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MotionGestureEventListener"} jproto))
    this))

    
(set jm_onPressedMotionGestureEvent (fn jm_onPressedMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onPressedMotionGestureEvent"))))
    
(set jm_onUpMotionGestureEvent (fn jm_onUpMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onUpMotionGestureEvent"))))
    
(set jm_onDownMotionGestureEvent (fn jm_onDownMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onDownMotionGestureEvent"))))
    
(set jm_onLeftMotionGestureEvent (fn jm_onLeftMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onLeftMotionGestureEvent"))))
    
(set jm_onRightMotionGestureEvent (fn jm_onRightMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onRightMotionGestureEvent"))))
    
(set jm_onDiagonalDownRightMotionGestureEvent (fn jm_onDiagonalDownRightMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onDiagonalDownRightMotionGestureEvent"))))
    
(set jm_onDiagonalDownLeftMotionGestureEvent (fn jm_onDiagonalDownLeftMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onDiagonalDownLeftMotionGestureEvent"))))
    
(set jm_onDiagonalUpRightMotionGestureEvent (fn jm_onDiagonalUpRightMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onDiagonalUpRightMotionGestureEvent"))))
    
(set jm_onDiagonalUpLeftMotionGestureEvent (fn jm_onDiagonalUpLeftMotionGestureEvent [this _ev]
    (error (JR/newException "AbstractMethodError" "onDiagonalUpLeftMotionGestureEvent"))))
    
(set jm_released (fn jm_released [this _ev]
    (error (JR/newException "AbstractMethodError" "released"))))

(set jproto @{:jm_onPressedMotionGestureEvent jm_onPressedMotionGestureEvent :jm_onUpMotionGestureEvent jm_onUpMotionGestureEvent :jm_onDownMotionGestureEvent jm_onDownMotionGestureEvent :jm_onLeftMotionGestureEvent jm_onLeftMotionGestureEvent :jm_onRightMotionGestureEvent jm_onRightMotionGestureEvent :jm_onDiagonalDownRightMotionGestureEvent jm_onDiagonalDownRightMotionGestureEvent :jm_onDiagonalDownLeftMotionGestureEvent jm_onDiagonalDownLeftMotionGestureEvent :jm_onDiagonalUpRightMotionGestureEvent jm_onDiagonalUpRightMotionGestureEvent :jm_onDiagonalUpLeftMotionGestureEvent jm_onDiagonalUpLeftMotionGestureEvent :jm_released jm_released})


