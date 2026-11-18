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
# package org.allbinary.game.graphics.hud

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Graphics/jstatic_HCENTER [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Graphics" "jstatic_HCENTER" args))
(defn- Graphics/jstatic_TOP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Graphics" "jstatic_TOP" args))
(defn- Graphics/jstatic_RIGHT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Graphics" "jstatic_RIGHT" args))
(defn- Graphics/jstatic_BOTTOM [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Graphics" "jstatic_BOTTOM" args))
(defn- Graphics/jstatic_LEFT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Graphics" "jstatic_LEFT" args))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- HudGraphicsPosition/jnew_2 [& args] (JR/call jfile "./HudGraphicsPosition" "jnew_2" args))
(defn- HudGraphicsPosition/jstatic_NULL_HUD_GRAPHICS_POSITION [& args] (JR/call jfile "./HudGraphicsPosition" "jstatic_NULL_HUD_GRAPHICS_POSITION" args))
(defn- BasicHudFactory/jm_getInstance [& args] (JR/call jfile "./BasicHudFactory" "jm_getInstance" args))

# Java class BasicHud
(var jproto nil)
(var jnew_4 nil)
(var jm_updateMeasurement nil)
(var jm_getLocation nil)
(var jm_getDirection nil)
(var jm_getHudGraphicsPositionWH nil)
(var jm_onEvent nil)
(var jm_onDisplayChangeEvent nil)
(var jm_getPoint nil)
(var jm_getBufferZone nil)
(var jm_setBufferZone nil)
(var jm_setLocation nil)
(var jm_setDirection nil)
(var jm_getHudGraphicsPosition nil)
(var jm_getColor nil)
(var jm_getX nil)
(var jm_setX nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)
(var jm_setY nil)
(var jm_getY nil)
(var jm_paintSSO nil)
(var jm_paintSSOO nil)
(var jm_paintDXY nil)
(var jm_paintDX nil)
(var jm_paintOffsetAndLength nil)
(var jm_paintString nil)

    
(set jnew_4 (fn jnew_4 [_location _direction _bufferZone _basicColor]
    (var this (table/setproto @{:jclass "BasicHud" :f_logUtil nil :f_commonStrings nil :f_canvasStrings nil :f_basicSetColorUtil nil :f_displayInfo nil :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_location 0 :f_direction 0 :f_bufferZone 0 :f_bufferZoneY 0 :f_hudGraphicsPosition nil :f_x 0 :f_y 0 :f_basicColor nil :f_color 0 :f_updateMaxWidth 0 :f_updateMaxHeight 0 :f_offsetY 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_canvasStrings (CanvasStrings/jm_getInstance))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    (put this :f_displayInfo (DisplayInfoSingleton/jm_getInstance))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    
    
    
    
    (put this :f_hudGraphicsPosition (HudGraphicsPosition/jstatic_NULL_HUD_GRAPHICS_POSITION))
    
    
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_BLACK))
    
    
    
    
        (:jm_setLocation this _location)
        (:jm_setDirection this _direction)
        (:jm_setBufferZone this _bufferZone)
        (:jm_onDisplayChangeEvent this ((DisplayInfoSingleton/jm_getInstance) :f_displayChangeEvent))
        (:jm_setBasicColorP this _basicColor)
        (set (this :f_color) (:jm_intValue _basicColor))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (try
            (do
            (set (this :f_hudGraphicsPosition) (:jm_getHudGraphicsPositionWH this (:jm_getLastWidth (this :f_displayInfo)) (:jm_getLastHeight (this :f_displayInfo)) (this :f_updateMaxWidth) (this :f_updateMaxHeight)))
            (set (this :f_x) (JR/className (:jm_getPoint (this :f_hudGraphicsPosition))))
            (:jm_setY this (JR/className (:jm_getPoint (this :f_hudGraphicsPosition)))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this ((this :f_canvasStrings) :f_ON_DISPLAY_CHANGE_EVENT) _e))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_getLocation (fn jm_getLocation [this]
    (label jreturn
        (return jreturn (this :f_location)))))
    
(set jm_getDirection (fn jm_getDirection [this]
    (label jreturn
        (return jreturn (this :f_direction)))))
    
(set jm_getHudGraphicsPositionWH (fn jm_getHudGraphicsPositionWH [this _width _height _maxWidth _maxHeight]
    (label jreturn
        (var _x 0)
        (var _y 0)
        (var _anchor 0)
        (var _basicHudFactory (BasicHudFactory/jm_getInstance))
        (if (= (_basicHudFactory :f_BOTTOMLEFT) (:jm_getLocation this))
            (do
            (set _x (JR/i32 (+ (this :f_bufferZone) 2)))
            (set _y (JR/i32 (- (JR/i32 (- _height _maxHeight)) (this :f_bufferZone))))
            (set _anchor (band (Graphics/jstatic_BOTTOM) (Graphics/jstatic_LEFT))))
            (if (= (_basicHudFactory :f_BOTTOMRIGHT) (:jm_getLocation this))
            (do
            (set _x (JR/i32 (- _width _maxWidth)))
            (set _y (JR/i32 (- (JR/i32 (- _height _maxHeight)) (this :f_bufferZone))))
            (set _anchor (band (Graphics/jstatic_BOTTOM) (Graphics/jstatic_RIGHT))))
            (if (= (_basicHudFactory :f_TOPLEFT) (:jm_getLocation this))
            (do
            (set _x (JR/i32 (+ (this :f_bufferZone) 2)))
            (set _y (this :f_bufferZoneY))
            (set _anchor (Anchor/jstatic_TOP_LEFT)))
            (if (= (_basicHudFactory :f_TOPRIGHT) (:jm_getLocation this))
            (do
            (set _x (JR/i32 (- _width _maxWidth)))
            (set _y (this :f_bufferZoneY))
            (set _anchor (band (Graphics/jstatic_TOP) (Graphics/jstatic_RIGHT))))
            (if (= (_basicHudFactory :f_TOPCENTER) (:jm_getLocation this))
            (do
            (set _x (JR/idiv (JR/i32 (- _width _maxWidth)) 2))
            (set _y (this :f_bufferZoneY))
            (set _anchor (band (Graphics/jstatic_TOP) (Graphics/jstatic_HCENTER))))
            (if (= (_basicHudFactory :f_BOTTOMCENTER) (:jm_getLocation this))
            (do
            (set _x (JR/idiv (JR/i32 (- _width _maxWidth)) 2))
            (set _y (JR/i32 (- (JR/i32 (- _height _maxHeight)) (this :f_bufferZone))))
            (set _anchor (band (Graphics/jstatic_BOTTOM) (Graphics/jstatic_HCENTER))))
            (if (= (_basicHudFactory :f_ABSOLUTE) (:jm_getLocation this))
            (do
            (set _x _maxHeight)
            (set _y _maxWidth)
            (set _anchor 0)))))))))
        (return jreturn (HudGraphicsPosition/jnew_2 (:jm_getPoint this _x _y) _anchor)))))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onDisplayChangeEvent (fn jm_onDisplayChangeEvent [this _displayChangeEvent]
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_getPoint (fn jm_getPoint [this _x _y]
    (label jreturn
        (return jreturn (:jm_createXY (PointFactory/jm_getInstance) _x _y)))))
    
(set jm_getBufferZone (fn jm_getBufferZone [this]
    (label jreturn
        (return jreturn (this :f_bufferZone)))))
    
(set jm_setBufferZone (fn jm_setBufferZone [this _bufferZone]
        (set (this :f_bufferZone) _bufferZone)
        (if (J2MEUtil/jm_isHTML)
            (do
            (set (this :f_bufferZoneY) (this :f_bufferZone)))
            (do
            (set (this :f_bufferZoneY) (JR/i32 (+ (this :f_bufferZone) 5)))))))
    
(set jm_setLocation (fn jm_setLocation [this _location]
        (set (this :f_location) _location)))
    
(set jm_setDirection (fn jm_setDirection [this _direction]
        (set (this :f_direction) _direction)))
    
(set jm_getHudGraphicsPosition (fn jm_getHudGraphicsPosition [this]
    (label jreturn
        (return jreturn (this :f_hudGraphicsPosition)))))
    
(set jm_getColor (fn jm_getColor [this]
    (label jreturn
        (return jreturn (this :f_color)))))
    
(set jm_getX (fn jm_getX [this]
    (label jreturn
        (return jreturn (this :f_x)))))
    
(set jm_setX (fn jm_setX [this _x]
        (set (this :f_x) _x)))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))
    
(set jm_setY (fn jm_setY [this _y]
        (set (this :f_y) _y)))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (return jreturn (this :f_y)))))
    
(set jm_paintSSO (fn jm_paintSSO [this _graphics _string _string2 _offset]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (:jm_getBasicColorP this))
        (:jm_drawString _graphics _string (this :f_x) (:jm_getY this) (:jm_getAnchor (this :f_hudGraphicsPosition)))
        (:jm_drawString _graphics _string2 (JR/i32 (+ (this :f_x) _offset)) (:jm_getY this) (:jm_getAnchor (this :f_hudGraphicsPosition)))))
    
(set jm_paintSSOO (fn jm_paintSSOO [this _graphics _string _string2 _offset _offset2]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setColor _graphics (:jm_getColor this))
        (:jm_drawString _graphics _string (JR/i32 (+ (this :f_x) _offset)) (:jm_getY this) (:jm_getAnchor (this :f_hudGraphicsPosition)))
        (:jm_drawString _graphics _string2 (JR/i32 (+ (this :f_x) _offset2)) (:jm_getY this) (:jm_getAnchor (this :f_hudGraphicsPosition)))))
    
(set jm_paintDXY (fn jm_paintDXY [this _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset _xOffset2]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (:jm_getBasicColorP this))
        (var _y (:jm_getY this))
        (:jm_drawChars _graphics _charArray _offset _len (JR/i32 (+ (this :f_x) _xOffset)) _y (:jm_getAnchor (this :f_hudGraphicsPosition)))
        (:jm_drawChars _graphics _charArray2 _offset2 _len2 (JR/i32 (+ (this :f_x) _xOffset2)) _y (:jm_getAnchor (this :f_hudGraphicsPosition)))))
    
