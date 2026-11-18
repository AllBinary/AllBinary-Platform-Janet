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
(defn- GameInfo/jnew_5 [& args] (JR/call jfile "./GameInfo" "jnew_5" args))

# Java class GameInfoCopyFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstanceMaxLevel nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameInfoCopyFactory"} jproto))
    this))

    
(set jm_getInstanceMaxLevel (fn jm_getInstanceMaxLevel [_gameInfo _maxLevel]
    (label jreturn
        (return jreturn (GameInfo/jnew_5 (:jm_getGameType _gameInfo) (:jm_getGameMode _gameInfo) (:jm_getPlayerType _gameInfo) _maxLevel (:jm_getCurrentLevel _gameInfo))))))
    
(set jm_getInstance (fn jm_getInstance [_gameInfo]
    (label jreturn
        (return jreturn (GameInfo/jnew_5 (:jm_getGameType _gameInfo) (:jm_getGameMode _gameInfo) (:jm_getPlayerType _gameInfo) (:jm_getHighestLevel _gameInfo) (:jm_getCurrentLevel _gameInfo))))))

(set jproto @{})


