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
(defn- Line/jnew_2 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Line" "jnew_2" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- MotionGestureConfigurationFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" "jm_getInstance" args))
(defn- BasicMotionGesturesHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" "jm_getInstance" args))
(defn- MotionEventCircularPool/jm_createPool [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/observer/MotionEventCircularPool" "jm_createPool" args))
(defn- MovedMotionGesturesHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler" "jm_getInstance" args))
(defn- ScrolledMotionGesturesHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- J2SEMath/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/J2SEMath" "jm_getInstance" args))
(defn- BasicEventHandler/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "./TouchMotionGestureFactory" "jm_getInstance" args))

# Java class MotionGestureRecognizer
(var jproto nil)
(var jnew_1 nil)
(var jm_processPressedMotionEvent nil)
(var jm_processReleasedMotionEvent nil)
(var jm_processDraggedMotionEvent nil)
(var jm_processMovedMotionEvent nil)
(var jm_processScrolledMotionEvent nil)
(var jm_getMotionGesturesHandler nil)

    
(set jnew_1 (fn jnew_1 [_id]
    (var this (table/setproto @{:jclass "MotionGestureRecognizer" :f_logUtil nil :f_j2seMath nil :f_origin nil :f_previous nil :f_intermediate nil :f_line nil :f_motionGesturesHandler nil :f_movedMotionGesturesHandler nil :f_scrolledMotionGesturesHandler nil :f_motionEventCircularPool nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_j2seMath (J2SEMath/jm_getInstance))
    (put this :f_origin ((PointFactory/jm_getInstance) :f_ZERO_ZERO))
    (put this :f_previous (this :f_origin))
    (put this :f_intermediate (this :f_origin))
    (put this :f_line (Line/jnew_2 (this :f_origin) (this :f_origin)))
    
    
    
    
        (set (this :f_motionEventCircularPool) (MotionEventCircularPool/jm_createPool _id))
        (var _motionGesturesHandler (BasicEventHandler/jnew_0))
        (var _movedMotionGesturesHandler _motionGesturesHandler)
        (var _scrolledMotionGesturesHandler _motionGesturesHandler)
        (try
            (do
            (set _motionGesturesHandler (BasicMotionGesturesHandler/jm_getInstance))
            (set _movedMotionGesturesHandler (MovedMotionGesturesHandler/jm_getInstance))
            (set _scrolledMotionGesturesHandler (ScrolledMotionGesturesHandler/jm_getInstance)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CONSTRUCTOR) _e))))
        (set (this :f_motionGesturesHandler) _motionGesturesHandler)
        (set (this :f_movedMotionGesturesHandler) _movedMotionGesturesHandler)
        (set (this :f_scrolledMotionGesturesHandler) _scrolledMotionGesturesHandler)
    this))
    
(set jm_processPressedMotionEvent (fn jm_processPressedMotionEvent [this _current _deviceId _button]
    (label jreturn
        (set (this :f_intermediate) (this :f_origin))
        (set (this :f_previous) (this :f_origin))
        (var _event (:jm_getInstance (this :f_motionEventCircularPool) ((TouchMotionGestureFactory/jm_getInstance) :f_PRESSED)))
        (:jm_setPreviousPoint _event (this :f_previous))
        (:jm_setCurrentPoint _event _current)
        (:jm_fireEvent (this :f_motionGesturesHandler) _event)
        (return jreturn true))))
    
(set jm_processReleasedMotionEvent (fn jm_processReleasedMotionEvent [this _current _deviceId _button]
    (label jreturn
        (var _event (:jm_getInstance (this :f_motionEventCircularPool) ((TouchMotionGestureFactory/jm_getInstance) :f_RELEASED)))
        (:jm_setPreviousPoint _event (this :f_previous))
        (:jm_setCurrentPoint _event _current)
        (:jm_fireEvent (this :f_motionGesturesHandler) _event)
        (return jreturn true))))
    
(set jm_processDraggedMotionEvent (fn jm_processDraggedMotionEvent [this _current _deviceId _buttonMask]
    (label jreturn
        (if (or (= (this :f_previous) (this :f_origin)) (= (this :f_intermediate) (this :f_origin)))
            (do
            (set (this :f_previous) _current)
            (set (this :f_intermediate) _current)
            (return jreturn)))
        (:jm_setP1 (this :f_line) (this :f_previous))
        (:jm_setP2 (this :f_line) _current)
        (var _minimumMotionGesture (:jm_getMinimumMotionGesture (MotionGestureConfigurationFactory/jm_getInstance)))
        (if (and (< (:jm_abs (this :f_j2seMath) (:jm_getDeltaX (this :f_line))) _minimumMotionGesture) (< (:jm_abs (this :f_j2seMath) (:jm_getDeltaY (this :f_line))) _minimumMotionGesture))
            (do
            (set (this :f_intermediate) _current)
            (return jreturn)))
        (var _gradient (:jm_getGradient (this :f_line)))
        (var _absGradient (:jm_abs (this :f_j2seMath) _gradient))
        (var _conf (MotionGestureConfigurationFactory/jm_getInstance))
        (var _touchMotionGestureFactory (TouchMotionGestureFactory/jm_getInstance))
        (var _newMotionGesture (_touchMotionGestureFactory :f_NO_MOTION))
        (var _diagonalToleranceHigher 12.0)
        (var _diagonalToleranceLower 12.0)
        (if (:jm_isDiagonalMotionGestureAllowed _conf)
            (do
            (set _diagonalToleranceHigher (JR/i32 (- 90 (:jm_getDiagonalTolerance _conf))))
            (set _diagonalToleranceLower (:jm_getDiagonalTolerance _conf))))
        (if (> _absGradient (math/tan (* _diagonalToleranceHigher (/ math/pi 180))))
            (do
            (if (> (:jm_getDeltaY (this :f_line)) 0)
                (do
                (set _newMotionGesture (_touchMotionGestureFactory :f_UP)))
                (do
                (set _newMotionGesture (_touchMotionGestureFactory :f_DOWN)))))
            (do
            (if (< _absGradient (math/tan (* _diagonalToleranceLower (/ math/pi 180))))
                (do
                (if (> (:jm_getDeltaX (this :f_line)) 0)
                    (do
                    (set _newMotionGesture (_touchMotionGestureFactory :f_LEFT)))
                    (do
                    (set _newMotionGesture (_touchMotionGestureFactory :f_RIGHT)))))
                (do
                (if (> _gradient 0)
                    (do
                    (if (> (:jm_getDeltaX (this :f_line)) 0)
                        (do
                        (set _newMotionGesture (_touchMotionGestureFactory :f_DIAGONAL_UP_LEFT)))
                        (do
                        (set _newMotionGesture (_touchMotionGestureFactory :f_DIAGONAL_DOWN_RIGHT)))))
                    (do
                    (if (> (:jm_getDeltaX (this :f_line)) 0)
                        (do
                        (set _newMotionGesture (_touchMotionGestureFactory :f_DIAGONAL_DOWN_LEFT)))
                        (do
                        (set _newMotionGesture (_touchMotionGestureFactory :f_DIAGONAL_UP_RIGHT))))))))))
        (set (this :f_previous) _current)
        (set (this :f_intermediate) _current)
        (var _event (:jm_getInstance (this :f_motionEventCircularPool) _newMotionGesture))
        (:jm_setPreviousPoint _event (this :f_previous))
        (:jm_setCurrentPoint _event _current)
        (:jm_fireEvent (this :f_motionGesturesHandler) _event)
        (return jreturn))))
    
(set jm_processMovedMotionEvent (fn jm_processMovedMotionEvent [this _current _deviceId _button]
    (label jreturn
        (var _event (:jm_getInstance (this :f_motionEventCircularPool) ((TouchMotionGestureFactory/jm_getInstance) :f_NO_MOTION)))
        (:jm_setPreviousPoint _event (this :f_previous))
        (:jm_setCurrentPoint _event _current)
        (:jm_fireEvent (this :f_movedMotionGesturesHandler) _event)
        (return jreturn true))))
    
(set jm_processScrolledMotionEvent (fn jm_processScrolledMotionEvent [this _current _deviceId _button]
    (label jreturn
        (var _touchMotionGestureFactory (TouchMotionGestureFactory/jm_getInstance))
        (var _newMotionGesture (_touchMotionGestureFactory :f_NO_MOTION))
        (if (> _button 0)
            (do
            (set _newMotionGesture (_touchMotionGestureFactory :f_SCROLL_UP)))
            (if (< _button 0)
            (do
            (set _newMotionGesture (_touchMotionGestureFactory :f_SCROLL_DOWN)))))
        (var _event (:jm_getInstance (this :f_motionEventCircularPool) _newMotionGesture))
        (:jm_setPreviousPoint _event (this :f_previous))
        (:jm_setCurrentPoint _event _current)
        (:jm_fireEvent (this :f_scrolledMotionGesturesHandler) _event)
        (return jreturn true))))
    
(set jm_getMotionGesturesHandler (fn jm_getMotionGesturesHandler [this]
    (label jreturn
        (return jreturn (this :f_motionGesturesHandler)))))

(set jproto @{:jm_processPressedMotionEvent jm_processPressedMotionEvent :jm_processReleasedMotionEvent jm_processReleasedMotionEvent :jm_processDraggedMotionEvent jm_processDraggedMotionEvent :jm_processMovedMotionEvent jm_processMovedMotionEvent :jm_processScrolledMotionEvent jm_processScrolledMotionEvent :jm_getMotionGesturesHandler jm_getMotionGesturesHandler})


