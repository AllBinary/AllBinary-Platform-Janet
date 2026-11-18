# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(defn- GameStateFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/state/GameStateFactory" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../../java/lang/Thread :as Thread)

# Java class NullGameCanvasRunnable
(var jproto nil)
(var jcell_NULL_GAME_CANVAS_RUNNABLE :jnone)
(var jstatic_NULL_GAME_CANVAS_RUNNABLE nil)
(var jsetstatic_NULL_GAME_CANVAS_RUNNABLE nil)
(var jnew_0 nil)
(var jm_getTitle nil)
(var jm_isInitialized nil)
(var jm_isPaused nil)
(var jm_unPause nil)
(var jm_pause nil)
(var jm_isHighScoreSubmitted nil)
(var jm_setHighScoreSubmitted nil)
(var jm_processGameOver nil)
(var jm_isGameOver nil)
(var jm_initCommands nil)
(var jm_getCurrentStateHashtable nil)
(var jm_getLoadStateHashtable nil)
(var jm_setLoadStateHashtable nil)
(var jm_getType nil)
(var jm_setGameState nil)
(var jm_getGameState nil)
(var jm_itemStateChanged nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_isRunning nil)
(var jm_setRunning nil)
(var jm_setThread nil)
(var jm_run nil)

(set jstatic_NULL_GAME_CANVAS_RUNNABLE (fn jstatic_NULL_GAME_CANVAS_RUNNABLE []
  (when (= jcell_NULL_GAME_CANVAS_RUNNABLE :jnone) (set jcell_NULL_GAME_CANVAS_RUNNABLE (jnew_0)))
  jcell_NULL_GAME_CANVAS_RUNNABLE))
(set jsetstatic_NULL_GAME_CANVAS_RUNNABLE (fn jsetstatic_NULL_GAME_CANVAS_RUNNABLE [value] (set jcell_NULL_GAME_CANVAS_RUNNABLE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullGameCanvasRunnable" :f_gameStateFactory nil} jproto))
    (put this :f_gameStateFactory (GameStateFactory/jm_getInstance))
    this))

    
(set jm_getTitle (fn jm_getTitle [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_isPaused (fn jm_isPaused [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_unPause (fn jm_unPause [this]
    nil))
    
(set jm_pause (fn jm_pause [this]
    nil))
    
(set jm_isHighScoreSubmitted (fn jm_isHighScoreSubmitted [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_setHighScoreSubmitted (fn jm_setHighScoreSubmitted [this _highScoreSubmitted]
    nil))
    
(set jm_processGameOver (fn jm_processGameOver [this]
    nil))
    
(set jm_isGameOver (fn jm_isGameOver [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
    nil))
    
(set jm_getCurrentStateHashtable (fn jm_getCurrentStateHashtable [this]
    (label jreturn
        (return jreturn ((StdUtil/jm_getInstance) :f_NULL_TABLE)))))
    
(set jm_getLoadStateHashtable (fn jm_getLoadStateHashtable [this]
    (label jreturn
        (return jreturn ((StdUtil/jm_getInstance) :f_NULL_TABLE)))))
    
(set jm_setLoadStateHashtable (fn jm_setLoadStateHashtable [this _hashtable]
    nil))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_setGameState (fn jm_setGameState [this _gameState]
    nil))
    
(set jm_getGameState (fn jm_getGameState [this]
    (label jreturn
        (return jreturn ((this :f_gameStateFactory) :f_NO_GAME_STATE)))))
    
(set jm_itemStateChanged (fn jm_itemStateChanged [this _item]
    nil))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))
    
(set jm_isRunning (fn jm_isRunning [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_setRunning (fn jm_setRunning [this _isRunning]
    nil))
    
(set jm_setThread (fn jm_setThread [this _thread]
    nil))
    
(set jm_run (fn jm_run [this]
    nil))

(set jproto @{:jm_getTitle jm_getTitle :jm_isInitialized jm_isInitialized :jm_isPaused jm_isPaused :jm_unPause jm_unPause :jm_pause jm_pause :jm_isHighScoreSubmitted jm_isHighScoreSubmitted :jm_setHighScoreSubmitted jm_setHighScoreSubmitted :jm_processGameOver jm_processGameOver :jm_isGameOver jm_isGameOver :jm_initCommands jm_initCommands :jm_getCurrentStateHashtable jm_getCurrentStateHashtable :jm_getLoadStateHashtable jm_getLoadStateHashtable :jm_setLoadStateHashtable jm_setLoadStateHashtable :jm_getType jm_getType :jm_setGameState jm_setGameState :jm_getGameState jm_getGameState :jm_itemStateChanged jm_itemStateChanged :jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_isRunning jm_isRunning :jm_setRunning jm_setRunning :jm_setThread jm_setThread :jm_run jm_run})


