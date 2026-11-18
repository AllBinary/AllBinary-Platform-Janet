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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class EndGameInfo
(var jproto nil)
(var jnew_0 nil)
(var jm_update nil)
(var jm_getGameOverStr nil)
(var jm_setGameOverStr nil)
(var jm_getWinStr nil)
(var jm_setWinStr nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "EndGameInfo" :f_NORMAL_GAME_OVER_WIN nil :f_TEASER_DEMO_GAME_END_LAST_LEVEL nil :f_TEASER_DEMO_GAME_END nil :f_gameOverStr nil :f_winStr nil} jproto))
    (put this :f_NORMAL_GAME_OVER_WIN "You Won")
    (put this :f_TEASER_DEMO_GAME_END_LAST_LEVEL "End of Demo.")
    (put this :f_TEASER_DEMO_GAME_END "Demo Game Over.")
    (put this :f_gameOverStr ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_winStr (this :f_gameOverStr))
    this))

    
(set jm_update (fn jm_update [this _gameInfo _myCanvas]
        (if (:jm_isLastLevel _gameInfo)
            (do
            (:jm_setWinStr this (this :f_TEASER_DEMO_GAME_END_LAST_LEVEL))
            (:jm_setGameOverStr this (this :f_TEASER_DEMO_GAME_END_LAST_LEVEL)))
            (do
            (:jm_setWinStr this (this :f_NORMAL_GAME_OVER_WIN))
            (:jm_setGameOverStr this (this :f_TEASER_DEMO_GAME_END))))))
    
(set jm_getGameOverStr (fn jm_getGameOverStr [this]
    (label jreturn
        (return jreturn (this :f_gameOverStr)))))
    
(set jm_setGameOverStr (fn jm_setGameOverStr [this _gameOverStr]
        (set (this :f_gameOverStr) _gameOverStr)))
    
(set jm_getWinStr (fn jm_getWinStr [this]
    (label jreturn
        (return jreturn (this :f_winStr)))))
    
(set jm_setWinStr (fn jm_setWinStr [this _winStr]
        (set (this :f_winStr) _winStr)))

(set jproto @{:jm_update jm_update :jm_getGameOverStr jm_getGameOverStr :jm_setGameOverStr jm_setGameOverStr :jm_getWinStr jm_getWinStr :jm_setWinStr jm_setWinStr})


