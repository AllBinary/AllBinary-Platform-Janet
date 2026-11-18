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
# package org.allbinary.vector

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PointsUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_adjustXY nil)
(var jm_adjust_2 nil)
(var jm_adjust_3 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PointsUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_adjustXY (fn jm_adjustXY [this _points _x _y]
    (label jreturn
        (var _size (length _points))
        (var _newPoints (seq [jindex1 :range [0 _size]] (seq [jindex2 :range [0 0]] (array/new-filled 0 0))))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _size2 (length (_points _index)))
            (set (_newPoints _index) (seq [jindex1 :range [0 _size2]] (array/new-filled 2 0)))
            (do
                (var _index2 0)
                (while (< _index2 _size2)
                    (do
                (if (not= (((_points _index) _index2) 0) 1000)
                    (do
                    (set (((_newPoints _index) _index2) 0) (JR/i32 (+ (((_points _index) _index2) 0) _x)))
                    (set (((_newPoints _index) _index2) 1) (JR/i32 (+ (((_points _index) _index2) 1) _y))))
                    (do
                    (set (((_newPoints _index) _index2) 0) 1000)
                    (set (((_newPoints _index) _index2) 1) 1000))))
                    (do (set _index2 (JR/i32 (+ _index2 1)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _newPoints))))
    
(set jm_adjust_2 (fn jm_adjust_2 [this _points _both]
    (label jreturn
        (return jreturn (:jm_adjust_3 this _points _both _both)))))
    
(set jm_adjust_3 (fn jm_adjust_3 [this _points _x _y]
    (label jreturn
        (var _newPoints (seq [jindex1 :range [0 (length _points)]] (array/new-filled 2 0)))
        (do
            (var _index2 0)
            (while (< _index2 (length _points))
                (do
            (if (not= ((_points _index2) 0) 1000)
                (do
                (set ((_newPoints _index2) 0) (JR/i32 (+ ((_points _index2) 0) _x)))
                (set ((_newPoints _index2) 1) (JR/i32 (+ ((_points _index2) 1) _y))))
                (do
                (set ((_newPoints _index2) 0) 1000)
                (set ((_newPoints _index2) 1) 1000))))
                (do (set _index2 (JR/i32 (+ _index2 1))))))
        (return jreturn _newPoints))))

(set jproto @{:jm_adjustXY jm_adjustXY :jm_adjust_2 jm_adjust_2 :jm_adjust_3 jm_adjust_3})


