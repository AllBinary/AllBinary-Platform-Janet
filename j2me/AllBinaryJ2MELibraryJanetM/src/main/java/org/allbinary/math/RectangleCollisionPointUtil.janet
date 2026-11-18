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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- RectangleCollisionUtil/jm_getInstance [& args] (JR/call jfile "./RectangleCollisionUtil" "jm_getInstance" args))

# Java class RectangleCollisionPointUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_allPointsInside nil)
(var jm_allPointsInsideCell nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RectangleCollisionPointUtil"} jproto))
    this))
    
(set jm_allPointsInside (fn jm_allPointsInside [_rectX1 _rectY1 _rectX2 _rectY2 _list]
    (label jreturn
        (var _rectangleCollisionUtil (RectangleCollisionUtil/jm_getInstance))
        (var _point nil)
        (do
            (var _index (:jm_size _list))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _point ((_list :f_objectArray) _index))
            (if (not (:jm_isInside _rectangleCollisionUtil _rectX1 _rectY1 _rectX2 _rectY2 (:jm_getX _point) (:jm_getY _point)))
                (do
                (return jreturn false))))))
        (return jreturn true))))
    
(set jm_allPointsInsideCell (fn jm_allPointsInsideCell [_rectX1 _rectY1 _rectX2 _rectY2 _list _xCellSize _yCellSize]
    (label jreturn
        (var _rectangleCollisionUtil (RectangleCollisionUtil/jm_getInstance))
        (var _point nil)
        (do
            (var _index (:jm_size _list))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _point ((_list :f_objectArray) _index))
            (if (not (:jm_isInside _rectangleCollisionUtil _rectX1 _rectY1 _rectX2 _rectY2 (JR/i32 (* (:jm_getX _point) _xCellSize)) (JR/i32 (* (:jm_getY _point) _yCellSize))))
                (do
                (return jreturn false))))))
        (return jreturn true))))

(set jproto @{})


