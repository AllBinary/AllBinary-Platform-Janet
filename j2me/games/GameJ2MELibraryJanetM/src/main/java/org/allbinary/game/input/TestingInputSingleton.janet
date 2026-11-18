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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_KEY_NUM7 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM7" args))
(defn- Canvas/jstatic_KEY_NUM9 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM9" args))
(defn- GameKeyEvent/jstatic_NONE [& args] (JR/call jfile "../../../../org/allbinary/game/input/event/GameKeyEvent" "jstatic_NONE" args))
(import ../../../../org/allbinary/game/layer/AllBinaryGameLayer :as AllBinaryGameLayer)
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- ViewPosition/jm_getInstanceD [& args] (JR/call jfile "../../../../org/allbinary/view/ViewPosition" "jm_getInstanceD" args))
(defn- GameInputProcessor/jnew_0 [& args] (JR/call jfile "./GameInputProcessor" "jnew_0" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "./InputFactory" "jm_getInstance" args))
(defn- GameInputProcessorUtil/jm_init [& args] (JR/call jfile "./GameInputProcessorUtil" "jm_init" args))

# Java class TestingInputSingleton
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_initInputProcessors nil)
(var jm_initInputProcessorsForTestInput nil)
(var jm_processInputList nil)
(var jm_processInput nil)
(var jm_paint nil)
(var jm_implmentsGameInputInterface nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TestingInputSingleton" :f_inputProcessorArray nil :f_testInputPaintable nil} jproto))
    (put this :f_inputProcessorArray (array/new-filled ((InputFactory/jm_getInstance) :f_MAX) nil))
    (put this :f_testInputPaintable (NullPaintable/jm_getInstance))
        (JR/superInit this (AllBinaryGameLayer/jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (RectangleFactory/jstatic_SINGLETON) (ViewPosition/jm_getInstanceD)))
        (GameInputProcessorUtil/jm_init (this :f_inputProcessorArray))
    this))
    
(set jm_initInputProcessors (fn jm_initInputProcessors [this]
    nil))
    
(set jm_initInputProcessorsForTestInput (fn jm_initInputProcessorsForTestInput [this _aTestInputInterface]
        (var _testInputInterface _aTestInputInterface)
        (set (this :f_testInputPaintable) _testInputInterface)
        (set ((this :f_inputProcessorArray) (Canvas/jstatic_UP)) (GameInputProcessor/jnew_0))
        (set ((this :f_inputProcessorArray) (Canvas/jstatic_DOWN)) (GameInputProcessor/jnew_0))
        (set ((this :f_inputProcessorArray) (Canvas/jstatic_LEFT)) (GameInputProcessor/jnew_0))
        (set ((this :f_inputProcessorArray) (Canvas/jstatic_RIGHT)) (GameInputProcessor/jnew_0))
        (set ((this :f_inputProcessorArray) (Canvas/jstatic_KEY_NUM7)) (GameInputProcessor/jnew_0))
        (set ((this :f_inputProcessorArray) (Canvas/jstatic_KEY_NUM9)) (GameInputProcessor/jnew_0))
        (GameInputProcessorUtil/jm_init (this :f_inputProcessorArray))))
    
(set jm_processInputList (fn jm_processInputList [this _allbinaryLayerManager _list]
        (var _key 0)
        (var _gameKeyEvent nil)
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _gameKeyEvent ((_list :f_objectArray) _index))
            (set _key (:jm_getKey _gameKeyEvent))
            (JR/className ((this :f_inputProcessorArray) _key)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_processInput (fn jm_processInput [this _allbinaryLayerManager]
        (:jm_processInputList this _allbinaryLayerManager (:jm_getGameKeyEventList this))
        (JR/className (:jm_getGameKeyEventList this))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_testInputPaintable) _graphics)))
    
(set jm_implmentsGameInputInterface (fn jm_implmentsGameInputInterface [this]
    (label jreturn
        (return jreturn true))))

(set jproto (table/setproto @{:jm_initInputProcessors jm_initInputProcessors :jm_initInputProcessorsForTestInput jm_initInputProcessorsForTestInput :jm_processInputList jm_processInputList :jm_processInput jm_processInput :jm_paint jm_paint :jm_implmentsGameInputInterface jm_implmentsGameInputInterface} AllBinaryGameLayer/jproto))


