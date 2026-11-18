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
(defn- GameInputProcessor/jm_getInstance [& args] (JR/call jfile "./GameInputProcessor" "jm_getInstance" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "./InputFactory" "jm_getInstance" args))

# Java class GameInputProcessorUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameInputProcessorUtil"} jproto))
    this))

    
(set jm_init (fn jm_init [_inputProcessorArray]
        (var _noInputProcessor (GameInputProcessor/jm_getInstance))
        (var _total ((InputFactory/jm_getInstance) :f_MAX))
        (do
            (var _index 0)
            (while (< _index _total)
                (do
            (var _inputProcessorCanBeNull (_inputProcessorArray _index))
            (if (nil? _inputProcessorCanBeNull)
                (do
                (set (_inputProcessorArray _index) _noInputProcessor))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{})


