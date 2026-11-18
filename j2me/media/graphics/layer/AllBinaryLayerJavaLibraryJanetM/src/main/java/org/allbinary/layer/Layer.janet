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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../java/lang/Integer :as Integer)

# Java class Layer
(var jproto nil)
(var jcell_ID :jnone)
(var jstatic_ID nil)
(var jsetstatic_ID nil)
(var jnew_2 nil)
(var jm_setPosition nil)
(var jm_moveDXY nil)
(var jm_moveDXYZ nil)
(var jm_getXP nil)
(var jm_getYP nil)
(var jm_getZP nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_getDepth nil)
(var jm_setVisible nil)
(var jm_isVisible nil)
(var jm_paint nil)
(var jm_setLayerWidth nil)
(var jm_setLayerHeight nil)
(var jm_toStringAppend nil)

(set jstatic_ID (fn jstatic_ID []
  (when (= jcell_ID :jnone) (set jcell_ID (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 0)))
  jcell_ID))
(set jsetstatic_ID (fn jsetstatic_ID [value] (set jcell_ID value)))

    
(set jnew_2 (fn jnew_2 [_width _height]
    (var this (table/setproto @{:jclass "Layer" :f_logUtil nil :f_x 0 :f_y 0 :f_z 0 :f_width 0 :f_height 0 :f_visible false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
    (put this :f_z 3)
    
    
    (put this :f_visible true)
        (:jm_setLayerWidth this _width)
        (:jm_setLayerHeight this _height)
    this))
    
(set jm_setPosition (fn jm_setPosition [this _x _y _z]
        (set (this :f_x) _x)
        (set (this :f_y) _y)
        (set (this :f_z) _z)))
    
(set jm_moveDXY (fn jm_moveDXY [this _dx _dy]
        (set (this :f_x) (JR/i32 (+ (this :f_x) _dx)))
        (set (this :f_y) (JR/i32 (+ (this :f_y) _dy)))))
    
(set jm_moveDXYZ (fn jm_moveDXYZ [this _dx _dy _dz]
        (set (this :f_x) (JR/i32 (+ (this :f_x) _dx)))
        (set (this :f_y) (JR/i32 (+ (this :f_y) _dy)))
        (set (this :f_z) (JR/i32 (+ (this :f_z) _dz)))))
    
(set jm_getXP (fn jm_getXP [this]
    (label jreturn
        (return jreturn (this :f_x)))))
    
(set jm_getYP (fn jm_getYP [this]
    (label jreturn
        (return jreturn (this :f_y)))))
    
(set jm_getZP (fn jm_getZP [this]
    (label jreturn
        (return jreturn (this :f_z)))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn (this :f_width)))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn (this :f_height)))))
    
(set jm_getDepth (fn jm_getDepth [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_setVisible (fn jm_setVisible [this _visible]
        (set (this :f_visible) _visible)))
    
(set jm_isVisible (fn jm_isVisible [this]
    (label jreturn
        (return jreturn (this :f_visible)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (var _canvasStrings (CanvasStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) (_commonStrings :f_NOT_IMPLEMENTED) this (_canvasStrings :f_PAINT))))
    
(set jm_setLayerWidth (fn jm_setLayerWidth [this _width]
        (if (< _width 0)
            (do
            (error (JR/newException "IllegalArgumentException"))))
        (set (this :f_width) _width)))
    
(set jm_setLayerHeight (fn jm_setLayerHeight [this _height]
        (if (< _height 0)
            (do
            (error (JR/newException "IllegalArgumentException"))))
        (set (this :f_height) _height)))
    
(set jm_toStringAppend (fn jm_toStringAppend [this _stringBuffer]
    nil))

(set jproto @{:jm_setPosition jm_setPosition :jm_moveDXY jm_moveDXY :jm_moveDXYZ jm_moveDXYZ :jm_getXP jm_getXP :jm_getYP jm_getYP :jm_getZP jm_getZP :jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_getDepth jm_getDepth :jm_setVisible jm_setVisible :jm_isVisible jm_isVisible :jm_paint jm_paint :jm_setLayerWidth jm_setLayerWidth :jm_setLayerHeight jm_setLayerHeight :jm_toStringAppend jm_toStringAppend})


