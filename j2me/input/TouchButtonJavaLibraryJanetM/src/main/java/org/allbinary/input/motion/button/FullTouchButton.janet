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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" "jm_getInstance" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(import ./TouchButton :as TouchButton)

# Java class FullTouchButton
(var jproto nil)
(var jnew_7 nil)
(var jm_createButton nil)
(var jm_updateRectangle nil)

    
(set jm_createButton (fn jm_createButton [_touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder]
    (label jreturn
        (return jreturn (jnew_7 _touchButtonInput (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) (_touchButtonResource :f_RESOURCE))) (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) (_touchButtonResource :f_HINT))) _rawRectangle _cellPosition _xBorder _yBorder)))))
    
(set jnew_7 (fn jnew_7 [_touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder]
    (var this (table/setproto @{:jclass "FullTouchButton"} jproto))
        (JR/superInit this (TouchButton/jnew_7 _touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder))
    this))
    
(set jm_updateRectangle (fn jm_updateRectangle [this]
        (try
            (do
            (var _pointFactory (PointFactory/jm_getInstance))
            (var _x (JR/i32 (* (:jm_getWidth (this :f_rawRectangle)) (JR/className (this :f_cellPositionP)))))
            (var _y (JR/i32 (* (:jm_getHeight (this :f_rawRectangle)) (JR/className (this :f_cellPositionP)))))
            (set (this :f_rectangleP) (Rectangle/jnew_3 (:jm_createXY _pointFactory _x _y) (JR/i32 (+ (:jm_getWidth (this :f_rawRectangle)) (JR/i32 (* 2 (this :f_xBorder))))) (JR/i32 (+ (:jm_getHeight (this :f_rawRectangle)) (JR/i32 (* 2 (this :f_yBorder)))))))
            (var _point (JR/className (this :f_rectangleP)))
            (set (this :f_animationX) (JR/i32 (+ (:jm_getX _point) (this :f_xBorder))))
            (set (this :f_animationY) (JR/i32 (+ (:jm_getY _point) (this :f_yBorder))))
            (set (this :f_hintAnimationY) (brshift (JR/i32 (- (this :f_animationY) (JR/className (this :f_rectangleP)))) 1)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))

(set jproto (table/setproto @{:jm_updateRectangle jm_updateRectangle} TouchButton/jproto))


