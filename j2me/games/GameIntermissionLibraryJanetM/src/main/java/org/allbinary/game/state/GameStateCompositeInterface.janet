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

# Java class GameStateCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setGameState nil)
(var jm_getGameState nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameStateCompositeInterface"} jproto))
    this))

    
(set jm_setGameState (fn jm_setGameState [this _gameState]
    (error (JR/newException "AbstractMethodError" "setGameState"))))
    
(set jm_getGameState (fn jm_getGameState [this]
    (error (JR/newException "AbstractMethodError" "getGameState"))))

(set jproto @{:jm_setGameState jm_setGameState :jm_getGameState jm_getGameState})


