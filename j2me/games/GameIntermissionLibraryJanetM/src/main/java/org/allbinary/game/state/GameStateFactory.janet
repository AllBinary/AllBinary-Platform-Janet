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
# package org.allbinary.game.state

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- GameState/jnew_2 [& args] (JR/call jfile "./GameState" "jnew_2" args))

# Java class GameStateFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createGameState nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameStateFactory" :f_index 0 :f_NO_GAME_STATE nil :f_PLAYING_GAME_STATE nil :f_SHOW_END_RESULT_GAME_STATE nil :f_SHOW_HIGH_SCORE_GAME_STATE nil} jproto))
    (put this :f_index 0)
    (put this :f_NO_GAME_STATE (:jm_createGameState this "NO_GAME_STATE"))
    (put this :f_PLAYING_GAME_STATE (:jm_createGameState this "PLAYING_GAME_STATE"))
    (put this :f_SHOW_END_RESULT_GAME_STATE (:jm_createGameState this "SHOW_END_RESULT_GAME_STATE"))
    (put this :f_SHOW_HIGH_SCORE_GAME_STATE (:jm_createGameState this "SHOW_HIGH_SCORE_GAME_STATE"))
    this))
    
(set jm_createGameState (fn jm_createGameState [this _name]
    (label jreturn
        (return jreturn (GameState/jnew_2 _name (do (def jold (this :f_index)) (set (this :f_index) (JR/i32 (+ (this :f_index) 1))) jold))))))

(set jproto @{:jm_createGameState jm_createGameState})


