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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/graphics/PointFactory" "jm_getInstance_0" args))
(defn- BasicGraphicsPipeline/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/graphics/pipeline/BasicGraphicsPipeline" "jnew_1" args))
(defn- NullUtil/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance_0" args))
(defn- LogUtil/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance_0" args))
(defn- AngleFactory/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/math/AngleFactory" "jm_getInstance_0" args))
(defn- CommonStrings/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance_0" args))
(defn- BasicArrayListS/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListS" "jnew_1" args))
(defn- VectorAnimationUtil/jm_getInstance_0 [& args] (JR/call jfile "./VectorAnimationUtil" "jm_getInstance_0" args))

# Java class VectorRotationGenerator
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstance_1 nil)
(var jm_getInstanceFrames nil)
(var jm_getListAtAngle nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VectorRotationGenerator" :f_logUtil nil :f_vectorAnimationUtil nil :f_angleFactory nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance_0))
    (put this :f_vectorAnimationUtil (VectorAnimationUtil/jm_getInstance_0))
    (put this :f_angleFactory (AngleFactory/jm_getInstance_0))
    this))
    
(set jm_getInstance_1 (fn jm_getInstance_1 [this _vectorRotationInfo]
    (label jreturn
        (return jreturn (:jm_getInstanceFrames this (:jm_getWidth _vectorRotationInfo) (:jm_getHeight _vectorRotationInfo) (:jm_getPoints _vectorRotationInfo) (:jm_getTotalFrames _vectorRotationInfo))))))
    
(set jm_getInstanceFrames (fn jm_getInstanceFrames [this _width _height _points _frames]
    (label jreturn
        (try
            (do
            (var _totalAngle ((this :f_angleFactory) :f_TOTAL_ANGLE))
            (var _angleIncrement (JR/idiv _totalAngle _frames))
            (var _pointsBasicArrayList (BasicArrayListS/jnew_1 (JR/idiv _totalAngle _angleIncrement)))
            (var _pointBasicArrayList (BasicArrayListS/jnew_1 (length _points)))
            (var _pointFactory (PointFactory/jm_getInstance_0))
            (var _size (length _points))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (:jm_add _pointBasicArrayList (:jm_createXY _pointFactory ((_points _index) 0) ((_points _index) 1))))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (var _index 0)
            (do
                (while (< _index _totalAngle)
                    (do
                (:jm_add _pointsBasicArrayList (:jm_getListAtAngle this _width _height _pointBasicArrayList (:jm_getAt (this :f_angleFactory) _index)))
                (set _index (JR/i32 (+ _index _angleIncrement))))))
            (var _newPoints (:jm_toAnimationArrayFromListOfPointListWithPointsPerFrame (this :f_vectorAnimationUtil) _pointsBasicArrayList (:jm_size _pointBasicArrayList)))
            (return jreturn _newPoints))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance_0))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET_INSTANCE) _e)
            (return jreturn ((NullUtil/jm_getInstance_0) :f_NULL_INT_ARRAY_ARRAY_ARRAY))))))))
    
(set jm_getListAtAngle (fn jm_getListAtAngle [this _width _height _pointBasicArrayList _angle]
    (label jreturn
        (var _graphicsPipe (BasicGraphicsPipeline/jnew_1 _pointBasicArrayList))
        (:jm_createMatrix _graphicsPipe)
        (:jm_translate _graphicsPipe (JR/i32 (- (brshift _width 1))) (JR/i32 (- (brshift _height 1))))
        (:jm_rotateToAngle _graphicsPipe _angle)
        (:jm_translate _graphicsPipe (brshift _width 1) (brshift _height 1))
        (return jreturn (:jm_getMatrix _graphicsPipe)))))

(set jproto @{:jm_getInstance_1 jm_getInstance_1 :jm_getInstanceFrames jm_getInstanceFrames :jm_getListAtAngle jm_getListAtAngle})


