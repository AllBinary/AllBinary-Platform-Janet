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
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))

# Java class MotionGestureEvent
(var jproto nil)
(var jcell_PREVIOUS :jnone)
(var jstatic_PREVIOUS nil)
(var jsetstatic_PREVIOUS nil)
(var jcell_HASHCODE :jnone)
(var jstatic_HASHCODE nil)
(var jsetstatic_HASHCODE nil)
(var jnew_3 nil)
(var jm_getMotionGesture nil)
(var jm_setMotionGesture nil)
(var jm_getPreviousPoint nil)
(var jm_setPreviousPoint nil)
(var jm_getCurrentPoint nil)
(var jm_setCurrentPoint nil)
(var jm_toString nil)
(var jm_getId nil)

(set jstatic_PREVIOUS (fn jstatic_PREVIOUS []
  (when (= jcell_PREVIOUS :jnone) (set jcell_PREVIOUS " Previous: "))
  jcell_PREVIOUS))
(set jsetstatic_PREVIOUS (fn jsetstatic_PREVIOUS [value] (set jcell_PREVIOUS value)))

(set jstatic_HASHCODE (fn jstatic_HASHCODE []
  (when (= jcell_HASHCODE :jnone) (set jcell_HASHCODE " hashcode: "))
  jcell_HASHCODE))
(set jsetstatic_HASHCODE (fn jsetstatic_HASHCODE [value] (set jcell_HASHCODE value)))

    
(set jnew_3 (fn jnew_3 [_source _id _motionGesture]
    (var this (table/setproto @{:jclass "MotionGestureEvent" :f_motionGesture nil :f_id 0 :f_previousPoint nil :f_currentPoint nil :f_commonLabels nil} jproto))
    (put this :f_motionGesture ((TouchMotionGestureFactory/jm_getInstance) :f_NO_MOTION))
    
    (put this :f_previousPoint ((PointFactory/jm_getInstance) :f_ZERO_ZERO))
    (put this :f_currentPoint ((PointFactory/jm_getInstance) :f_ZERO_ZERO))
    (put this :f_commonLabels (CommonLabels/jm_getInstance))
        (JR/superInit this (AllBinaryEventObject/jnew_1 _source))
        (set (this :f_id) _id)
        (:jm_setMotionGesture this _motionGesture)
    this))
    
(set jm_getMotionGesture (fn jm_getMotionGesture [this]
    (label jreturn
        (return jreturn (this :f_motionGesture)))))
    
(set jm_setMotionGesture (fn jm_setMotionGesture [this _motionGesture]
        (set (this :f_motionGesture) _motionGesture)))
    
(set jm_getPreviousPoint (fn jm_getPreviousPoint [this]
    (label jreturn
        (return jreturn (this :f_previousPoint)))))
    
(set jm_setPreviousPoint (fn jm_setPreviousPoint [this _previousPoint]
        (set (this :f_previousPoint) _previousPoint)))
    
(set jm_getCurrentPoint (fn jm_getCurrentPoint [this]
    (label jreturn
        (return jreturn (this :f_currentPoint)))))
    
(set jm_setCurrentPoint (fn jm_setCurrentPoint [this _currentPoint]
        (set (this :f_currentPoint) _currentPoint)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _stringUtil (StringUtil/jm_getInstance))
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_motionGesture)))
        (:jm_append _stringBuffer ((this :f_commonLabels) :f_CURRENT))
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_currentPoint)))
        (:jm_append _stringBuffer (jstatic_PREVIOUS))
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_previousPoint)))
        (:jm_append _stringBuffer (jstatic_HASHCODE))
        (:jm_appendint _stringBuffer (:jm_hashCode_1 (TsUtil/jm_getInstance) this))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (this :f_id)))))

(set jproto (table/setproto @{:jm_getMotionGesture jm_getMotionGesture :jm_setMotionGesture jm_setMotionGesture :jm_getPreviousPoint jm_getPreviousPoint :jm_setPreviousPoint jm_setPreviousPoint :jm_getCurrentPoint jm_getCurrentPoint :jm_setCurrentPoint jm_setCurrentPoint :jm_toString jm_toString :jm_getId jm_getId} AllBinaryEventObject/jproto))


