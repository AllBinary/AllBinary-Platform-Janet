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
# package org.allbinary.graphics.canvas.transition.progress

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullCanvas/jstatic_NULL_CANVAS [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/NullCanvas" "jstatic_NULL_CANVAS" args))
(defn- NullCommandListener/jstatic_NULL_COMMAND_LISTENER [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/NullCommandListener" "jstatic_NULL_COMMAND_LISTENER" args))
(defn- Processor/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/canvas/Processor" "jnew_0" args))
(defn- Processor/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/canvas/Processor" "jm_getInstance" args))
(import ../../../../../../org/allbinary/canvas/RunnableCanvas :as RunnableCanvas)
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- ABCustomGaugeItem/jnew_5 [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/form/item/ABCustomGaugeItem" "jnew_5" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- AllBinaryMidlet/jm_getNullInstance [& args] (JR/call jfile "../../../../../../org/allbinary/midlet/AllBinaryMidlet" "jm_getNullInstance" args))
(defn- PathFindingThreadPool/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/thread/PathFindingThreadPool" "jm_getInstance" args))
(defn- ProgressPaintable/jnew_1 [& args] (JR/call jfile "./ProgressPaintable" "jnew_1" args))
(defn- ProgressEndListener/jstatic_instance [& args] (JR/call jfile "./ProgressEndListener" "jstatic_instance" args))

# Java class ProgressCanvas
(var jproto nil)
(var jnew_3 nil)
(var jm_updateMeasurement nil)
(var jm_init nil)
(var jm_update nil)
(var jm_initCommands nil)
(var jm_getMaxValue nil)
(var jm_start nil)
(var jm_startBackground nil)
(var jm_endActual nil)
(var jm_inGame nil)
(var jm_end nil)
(var jm_endFromInitialLazyLoadingComplete nil)
(var jm_isInGame nil)
(var jm_endIfPaintedSinceStart nil)
(var jm_addEarlyPortion nil)
(var jm_addPortion nil)
(var jm_addNormalPortion nil)
(var jm_setValue nil)
(var jm_paint nil)
(var jm_paint2 nil)
(var jm_paintThreed nil)
(var jm_getValue nil)
(var jm_setText nil)
(var jm_getText nil)
(var jm_setBackground nil)
(var jm_isBackground nil)

    
(set jnew_3 (fn jnew_3 [_title _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ProgressCanvas" :f_hasPainted false :f_backgroundBasicColor nil :f_GAUGE_PAINTABLE nil :f_maxValue 0.0 :f_gauge nil :f_TEXT nil :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_allbinaryMidlet nil :f_value 0.0 :f_text nil :f_background false :f_paintable nil :f_inProgress false :f_IN_GAME_PROCESSOR nil :f_inGameProcessor nil :f_progressEndListener nil :f_backgroundLabel nil :f_START_BACKGROUND nil :f_ADD_PORTION nil :f_ADD_EARLY_PORTION nil} jproto))
    
    
    (put this :f_GAUGE_PAINTABLE (ProgressPaintable/jnew_1 this))
    (put this :f_maxValue 100.0)
    
    (put this :f_TEXT ((this :f_commonStrings) :f_LOADING))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    (put this :f_allbinaryMidlet (AllBinaryMidlet/jm_getNullInstance))
    
    (put this :f_text (this :f_TEXT))
    (put this :f_background true)
    (put this :f_paintable (this :f_GAUGE_PAINTABLE))
    (put this :f_inProgress false)
    (put this :f_IN_GAME_PROCESSOR (Processor/jnew_0))
    (put this :f_inGameProcessor (Processor/jm_getInstance))
    (put this :f_progressEndListener (ProgressEndListener/jstatic_instance))
    (put this :f_backgroundLabel "Background AI Game Loading...")
    (put this :f_START_BACKGROUND "startBackground")
    (put this :f_ADD_PORTION "addPortion")
    (put this :f_ADD_EARLY_PORTION "addEarlyPortion")
        (JR/superInit this (RunnableCanvas/jnew_3 (NullCommandListener/jstatic_NULL_COMMAND_LISTENER) ((CanvasStrings/jm_getInstance) :f_EMPTY_CHILD_NAME_LIST) false))
        (set (this :f_backgroundBasicColor) _backgroundBasicColor)
        (set (this :f_gauge) (ABCustomGaugeItem/jnew_5 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (JR/d2i (this :f_maxValue)) 0 _backgroundBasicColor _foregroundBasicColor))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (:jm_setHeight (this :f_gauge) (JR/i32 (+ (:jm_getHeight _font) 2)))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_init (fn jm_init [this _gameMidlet]
        (set (this :f_allbinaryMidlet) _gameMidlet)))
    
(set jm_update (fn jm_update [this _graphics]
    nil))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
    nil))
    
(set jm_getMaxValue (fn jm_getMaxValue [this]
    (label jreturn
        (return jreturn (this :f_maxValue)))))
    
(set jm_start (fn jm_start [this]
        (JR/className (this :f_logUtil))
        (:jm_setBackground this true)
        (:jm_setHeight (this :f_gauge) 30)
        (:jm_setLabel (this :f_gauge) ((this :f_commonStrings) :f_PLEASE_WAIT))
        (:jm_setText this (this :f_TEXT))
        (:jm_setValue this 0)
        (set (this :f_inGameProcessor) (Processor/jm_getInstance))
        (set (this :f_paintable) (this :f_GAUGE_PAINTABLE))
        (set (this :f_inProgress) true)))
    
(set jm_startBackground (fn jm_startBackground [this _background]
        (JR/className (this :f_logUtil))
        (:jm_setBackground this _background)
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))
        (:jm_setLabel (this :f_gauge) (this :f_backgroundLabel))
        (:jm_setText this (this :f_TEXT))
        (:jm_setValue this 0)
        (set (this :f_inGameProcessor) (Processor/jm_getInstance))
        (set (this :f_paintable) (this :f_GAUGE_PAINTABLE))))
    
(set jm_endActual (fn jm_endActual [this]
        (:jm_commandAction (this :f_allbinaryMidlet) ((GameCommandsFactory/jm_getInstance) :f_SHOW_GAME_CANVAS) (NullCanvas/jstatic_NULL_CANVAS))
        (set (this :f_inProgress) false)
        (:jm_inGame this)))
    
(set jm_inGame (fn jm_inGame [this]
        (:jm_onEndEvent (this :f_progressEndListener))
        (set (this :f_inGameProcessor) (this :f_IN_GAME_PROCESSOR))))
    
(set jm_end (fn jm_end [this]
        (JR/className (this :f_logUtil))
        (:jm_setValue (this :f_gauge) (:jm_getMaxValue this))
        (:jm_endActual this)
        (set (this :f_paintable) (NullPaintable/jm_getInstance))))
    
(set jm_endFromInitialLazyLoadingComplete (fn jm_endFromInitialLazyLoadingComplete [this]
        (:jm_onEndEvent (this :f_progressEndListener))
        (:jm_setValue (this :f_gauge) (:jm_getMaxValue this))
        (set (this :f_inGameProcessor) (this :f_IN_GAME_PROCESSOR))))
    
(set jm_isInGame (fn jm_isInGame [this]
    (label jreturn
        (if (= (this :f_inGameProcessor) (this :f_IN_GAME_PROCESSOR))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_endIfPaintedSinceStart (fn jm_endIfPaintedSinceStart [this]
    nil))
    
(set jm_addEarlyPortion (fn jm_addEarlyPortion [this _value _text _index]
        (:jm_setText this (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) _text) (JR/toString (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) _index)))))
        (:jm_setValue (this :f_gauge) (+ (:jm_getValue (this :f_gauge)) (/ (:jm_getMaxValue this) _value)))))
    
(set jm_addPortion (fn jm_addPortion [this _value _text _index]
        (:jm_setText this (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) _text) (JR/toString (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) _index)))))
        (PreLogUtil/jm_put (this :f_text) this (this :f_ADD_PORTION))
        (:jm_setValue (this :f_gauge) (+ (:jm_getValue (this :f_gauge)) (/ (:jm_getMaxValue this) _value)))))
    
