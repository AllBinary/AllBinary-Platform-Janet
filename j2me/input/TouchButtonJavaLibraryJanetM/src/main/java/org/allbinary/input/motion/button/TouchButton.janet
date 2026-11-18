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
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(import ../../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class TouchButton
(var jproto nil)
(var jnew_7 nil)
(var jm_createButton nil)
(var jm_paintHint nil)
(var jm_paint nil)
(var jm_updateRectangle nil)
(var jm_getCellPosition nil)
(var jm_getRectangle nil)
(var jm_getTouchButtonInput nil)
(var jm_toString nil)

    
(set jm_createButton (fn jm_createButton [_touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder]
    (label jreturn
        (return jreturn (jnew_7 _touchButtonInput (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) (_touchButtonResource :f_RESOURCE))) (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) (_touchButtonResource :f_HINT))) _rawRectangle _cellPosition _xBorder _yBorder)))))
    
(set jnew_7 (fn jnew_7 [_touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder]
    (var this (table/setproto @{:jclass "TouchButton" :f_logUtil nil :f_commonStrings nil :f_touchButtonInput nil :f_animationInterface nil :f_hintAnimationInterface nil :f_rawRectangle nil :f_xBorder 0 :f_yBorder 0 :f_rectangleP nil :f_cellPositionP nil :f_animationX 0 :f_animationY 0 :f_hintAnimationY 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
    
    
    
    (put this :f_rectangleP (RectangleFactory/jstatic_SINGLETON))
    
    
    
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_touchButtonInput) _touchButtonInput)
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_hintAnimationInterface) _hintAnimationInterface)
        (set (this :f_rawRectangle) _rawRectangle)
        (set (this :f_cellPositionP) _cellPosition)
        (set (this :f_xBorder) _xBorder)
        (set (this :f_yBorder) _yBorder)
        (:jm_updateRectangle this)
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Created: ") (:jm_toString this))) this ((this :f_commonStrings) :f_CONSTRUCTOR))
    this))
    
(set jm_paintHint (fn jm_paintHint [this _graphics]
        (:jm_paintXY (this :f_hintAnimationInterface) _graphics (this :f_animationX) (this :f_hintAnimationY))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paintXY (this :f_animationInterface) _graphics (this :f_animationX) (this :f_animationY))))
    
(set jm_updateRectangle (fn jm_updateRectangle [this]
        (try
            (do
            (var _pointFactory (PointFactory/jm_getInstance))
            (var _x (JR/i32 (* (:jm_getWidth (this :f_rawRectangle)) (:jm_getColumn (this :f_cellPositionP)))))
            (var _y (JR/i32 (* (:jm_getHeight (this :f_rawRectangle)) (:jm_getRow (this :f_cellPositionP)))))
            (set (this :f_rectangleP) (Rectangle/jnew_3 (:jm_createXY _pointFactory (JR/i32 (+ _x (this :f_xBorder))) (JR/i32 (+ _y (this :f_yBorder)))) (:jm_getWidth (this :f_rawRectangle)) (:jm_getHeight (this :f_rawRectangle))))
            (var _point (:jm_getPoint (this :f_rectangleP)))
            (set (this :f_animationX) (:jm_getX _point))
            (set (this :f_animationY) (:jm_getY _point))
            (set (this :f_hintAnimationY) (JR/i32 (- (this :f_animationY) 32))))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "updateRectangle" _e))))))
    
(set jm_getCellPosition (fn jm_getCellPosition [this]
    (label jreturn
        (return jreturn (this :f_cellPositionP)))))
    
(set jm_getRectangle (fn jm_getRectangle [this]
    (label jreturn
        (return jreturn (this :f_rectangleP)))))
    
(set jm_getTouchButtonInput (fn jm_getTouchButtonInput [this]
    (label jreturn
        (return jreturn (this :f_touchButtonInput)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _stringUtil (StringUtil/jm_getInstance))
        (:jm_append _stringBuffer "TouchButton: ")
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (:jm_getRectangle this)))
        (:jm_append _stringBuffer " CellPosition: ")
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_cellPositionP)))
        (:jm_append _stringBuffer " xBorder: ")
        (:jm_appendint _stringBuffer (this :f_xBorder))
        (:jm_append _stringBuffer " yBorder: ")
        (:jm_appendint _stringBuffer (this :f_yBorder))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_paintHint jm_paintHint :jm_paint jm_paint :jm_updateRectangle jm_updateRectangle :jm_getCellPosition jm_getCellPosition :jm_getRectangle jm_getRectangle :jm_getTouchButtonInput jm_getTouchButtonInput :jm_toString jm_toString} Paintable/jproto))


