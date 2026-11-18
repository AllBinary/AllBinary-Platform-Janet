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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameStateFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/state/GameStateFactory" "jm_getInstance" args))

# Java class IntermissionFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IntermissionFactory" :f_START_LEVEL_INTERMISSION_GAME_STATE nil :f_WAIT_LEVEL_INTERMISSION_GAME_STATE nil :f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE nil :f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE nil} jproto))
    (put this :f_START_LEVEL_INTERMISSION_GAME_STATE (:jm_createGameState (GameStateFactory/jm_getInstance) "START_LEVEL_INTERMISSION_GAME_STATE"))
    (put this :f_WAIT_LEVEL_INTERMISSION_GAME_STATE (:jm_createGameState (GameStateFactory/jm_getInstance) "WAIT_LEVEL_INTERMISSION_GAME_STATE"))
    (put this :f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE (:jm_createGameState (GameStateFactory/jm_getInstance) "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE"))
    (put this :f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE (:jm_createGameState (GameStateFactory/jm_getInstance) "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


