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

# Java class GameStrings
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
    (var this (table/setproto @{:jclass "GameStrings" :f_PROCESS_TICK nil :f_ON_GAME_INITIALIZED nil :f_UPDATESURFACE nil :f_ON_SET_DISPLAYABLE nil :f_UNPAUSE nil :f_TOGGLE_MENU nil :f_SET_GAME_OVER nil :f_GAME_STATE nil :f_SET_GAME_STATE nil :f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE nil} jproto))
    (put this :f_PROCESS_TICK "processTick")
    (put this :f_ON_GAME_INITIALIZED "onGameInitialized")
    (put this :f_UPDATESURFACE "updateSurface")
    (put this :f_ON_SET_DISPLAYABLE "onSetDisplayable")
    (put this :f_UNPAUSE "unPause")
    (put this :f_TOGGLE_MENU "toggleMenu")
    (put this :f_SET_GAME_OVER "setGameOver")
    (put this :f_GAME_STATE "Game State: ")
    (put this :f_SET_GAME_STATE "setGameState")
    (put this :f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE "stopGameCanvasRunnableInterface")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


