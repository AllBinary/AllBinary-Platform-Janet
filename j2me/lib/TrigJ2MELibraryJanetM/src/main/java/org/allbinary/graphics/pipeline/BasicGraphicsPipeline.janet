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
# package org.allbinary.graphics.pipeline

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- NoDecimalTrigTable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/NoDecimalTrigTable" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class BasicGraphicsPipeline
(var jproto nil)
(var jnew_1 nil)
(var jm_setInitMatrix nil)
(var jm_createMatrix nil)
(var jm_translate nil)
(var jm_rotateToAngle nil)
(var jm_rotate nil)
(var jm_mirror nil)
(var jm_getMatrix nil)

    
(set jnew_1 (fn jnew_1 [_points]
    (var this (table/setproto @{:jclass "BasicGraphicsPipeline" :f_pointBasicArrayList nil :f_noDecimalTrigTable nil} jproto))
    
    (put this :f_noDecimalTrigTable (NoDecimalTrigTable/jm_getInstance))
        (set (this :f_pointBasicArrayList) _points)
    this))
    
(set jm_setInitMatrix (fn jm_setInitMatrix [this _points]
        (set (this :f_pointBasicArrayList) _points)))
    
(set jm_createMatrix (fn jm_createMatrix [this]
    nil))
    
(set jm_translate (fn jm_translate [this _x _y]
        (var _newBasicArrayList (BasicArrayListD/jnew_0))
        (var _size (:jm_size (this :f_pointBasicArrayList)))
        (var _pointFactory (PointFactory/jm_getInstance))
        (var _secondPoint nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _secondPoint (((this :f_pointBasicArrayList) :f_objectArray) _index))
            (if (not= (:jm_getX _secondPoint) 1000)
                (do
                (:jm_add _newBasicArrayList (:jm_createXY _pointFactory (JR/i32 (+ (:jm_getX _secondPoint) _x)) (JR/i32 (+ (:jm_getY _secondPoint) _y)))))
                (do
                (:jm_add _newBasicArrayList _secondPoint))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_pointBasicArrayList) _newBasicArrayList)))
    
(set jm_rotateToAngle (fn jm_rotateToAngle [this _angle]
        (:jm_rotate this (:jm_getValue _angle))))
    
(set jm_rotate (fn jm_rotate [this _angle]
        (var _newBasicArrayList (BasicArrayListD/jnew_0))
        (var _secondPoint nil)
        (var _y 0)
        (var _secondX 0)
        (var _secondY 0)
        (var _point nil)
        (var _pointFactory (PointFactory/jm_getInstance))
        (var _size (:jm_size (this :f_pointBasicArrayList)))
        (var _sin 0)
        (var _cos 0)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _secondPoint (((this :f_pointBasicArrayList) :f_objectArray) _index))
            (if (not= (:jm_getX _secondPoint) 1000)
                (do
                (set _sin (:jm_sin (this :f_noDecimalTrigTable) _angle))
                (set _cos (:jm_cos (this :f_noDecimalTrigTable) _angle))
                (set _y (* (:jm_getY _secondPoint) _sin))
                (set _secondX (- (* (:jm_getX _secondPoint) _cos) _y))
                (set _secondY (JR/i32 (+ (* (:jm_getX _secondPoint) _sin) (* (:jm_getY _secondPoint) _cos))))
                (set _point (:jm_createXY _pointFactory (JR/idiv (JR/i32 _secondX) 10000) (JR/idiv (JR/i32 _secondY) 10000)))
                (:jm_add _newBasicArrayList _point))
                (do
                (:jm_add _newBasicArrayList _secondPoint))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_pointBasicArrayList) _newBasicArrayList)))
    
(set jm_mirror (fn jm_mirror [this _width]
        (var _pointFactory (PointFactory/jm_getInstance))
        (var _halfWidth (brshift _width 1))
        (var _newBasicArrayList (BasicArrayListD/jnew_0))
        (var _secondPoint nil)
        (var _newX 0)
        (var _point nil)
        (var _size (:jm_size (this :f_pointBasicArrayList)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _secondPoint (((this :f_pointBasicArrayList) :f_objectArray) _index))
            (if (not= (:jm_getX _secondPoint) 1000)
                (do
                (set _newX 0)
                (if (> (:jm_getX _secondPoint) _halfWidth)
                    (do
                    (set _newX (JR/i32 (- _halfWidth (JR/i32 (- (:jm_getX _secondPoint) _halfWidth))))))
                    (do
                    (set _newX (JR/i32 (+ _halfWidth (JR/i32 (- _halfWidth (:jm_getX _secondPoint))))))))
                (set _point (:jm_createXY _pointFactory _newX (:jm_getY _secondPoint)))
                (:jm_add _newBasicArrayList _point))
                (do
                (:jm_add _newBasicArrayList _secondPoint))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_pointBasicArrayList) _newBasicArrayList)))
    
(set jm_getMatrix (fn jm_getMatrix [this]
    (label jreturn
        (return jreturn (this :f_pointBasicArrayList)))))

(set jproto @{:jm_setInitMatrix jm_setInitMatrix :jm_createMatrix jm_createMatrix :jm_translate jm_translate :jm_rotateToAngle jm_rotateToAngle :jm_rotate jm_rotate :jm_mirror jm_mirror :jm_getMatrix jm_getMatrix})


