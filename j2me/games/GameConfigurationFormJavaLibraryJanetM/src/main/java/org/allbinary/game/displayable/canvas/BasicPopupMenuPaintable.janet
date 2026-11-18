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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AndroidUtil/jm_isAndroid [& args] (JR/call jfile "../../../../../org/allbinary/AndroidUtil" "jm_isAndroid" args))
(defn- J2MEUtil/jm_isJ2SE [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isJ2SE" args))
(defn- J2MEUtil/jm_isJ2ME [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isJ2ME" args))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- RectangleFilledAnimation/jnew_3 [& args] (JR/call jfile "../../../../../org/allbinary/animation/vector/RectangleFilledAnimation" "jnew_3" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- SWTUtil/jstatic_isSWT [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/SWTUtil" "jstatic_isSWT" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(defn- DrawVerticalStringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/draw/DrawVerticalStringUtil" "jm_getInstance" args))
(defn- MyFontProcessor/jm_defaultCharWidth [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_defaultCharWidth" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- OpenGLFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" "jm_getInstance" args))
(import ../../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- SWTJOGLProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" "jm_getInstance" args))

# Java class BasicPopupMenuPaintable
(var jproto nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jnew_3 nil)
(var jm_updateMeasurement nil)
(var jm_init nil)
(var jm_paint nil)

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "MENU"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

    
(set jnew_3 (fn jnew_3 [_rectangle _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "BasicPopupMenuPaintable" :f_basicSetColorUtil nil :f_drawStringUtil nil :f_label nil :f_foregroundBasicColor nil :f_myFontProcessor nil :f_rectangle nil :f_BORDER 0 :f_heightOffset 0 :f_offset 0 :f_animationInterface nil} jproto))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    (put this :f_drawStringUtil (DrawVerticalStringUtil/jm_getInstance))
    
    
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    
    
    
    
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_foregroundBasicColor) _foregroundBasicColor)
        (set (this :f_label) (jstatic_NAME))
        (set (this :f_rectangle) _rectangle)
        (if (or (J2MEUtil/jm_isJ2ME) (J2MEUtil/jm_isHTML))
            (do
            (set (this :f_animationInterface) (JR/className (NullAnimationFactory/jm_getFactoryInstance))))
            (do
            (set (this :f_animationInterface) (RectangleFilledAnimation/jnew_3 (:jm_getWidth (this :f_rectangle)) (:jm_getHeight (this :f_rectangle)) ((BasicColorFactory/jm_getInstance) :f_TRANSPARENT_GREY)))))
        (:jm_init this _rectangle)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (var _features (Features/jm_getInstance))
        (var _isOpenGL (:jm_isDefault _features ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL)))
        (:jm_updateMeasurement (this :f_drawStringUtil) _graphics (this :f_label))
        (var _BORDER 0)
        (if (or (J2MEUtil/jm_isHTML) _isOpenGL)
            (do
            (set _BORDER (JR/idiv (MyFontProcessor/jm_defaultCharWidth _font) 2)))
            (if (or (or (AndroidUtil/jm_isAndroid) (J2MEUtil/jm_isJ2SE)) (SWTUtil/jstatic_isSWT))
            (do
            (set _BORDER (MyFontProcessor/jm_defaultCharWidth _font)))
            (do
            (set _BORDER (JR/i32 (* (MyFontProcessor/jm_defaultCharWidth _font) 2))))))
        (set (this :f_BORDER) _BORDER)
        (set (this :f_heightOffset) (JR/i32 (- (:jm_getHeight (this :f_rectangle)) (JR/i32 (* (:jm_getHeight _font) (JR/className (jstatic_NAME)))))))
        (if (:jm_isAnyThreed (OpenGLFeatureUtil/jm_getInstance))
            (do
            (set (this :f_heightOffset) (JR/i32 (- (this :f_heightOffset) (JR/i32 (+ (:jm_getHeight _font) 2)))))
            (if (AndroidUtil/jm_isAndroid)
                (do
                (set (this :f_heightOffset) (:jm_getHeight _font)))
                (do
                (set (this :f_heightOffset) (JR/i32 (- (this :f_heightOffset) (JR/i32 (+ (:jm_getHeight _font) 2)))))))))
        (set (this :f_offset) (JR/i32 (+ (brshift (this :f_heightOffset) 1) (if (:jm_isJOGL (SWTJOGLProcessor/jm_getInstance)) 4 0))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_init (fn jm_init [this _rectangle]
        (set (this :f_rectangle) _rectangle)
        (var _width (:jm_getWidth (this :f_rectangle)))
        (var _height (:jm_getHeight (this :f_rectangle)))
        (if (or (J2MEUtil/jm_isJ2ME) (J2MEUtil/jm_isHTML))
            (do
            nil)
            (do
            (var _rectangleFilledAnimation (this :f_animationInterface))
            (:jm_setWidth _rectangleFilledAnimation _width)
            (:jm_setHeight _rectangleFilledAnimation _height)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _point (:jm_getPoint (this :f_rectangle)))
        (var _x (:jm_getX _point))
        (var _y (:jm_getY _point))
        (var _width (:jm_getWidth (this :f_rectangle)))
        (var _height (:jm_getHeight (this :f_rectangle)))
        (:jm_paintXY (this :f_animationInterface) _graphics _x _y)
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (this :f_foregroundBasicColor))
        (:jm_paintVerticle (this :f_drawStringUtil) _graphics (this :f_label) (JR/i32 (+ _x (this :f_BORDER))) (JR/i32 (+ _y (this :f_offset))) 0)
        (:jm_drawRect _graphics _x _y _width _height)))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_init jm_init :jm_paint jm_paint} Paintable/jproto))


