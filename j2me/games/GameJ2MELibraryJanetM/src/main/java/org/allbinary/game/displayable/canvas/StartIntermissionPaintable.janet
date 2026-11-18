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
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- FontDebugFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/FontDebugFactory" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ../../../../../org/allbinary/graphics/paint/InitUpdatePaintable :as InitUpdatePaintable)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class StartIntermissionPaintable
(var jproto nil)
(var jnew_4 nil)
(var jm_updateMeasurement nil)
(var jm_paint nil)
(var jm_update nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)

    
(set jnew_4 (fn jnew_4 [_gameCanvas _stringArray _basicColor _font]
    (var this (table/setproto @{:jclass "StartIntermissionPaintable" :f_fontDebugFactory nil :f_basicSetColorUtil nil :f_gameCanvas nil :f_stringArray nil :f_fontSize 0 :f_font nil :f_lastWidth nil :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_basicColor nil :f_color 0 :f_lineYOffsetArray nil :f_hasChanged false :f_anchor 0 :f_fontHeightP 0 :f_BEGIN_LEVEL nil :f_EMPTY_STRING nil} jproto))
    (put this :f_fontDebugFactory (FontDebugFactory/jm_getInstance))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    
    
    
    
    
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_BLACK))
    
    (put this :f_lineYOffsetArray ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY))
    (put this :f_hasChanged true)
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    
    (put this :f_BEGIN_LEVEL "Begin Level ")
    (put this :f_EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (JR/superInit this (InitUpdatePaintable/jnew_0))
        (set (this :f_gameCanvas) _gameCanvas)
        (set (this :f_stringArray) _stringArray)
        (set (this :f_lastWidth) (array/new-filled (length (this :f_stringArray)) 0))
        (:jm_setBasicColorP this _basicColor)
        (set (this :f_color) (:jm_intValue _basicColor))
        (set (this :f_fontSize) (:jm_getSize _font))
        (set (this :f_font) _font)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_fontHeightP) (:jm_getHeight _font))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _existingFont (:jm_getFont _graphics))
        (:jm_setFont (this :f_fontDebugFactory) (this :f_font) _graphics)
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (:jm_setBasicColorP3 (this :f_basicSetColorUtil) _graphics (this :f_basicColor) (this :f_color))
        (var _beginWidth 0)
        (do
            (var _index (JR/i32 (- (length (this :f_lineYOffsetArray)) 1)))
            (while (>= _index 0)
                (do
            (if (this :f_hasChanged)
                (do
                (set ((this :f_lastWidth) _index) (brshift (JR/className (:jm_getFont _graphics)) 1))))
            (set _beginWidth ((this :f_lastWidth) _index))
            (:jm_drawString _graphics ((this :f_stringArray) _index) (JR/i32 (- (:jm_getLastHalfWidth _displayInfo) _beginWidth)) (JR/i32 (- (:jm_getLastHalfHeight _displayInfo) ((this :f_lineYOffsetArray) _index))) (this :f_anchor)))
                (do (set _index (JR/i32 (- _index 1))))))
        (set (this :f_hasChanged) false)
        (:jm_setFont (this :f_fontDebugFactory) _existingFont _graphics)))
    
(set jm_update (fn jm_update [this]
        (var _level (JR/className (JR/className (:jm_getLayerManager (this :f_gameCanvas)))))
        (set ((this :f_stringArray) 0) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) (this :f_BEGIN_LEVEL)) _level)))
        (do
            (var _index (JR/i32 (- (length (this :f_stringArray)) 1)))
            (while (>= _index 1)
                (do
            (set ((this :f_stringArray) _index) (this :f_EMPTY_STRING)))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_paint jm_paint :jm_update jm_update :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP} InitUpdatePaintable/jproto))


