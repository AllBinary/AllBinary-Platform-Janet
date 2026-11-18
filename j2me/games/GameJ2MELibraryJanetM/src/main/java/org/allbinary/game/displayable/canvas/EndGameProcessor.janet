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
(import ../../../../../org/allbinary/canvas/Processor :as Processor)
(defn- NullHighScoresSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory" "jm_getInstance" args))
(defn- GameStateFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/state/GameStateFactory" "jm_getInstance" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))

# Java class EndGameProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_gameCanvas]
    (var this (table/setproto @{:jclass "EndGameProcessor" :f_gameStateFactory nil :f_gameCanvas nil :f_WAIT 0} jproto))
    (put this :f_gameStateFactory (GameStateFactory/jm_getInstance))
    
    (put this :f_WAIT 5000)
    (JR/superInit this (Processor/jnew_0))
        (set (this :f_gameCanvas) _gameCanvas)
    this))
    
(set jm_process (fn jm_process [this]
        (if (:jm_isHighScoreSubmitted (this :f_gameCanvas))
            (do
            (if (JR/className (:jm_getGameStateTimeHelper (this :f_gameCanvas)))
                (do
                (if (= (:jm_getGameState (this :f_gameCanvas)) ((this :f_gameStateFactory) :f_SHOW_END_RESULT_GAME_STATE))
                    (do
                    (var _highScoresBase ((this :f_gameCanvas) :f_highScoresHelper))
                    (var _highScores (:jm_getSelectedHighScores _highScoresBase))
                    (if (not= _highScores (NullHighScoresSingletonFactory/jm_getInstance))
                        (do
                        (:jm_selectHighScores _highScoresBase)
                        (JR/className (:jm_getRealHighScoresPaintable (this :f_gameCanvas)))
                        (:jm_setGameState (this :f_gameCanvas) ((this :f_gameStateFactory) :f_SHOW_HIGH_SCORE_GAME_STATE))
                        (:jm_setHighScoresPaintable (this :f_gameCanvas) (:jm_getRealHighScoresPaintable (this :f_gameCanvas))))))
                    (if (= (:jm_getGameState (this :f_gameCanvas)) ((this :f_gameStateFactory) :f_SHOW_HIGH_SCORE_GAME_STATE))
                    (do
                    (:jm_setGameState (this :f_gameCanvas) ((this :f_gameStateFactory) :f_SHOW_END_RESULT_GAME_STATE))
                    (:jm_setHighScoresPaintable (this :f_gameCanvas) (NullPaintable/jm_getInstance)))))))))))

(set jproto (table/setproto @{:jm_process jm_process} Processor/jproto))


