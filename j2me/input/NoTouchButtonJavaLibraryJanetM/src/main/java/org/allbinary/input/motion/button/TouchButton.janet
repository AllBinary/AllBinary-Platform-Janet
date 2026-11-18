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
(var jnew_6 nil)
(var jm_paint nil)
(var jm_updateRectangle nil)
(var jm_getCellPositionP nil)
(var jm_getRectangleP nil)
(var jm_getTouchButtonInput nil)
(var jm_toString nil)

    
(set jnew_6 (fn jnew_6 [_touchButtonInput _animationInterface _rawRectangle _cellPosition _xBorder _yBorder]
    (var this (table/setproto @{:jclass "TouchButton" :f_logUtil nil :f_commonStrings nil :f_touchButtonInput nil :f_animationInterface nil :f_rawRectangle nil :f_xBorder 0 :f_yBorder 0 :f_rectangle nil :f_cellPosition nil :f_animationX 0 :f_animationY 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
    
    
    (put this :f_rectangle (RectangleFactory/jstatic_SINGLETON))
    
    
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_touchButtonInput) _touchButtonInput)
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_rawRectangle) _rawRectangle)
        (set (this :f_cellPosition) _cellPosition)
        (set (this :f_xBorder) _xBorder)
        (set (this :f_yBorder) _yBorder)
        (:jm_updateRectangle this)
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Created: ") (:jm_toString this))) this ((this :f_commonStrings) :f_CONSTRUCTOR))
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paintXY (this :f_animationInterface) _graphics (this :f_animationX) (this :f_animationY))))
    
(set jm_updateRectangle (fn jm_updateRectangle [this]
        (try
            (do
            (var _x (JR/i32 (* (:jm_getWidth (this :f_rawRectangle)) (:jm_getColumn (this :f_cellPosition)))))
            (var _y (JR/i32 (* (:jm_getHeight (this :f_rawRectangle)) (:jm_getRow (this :f_cellPosition)))))
            (var _pointFactory (PointFactory/jm_getInstance))
            (set (this :f_rectangle) (Rectangle/jnew_3 (:jm_createXY _pointFactory (JR/i32 (+ _x (this :f_xBorder))) (JR/i32 (+ _y (this :f_yBorder)))) (:jm_getWidth (this :f_rawRectangle)) (:jm_getHeight (this :f_rawRectangle))))
            (var _point (:jm_getPoint (this :f_rectangle)))
            (set (this :f_animationX) (:jm_getX _point))
            (set (this :f_animationY) (:jm_getY _point)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "updateRectangle" _e))))))
    
(set jm_getCellPositionP (fn jm_getCellPositionP [this]
    (label jreturn
        (return jreturn (this :f_cellPosition)))))
    
(set jm_getRectangleP (fn jm_getRectangleP [this]
    (label jreturn
        (return jreturn (this :f_rectangle)))))
    
(set jm_getTouchButtonInput (fn jm_getTouchButtonInput [this]
    (label jreturn
        (return jreturn (this :f_touchButtonInput)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _stringUtil (StringUtil/jm_getInstance))
        (:jm_append _stringBuffer "TouchButton: ")
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_rectangle)))
        (:jm_append _stringBuffer " CellPosition: ")
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil (this :f_cellPosition)))
        (:jm_append _stringBuffer " xBorder: ")
        (:jm_appendint _stringBuffer (this :f_xBorder))
        (:jm_append _stringBuffer " yBorder: ")
        (:jm_appendint _stringBuffer (this :f_yBorder))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_updateRectangle jm_updateRectangle :jm_getCellPositionP jm_getCellPositionP :jm_getRectangleP jm_getRectangleP :jm_getTouchButtonInput jm_getTouchButtonInput :jm_toString jm_toString} Paintable/jproto))


