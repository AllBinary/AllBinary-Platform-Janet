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
(defn- NullCanvas/jstatic_NULL_CANVAS [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullCanvas" "jstatic_NULL_CANVAS" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- GameInputStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameInputStrings" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./BasicMenuInputProcessor :as BasicMenuInputProcessor)

# Java class DemoCanvasBasicStartInputProcessor
(var jproto nil)
(var jnew_2 nil)
(var jm_processInputList nil)

    
(set jnew_2 (fn jnew_2 [_gameKeyEventList _gameCanvas]
    (var this (table/setproto @{:jclass "DemoCanvasBasicStartInputProcessor"} jproto))
        (JR/superInit this (BasicMenuInputProcessor/jnew_3 _gameKeyEventList (JR/i32 (- 1)) _gameCanvas))
    this))
    
(set jm_processInputList (fn jm_processInputList [this]
    (label jreturn
        (var _list (:jm_getGameKeyEventList this))
        (var _size (:jm_size _list))
        (var _gameKeyEvent nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _gameKeyEvent ((_list :f_objectArray) _index))
            (JR/className (this :f_logUtil)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (JR/className (JR/className (:jm_getCanvas this)))
        (return jreturn _size))))

(set jproto (table/setproto @{:jm_processInputList jm_processInputList} BasicMenuInputProcessor/jproto))


