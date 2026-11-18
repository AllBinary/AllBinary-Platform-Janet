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
# package org.allbinary.game.score.displayable

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/displayable/canvas/GameCommandCanvas :as GameCommandCanvas)
(defn- ColorFillPaintableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" "jm_getInstance" args))
(defn- HighScoreCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/HighScoreCommandsFactory" "jm_getInstance" args))
(defn- HighScoresHelperBase/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/game/score/HighScoresHelperBase" "jnew_0" args))
(defn- NoHighScoresFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NoHighScoresFactory" "jm_getInstance" args))
(defn- NullHighScoresSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- SimpleTextPaintable/jnew_2 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/SimpleTextPaintable" "jnew_2" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- SecondaryThreadPool/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/thread/SecondaryThreadPool" "jm_getInstance" args))
(defn- HighScoreRunnable/jnew_1 [& args] (JR/call jfile "./HighScoreRunnable" "jnew_1" args))

# Java class HighScoresCanvas
(var jproto nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jnew_6 nil)
(var jm_initCommands nil)
(var jm_open nil)
(var jm_close nil)
(var jm_paint nil)
(var jm_executeUpdate nil)
(var jm_getHighScoresPaintable nil)
(var jm_setHighScoresArray nil)
(var jm_updateCommand nil)
(var jm_getGameInfo nil)
(var jm_setPaintable nil)

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "HighScoresCanvas"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

    
(set jnew_6 (fn jnew_6 [_commandListener _allBinaryGameLayerManager _gameInfo _paintable _highScoresFactoryInterface _highScoresCanvasInputProcessorFactoryInterface]
    (var this (table/setproto @{:jclass "HighScoresCanvas" :f_paintable nil :f_highScoreCommandsFactory nil :f_waitPaintable nil :f_highScoresPaintable nil :f_highScoresFactoryInterface nil :f_colorFillPaintable nil :f_highScoresHelper nil :f_gameInfo nil :f_highScoresCanvasInputProcessor nil :f_currentCommand nil :f_hasPainted false} jproto))
    (put this :f_paintable (NullPaintable/jm_getInstance))
    (put this :f_highScoreCommandsFactory (HighScoreCommandsFactory/jm_getInstance))
    (put this :f_waitPaintable (SimpleTextPaintable/jnew_2 ((this :f_commonStrings) :f_PLEASE_WAIT_FOR_SERVER) ((BasicColorFactory/jm_getInstance) :f_WHITE)))
    
    
    
    (put this :f_highScoresHelper (HighScoresHelperBase/jnew_0))
    
    
    (put this :f_currentCommand (((this :f_highScoreCommandsFactory) :f_HIGH_SCORE_COMMANDS) 0))
    (put this :f_hasPainted false)
        (JR/superInit this (GameCommandCanvas/jnew_4 _commandListener (jstatic_NAME) (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) (:jm_getForegroundBasicColor _allBinaryGameLayerManager)))
        (JR/className (this :f_logUtil))
        (set (this :f_highScoresPaintable) _paintable)
        (set (this :f_highScoresFactoryInterface) _highScoresFactoryInterface)
        (set (this :f_highScoresCanvasInputProcessor) (:jm_getInstance _highScoresCanvasInputProcessorFactoryInterface this))
        (set (this :f_gameInfo) _gameInfo)
        (:jm_setBasicColorP (this :f_waitPaintable) (:jm_getForegroundBasicColor _allBinaryGameLayerManager))
        (:jm_setBasicColorP (:jm_getHighScoresPaintable this) (:jm_getForegroundBasicColor _allBinaryGameLayerManager))
        (set (this :f_colorFillPaintable) (:jm_getInstance (ColorFillPaintableFactory/jm_getInstance) (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) false))
        (if (= (length (:jm_getHighScoresArray (this :f_highScoresHelper))) (length ((NoHighScoresFactory/jm_getInstance) :f_NO_HIGH_SCORES)))
            (do
            (:jm_setPaintable this (this :f_waitPaintable)))
            (do
            (JR/className (this :f_logUtil))
            (:jm_updateCommand this (this :f_currentCommand))
            (:jm_setPaintable this (:jm_getHighScoresPaintable this))))
        (:jm_runTask (SecondaryThreadPool/jm_getInstance) (HighScoreRunnable/jnew_1 this))
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (:jm_removeAllCommands this)
        (:jm_addCommand this ((GameCommandsFactory/jm_getInstance) :f_CLOSE_AND_SHOW_GAME_CANVAS))
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_open (fn jm_open [this]
        ((get GameCommandCanvas/jproto :jm_open) this)
        (:jm_open (this :f_highScoresCanvasInputProcessor))))
    
(set jm_close (fn jm_close [this]
        ((get GameCommandCanvas/jproto :jm_close) this)
        (:jm_close (this :f_highScoresCanvasInputProcessor))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_colorFillPaintable) _graphics)
        (:jm_paint (this :f_paintable) _graphics)
        (if (not= (this :f_waitPaintable) (this :f_paintable))
            (do
            (:jm_paint (this :f_highScoresCanvasInputProcessor) _graphics)))
        ((get GameCommandCanvas/jproto :jm_paint) this _graphics)
        (set (this :f_hasPainted) true)))
    
(set jm_executeUpdate (fn jm_executeUpdate [this]
        (try
            (do
            (:jm_fetchHighScores (this :f_highScoresFactoryInterface) (:jm_getGameInfo this) this))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_getHighScoresPaintable (fn jm_getHighScoresPaintable [this]
    (label jreturn
        (return jreturn (this :f_highScoresPaintable)))))
    
(set jm_setHighScoresArray (fn jm_setHighScoresArray [this _highScoresArray]
        (try
            (do
            (if (not (nil? _highScoresArray))
                (do
                (JR/className (this :f_logUtil)))
                (do
                (JR/className (this :f_logUtil))))
            (:jm_setHighScoresArray (this :f_highScoresHelper) _highScoresArray)
            (:jm_updateCommand this (this :f_currentCommand))
            (:jm_setPaintable this (:jm_getHighScoresPaintable this)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_updateCommand (fn jm_updateCommand [this _command]
        (JR/className (this :f_logUtil))
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (if (:jm_isHighScoreCommand (this :f_highScoreCommandsFactory) _command)
            (do
            (var _index (:jm_getIndex (this :f_highScoreCommandsFactory) _command))
            (var _nextIndex (JR/i32 (+ _index 1)))
            (var _highScoresArray (:jm_getHighScoresArray (this :f_highScoresHelper)))
            (if (>= _nextIndex (length _highScoresArray))
                (do
                (set _nextIndex 0)))
            (if (> (length _highScoresArray) 0)
                (do
                (:jm_setHighScores (:jm_getHighScoresPaintable this) (_highScoresArray _index)))
                (do
                (:jm_setHighScores (:jm_getHighScoresPaintable this) (NullHighScoresSingletonFactory/jm_getInstance))))
            (if (not= _index _nextIndex)
                (do
                (:jm_removeAllCommands this)
                (:jm_addCommand this (_gameCommandsFactory :f_CLOSE_AND_SHOW_GAME_CANVAS))
                (:jm_addCommand this (((this :f_highScoreCommandsFactory) :f_HIGH_SCORE_COMMANDS) _nextIndex))))))
        (set (this :f_currentCommand) _command)
        (:jm_close this)
        ((get GameCommandCanvas/jproto :jm_initMenu) this)
        (:jm_open this)
        (JR/className (this :f_repaintBehavior))))
    
(set jm_getGameInfo (fn jm_getGameInfo [this]
    (label jreturn
        (return jreturn (this :f_gameInfo)))))
    
(set jm_setPaintable (fn jm_setPaintable [this _paintable]
        (set (this :f_paintable) _paintable)
        (JR/className (this :f_repaintBehavior))))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands :jm_open jm_open :jm_close jm_close :jm_paint jm_paint :jm_executeUpdate jm_executeUpdate :jm_getHighScoresPaintable jm_getHighScoresPaintable :jm_setHighScoresArray jm_setHighScoresArray :jm_updateCommand jm_updateCommand :jm_getGameInfo jm_getGameInfo :jm_setPaintable jm_setPaintable} GameCommandCanvas/jproto))


