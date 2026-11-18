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

# Java class VectorAnimationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_toAnimationArrayFromListOfPointListWithPointsPerFrame nil)
(var jm_toAnimationArrayFromListOfPointList nil)
(var jm_toFrameArrayFromPointBasicArrayList nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VectorAnimationUtil"} jproto))
    this))
    
(set jm_toAnimationArrayFromListOfPointListWithPointsPerFrame (fn jm_toAnimationArrayFromListOfPointListWithPointsPerFrame [this _vector _pointsPerFrame]
    (label jreturn
        (var _size (:jm_size _vector))
        (var _points (seq [jindex1 :range [0 _size]] (seq [jindex2 :range [0 _pointsPerFrame]] (array/new-filled 2 0))))
        (var _nextBasicArrayList nil)
        (var _framePoints nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _nextBasicArrayList ((_vector :f_objectArray) _index))
            (set _framePoints (:jm_toFrameArrayFromPointBasicArrayList this _nextBasicArrayList))
            (do
                (var _pointIndex 0)
                (while (< _pointIndex (length _framePoints))
                    (do
                (set (((_points _index) _pointIndex) 0) ((_framePoints _pointIndex) 0))
                (set (((_points _index) _pointIndex) 1) ((_framePoints _pointIndex) 1)))
                    (do (set _pointIndex (JR/i32 (+ _pointIndex 1)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _points))))
    
(set jm_toAnimationArrayFromListOfPointList (fn jm_toAnimationArrayFromListOfPointList [this _vector]
    (label jreturn
        (var _size (:jm_size _vector))
        (var _points (seq [jindex1 :range [0 _size]] (seq [jindex2 :range [0 0]] (array/new-filled 0 0))))
        (var _nextBasicArrayList nil)
        (var _framePoints nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _nextBasicArrayList ((_vector :f_objectArray) _index))
            (set _framePoints (:jm_toFrameArrayFromPointBasicArrayList this _nextBasicArrayList))
            (set (_points _index) (seq [jindex1 :range [0 (length _framePoints)]] (array/new-filled 2 0)))
            (do
                (var _pointIndex 0)
                (while (< _pointIndex (length _framePoints))
                    (do
                (set (((_points _index) _pointIndex) 0) ((_framePoints _pointIndex) 0))
                (set (((_points _index) _pointIndex) 1) ((_framePoints _pointIndex) 1)))
                    (do (set _pointIndex (JR/i32 (+ _pointIndex 1)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _points))))
    
(set jm_toFrameArrayFromPointBasicArrayList (fn jm_toFrameArrayFromPointBasicArrayList [this _list]
    (label jreturn
        (var _points (seq [jindex1 :range [0 (:jm_size _list)]] (array/new-filled 2 0)))
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _nextPoint ((_list :f_objectArray) _index))
            (set ((_points _index) 0) (:jm_getX _nextPoint))
            (set ((_points _index) 1) (:jm_getY _nextPoint)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _points))))

(set jproto @{:jm_toAnimationArrayFromListOfPointListWithPointsPerFrame jm_toAnimationArrayFromListOfPointListWithPointsPerFrame :jm_toAnimationArrayFromListOfPointList jm_toAnimationArrayFromListOfPointList :jm_toFrameArrayFromPointBasicArrayList jm_toFrameArrayFromPointBasicArrayList})


