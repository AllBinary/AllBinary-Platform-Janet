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
(defn- RandomRotationFactory/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/graphics/pipeline/RandomRotationFactory" "jm_getInstance_0" args))
(defn- RandomTranslation/jm_getInstance_2 [& args] (JR/call jfile "../../../org/allbinary/graphics/pipeline/RandomTranslation" "jm_getInstance_2" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListS/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListS" "jnew_1" args))
(defn- VectorExplosionType/jnew_0 [& args] (JR/call jfile "./VectorExplosionType" "jnew_0" args))
(defn- VectorAnimationUtil/jm_getInstance_0 [& args] (JR/call jfile "./VectorAnimationUtil" "jm_getInstance_0" args))

# Java class VectorExplosionGenerator
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_createList nil)
(var jm_getInstance_3 nil)
(var jm_getInstanceStartFrame nil)
(var jm_createListFromPoints nil)
(var jm_createPointsBasicArrayList nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VectorExplosionGenerator" :f_RANDOM nil :f_ROTATION nil :f_vectorAnimationUtil nil :f_randomRotationFactory nil} jproto))
    (put this :f_RANDOM (VectorExplosionType/jnew_0))
    (put this :f_ROTATION (VectorExplosionType/jnew_0))
    (put this :f_vectorAnimationUtil (VectorAnimationUtil/jm_getInstance_0))
    (put this :f_randomRotationFactory (RandomRotationFactory/jm_getInstance_0))
    this))
    
(set jm_createList (fn jm_createList [this _list _howMuch _type]
    (label jreturn
        (var _point nil)
        (var _size (:jm_size _list))
        (var _points (seq [jindex1 :range [0 _size]] (array/new-filled 2 0)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _point ((_list :f_objectArray) _index))
            (set ((_points _index) 0) (:jm_getX _point))
            (set ((_points _index) 1) (:jm_getY _point)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_createListFromPoints this _list _points _howMuch _type)))))
    
(set jm_getInstance_3 (fn jm_getInstance_3 [this _points _howMuch _type]
    (label jreturn
        (var _pointsBasicArrayList (:jm_getInstanceStartFrame this _points _howMuch _type true))
        (var _tempBasicArrayList ((_pointsBasicArrayList :f_objectArray) 0))
        (var _newPoints (:jm_toAnimationArrayFromListOfPointListWithPointsPerFrame (this :f_vectorAnimationUtil) _pointsBasicArrayList (:jm_size _tempBasicArrayList)))
        (return jreturn _newPoints))))
    
(set jm_getInstanceStartFrame (fn jm_getInstanceStartFrame [this _points _howMuch _type _startFrame]
    (label jreturn
        (try
            (do
            (var _pointsBasicArrayList (BasicArrayListS/jnew_1 _howMuch))
            (:jm_add _pointsBasicArrayList (:jm_createPointsBasicArrayList this _points))
            (var _frameIndex 0)
            (var _tempBasicArrayList nil)
            (var _pointBasicArrayList nil)
            (do
                (while (< _frameIndex _howMuch)
                    (do
                (set _tempBasicArrayList ((_pointsBasicArrayList :f_objectArray) _frameIndex))
                (set _pointBasicArrayList (:jm_createListFromPoints this _tempBasicArrayList _points _howMuch _type))
                (:jm_add _pointsBasicArrayList _pointBasicArrayList)
                (set _frameIndex (JR/i32 (+ _frameIndex 1))))))
            (if (not _startFrame)
                (do
                (:jm_removeAt _pointsBasicArrayList 0)))
            (return jreturn _pointsBasicArrayList))
            ([_e] (do
            (error _e)))))))
    
(set jm_createListFromPoints (fn jm_createListFromPoints [this _tempBasicArrayList _points _howMuch _type]
    (label jreturn
        (var _index 0)
        (var _pointBasicArrayList (BasicArrayListD/jnew_0))
        (var _sectionBasicArrayList nil)
        (do
            (var jbreak false)
            (while (and (not jbreak) (< _index (length _points)))
                (label jcontinue
            (set _sectionBasicArrayList (BasicArrayListD/jnew_0))
            (do
                (var jbreak false)
                (while (and (not jbreak) (not= ((_points _index) 0) 1000))
                    (label jcontinue
                (:jm_add _sectionBasicArrayList ((_tempBasicArrayList :f_objectArray) _index))
                (set _index (JR/i32 (+ _index 1)))
                (if (>= _index (length _points))
                    (do
                    (do (set jbreak true) (return jcontinue)))))))
            (set _sectionBasicArrayList (RandomTranslation/jm_getInstance_2 _sectionBasicArrayList _howMuch))
            (if (= _type (this :f_ROTATION))
                (do
                (set _sectionBasicArrayList (:jm_getInstanceList (this :f_randomRotationFactory) _sectionBasicArrayList _howMuch))))
            (var _size (:jm_size _sectionBasicArrayList))
            (do
                (var _index2 0)
                (while (< _index2 _size)
                    (do
                (:jm_add _pointBasicArrayList ((_sectionBasicArrayList :f_objectArray) _index2)))
                    (do (set _index2 (JR/i32 (+ _index2 1))))))
            (if (>= _index (length _points))
                (do
                (do (set jbreak true) (return jcontinue)))
                (if (= ((_points _index) 0) 1000)
                (do
                (:jm_add _pointBasicArrayList ((_tempBasicArrayList :f_objectArray) _index))
                (set _index (JR/i32 (+ _index 1)))))))))
        (return jreturn _pointBasicArrayList))))
    
(set jm_createPointsBasicArrayList (fn jm_createPointsBasicArrayList [this _points]
    (label jreturn
        (if (= (length _points) 0)
            (do
            (error (JR/newException "Exception" "Not Points Provided"))))
        (var _firstPointBasicArrayList (BasicArrayListS/jnew_1 (length _points)))
        (var _pointFactory (PointFactory/jm_getInstance_0))
        (do
            (var _index 0)
            (while (< _index (length _points))
                (do
            (:jm_add _firstPointBasicArrayList (:jm_createXY _pointFactory ((_points _index) 0) ((_points _index) 1))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _firstPointBasicArrayList))))

(set jproto @{:jm_createList jm_createList :jm_getInstance_3 jm_getInstance_3 :jm_getInstanceStartFrame jm_getInstanceStartFrame :jm_createListFromPoints jm_createListFromPoints :jm_createPointsBasicArrayList jm_createPointsBasicArrayList})