(set jm_paintDX (fn jm_paintDX [this _graphics _charArray _offset _len _charArray2 _offset2 _len2 _xOffset]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (:jm_getBasicColorP this))
        (var _y (:jm_getY this))
        (:jm_drawChars _graphics _charArray _offset _len (this :f_x) _y (:jm_getAnchor (this :f_hudGraphicsPosition)))
        (:jm_drawChars _graphics _charArray2 _offset2 _len2 (JR/i32 (+ (this :f_x) _xOffset)) _y (:jm_getAnchor (this :f_hudGraphicsPosition)))))
    
(set jm_paintOffsetAndLength (fn jm_paintOffsetAndLength [this _graphics _charArray _offset _len]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (:jm_getBasicColorP this))
        (var _y (:jm_getY this))
        (:jm_drawChars _graphics _charArray _offset _len (this :f_x) _y (:jm_getAnchor (this :f_hudGraphicsPosition)))))
    
(set jm_paintString (fn jm_paintString [this _graphics _string]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (:jm_getBasicColorP this))
        (var _y (JR/i32 (+ (:jm_getY this) (this :f_offsetY))))
        (:jm_drawString _graphics _string (this :f_x) _y (:jm_getAnchor (this :f_hudGraphicsPosition)))))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement :jm_getLocation jm_getLocation :jm_getDirection jm_getDirection :jm_getHudGraphicsPositionWH jm_getHudGraphicsPositionWH :jm_onEvent jm_onEvent :jm_onDisplayChangeEvent jm_onDisplayChangeEvent :jm_getPoint jm_getPoint :jm_getBufferZone jm_getBufferZone :jm_setBufferZone jm_setBufferZone :jm_setLocation jm_setLocation :jm_setDirection jm_setDirection :jm_getHudGraphicsPosition jm_getHudGraphicsPosition :jm_getColor jm_getColor :jm_getX jm_getX :jm_setX jm_setX :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP :jm_setY jm_setY :jm_getY jm_getY :jm_paintSSO jm_paintSSO :jm_paintSSOO jm_paintSSOO :jm_paintDXY jm_paintDXY :jm_paintDX jm_paintDX :jm_paintOffsetAndLength jm_paintOffsetAndLength :jm_paintString jm_paintString})


