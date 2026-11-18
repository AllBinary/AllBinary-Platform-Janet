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
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- MotionGestureConfigurationFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" "jm_getInstance" args))
(defn- DiagonalDownLeftTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- DiagonalDownRightTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- DiagonalUpLeftTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- DiagonalUpRightTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- DownTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- LeftTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- ReleaseTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- RightTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- UpTouchInputToGameKeyEventAction/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class CompleteMotionGestureInputToGameMotionGestureInput
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CompleteMotionGestureInputToGameMotionGestureInput" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (try
            (do
            (PreLogUtil/jm_put "Compound Motion Gestures" this (_commonStrings :f_INIT))
            (var _motionGestureConfiguration (MotionGestureConfigurationFactory/jm_getInstance))
            (var _touchMotionGestureFactory (TouchMotionGestureFactory/jm_getInstance))
            (var _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_DIAGONAL_DOWN_LEFT))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (DiagonalDownLeftTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_DIAGONAL_DOWN_RIGHT))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (DiagonalDownRightTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_DIAGONAL_UP_LEFT))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (DiagonalUpLeftTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_DIAGONAL_UP_RIGHT))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (DiagonalUpRightTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_LEFT))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (LeftTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_RIGHT))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (RightTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_DOWN))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (DownTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_UP))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (UpTouchInputToGameKeyEventAction/jm_getInstance))
            (set _list (BasicArrayListD/jnew_0))
            (:jm_add _list (_touchMotionGestureFactory :f_RELEASED))
            (:jm_addMotionGestureAction _motionGestureConfiguration _list (ReleaseTouchInputToGameKeyEventAction/jm_getInstance)))
            ([_e] (do
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_INIT) _e))))))

(set jproto @{:jm_init jm_init})