(set jm_addNormalPortion (fn jm_addNormalPortion [this _value _text]
        (if (not= (this :f_text) _text)
            (do
            (PreLogUtil/jm_put _text this (this :f_ADD_PORTION))))
        (:jm_setText this _text)
        (:jm_setValue (this :f_gauge) (+ (:jm_getValue (this :f_gauge)) (/ (:jm_getMaxValue this) _value)))))
    
(set jm_setValue (fn jm_setValue [this _value]
        (set (this :f_value) _value)
        (:jm_setValue (this :f_gauge) _value)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_paintable) _graphics)))
    
(set jm_paint2 (fn jm_paint2 [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setColor _graphics (:jm_intValue (this :f_backgroundBasicColor)))
        (:jm_fillRect _graphics 0 0 (JR/className (this :f_displayInfo)) (JR/className (this :f_displayInfo)))
        (:jm_paintXY (this :f_gauge) _graphics 0 0)
        (set (this :f_hasPainted) true)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))
    
(set jm_getValue (fn jm_getValue [this]
    (label jreturn
        (return jreturn (this :f_value)))))
    
(set jm_setText (fn jm_setText [this _text]
        (set (this :f_text) _text)))
    
(set jm_getText (fn jm_getText [this]
    (label jreturn
        (return jreturn (this :f_text)))))
    
(set jm_setBackground (fn jm_setBackground [this _background]
        (set (this :f_background) _background)))
    
(set jm_isBackground (fn jm_isBackground [this]
    (label jreturn
        (return jreturn (this :f_background)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_init jm_init :jm_update jm_update :jm_initCommands jm_initCommands :jm_getMaxValue jm_getMaxValue :jm_start jm_start :jm_startBackground jm_startBackground :jm_endActual jm_endActual :jm_inGame jm_inGame :jm_end jm_end :jm_endFromInitialLazyLoadingComplete jm_endFromInitialLazyLoadingComplete :jm_isInGame jm_isInGame :jm_endIfPaintedSinceStart jm_endIfPaintedSinceStart :jm_addEarlyPortion jm_addEarlyPortion :jm_addPortion jm_addPortion :jm_addNormalPortion jm_addNormalPortion :jm_setValue jm_setValue :jm_paint jm_paint :jm_paint2 jm_paint2 :jm_paintThreed jm_paintThreed :jm_getValue jm_getValue :jm_setText jm_setText :jm_getText jm_getText :jm_setBackground jm_setBackground :jm_isBackground jm_isBackground} RunnableCanvas/jproto))


