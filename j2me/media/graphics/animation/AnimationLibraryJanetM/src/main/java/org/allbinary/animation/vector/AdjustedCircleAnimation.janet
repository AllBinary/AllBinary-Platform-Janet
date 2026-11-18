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
# package org.allbinary.animation.vector

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AndroidUtil/jm_isAndroid [& args] (JR/call jfile "../../../../org/allbinary/AndroidUtil" "jm_isAndroid" args))
(import ./CircleAnimation :as CircleAnimation)

# Java class AdjustedCircleAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_createAnimation nil)
(var jm_createW nil)
(var jm_initXY nil)
(var jm_init nil)
(var jm_paintXY nil)

    
(set jm_createAnimation (fn jm_createAnimation [_width _height _xAdjustment _yAdjustment _basicColor]
    (label jreturn
        (var _adjustedCircleAnimation (jnew_3 _width _height _basicColor))
        (:jm_initXY _adjustedCircleAnimation _xAdjustment _yAdjustment)
        (return jreturn _adjustedCircleAnimation))))
    
(set jm_createW (fn jm_createW [_width _height _innerWidth _basicColor]
    (label jreturn
        (var _adjustedCircleAnimation (jnew_3 _width _height _basicColor))
        (:jm_init _adjustedCircleAnimation _innerWidth)
        (return jreturn _adjustedCircleAnimation))))
    
(set jnew_3 (fn jnew_3 [_width _height _basicColor]
    (var this (table/setproto @{:jclass "AdjustedCircleAnimation" :f_xAdjustment 0 :f_yAdjustment 0} jproto))
    
    
        (JR/superInit this (CircleAnimation/jnew_3 _width _height _basicColor))
    this))
    
(set jm_initXY (fn jm_initXY [this _xAdjustment _yAdjustment]
        (set (this :f_xAdjustment) _xAdjustment)
        (set (this :f_yAdjustment) _yAdjustment)))
    
(set jm_init (fn jm_init [this _innerWidth]
        (if (AndroidUtil/jm_isAndroid)
            (do
            (var _widthPortion (JR/idiv (JR/i32 (* (JR/idiv _innerWidth 3) 10)) 7))
            (set (this :f_xAdjustment) (JR/i32 (- (JR/i32 (- (brshift (this :f_width) 1) _widthPortion)))))
            (set (this :f_yAdjustment) (this :f_xAdjustment)))
            (do
            (set (this :f_xAdjustment) (JR/i32 (- (JR/i32 (- (brshift (this :f_width) 1) _innerWidth)))))
            (set (this :f_yAdjustment) (this :f_xAdjustment))))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_basicSetColorUtil))
        (:jm_drawArc _graphics (JR/i32 (+ _x (this :f_xAdjustment))) (JR/i32 (+ _y (this :f_yAdjustment))) (this :f_width) (this :f_height) 0 (this :f_TOTAL_ANGLE))))

(set jproto (table/setproto @{:jm_initXY jm_initXY :jm_init jm_init :jm_paintXY jm_paintXY} CircleAnimation/jproto))


