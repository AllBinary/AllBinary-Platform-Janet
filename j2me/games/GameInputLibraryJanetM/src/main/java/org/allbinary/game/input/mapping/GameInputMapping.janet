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
# package org.allbinary.game.input.mapping

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameKey/jstatic_NULL_GAME_KEY [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameKey" "jstatic_NULL_GAME_KEY" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class GameInputMapping
(var jproto nil)
(var jnew_2 nil)
(var jm_setGameKey nil)
(var jm_getGameKey nil)
(var jm_setName nil)
(var jm_getName nil)

    
(set jnew_2 (fn jnew_2 [_name _gameKey]
    (var this (table/setproto @{:jclass "GameInputMapping" :f_name nil :f_gameKey nil} jproto))
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_gameKey (GameKey/jstatic_NULL_GAME_KEY))
        (:jm_setName this _name)
        (:jm_setGameKey this _gameKey)
    this))
    
(set jm_setGameKey (fn jm_setGameKey [this _gameKey]
        (set (this :f_gameKey) _gameKey)))
    
(set jm_getGameKey (fn jm_getGameKey [this]
    (label jreturn
        (return jreturn (this :f_gameKey)))))
    
(set jm_setName (fn jm_setName [this _name]
        (set (this :f_name) _name)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_setGameKey jm_setGameKey :jm_getGameKey jm_getGameKey :jm_setName jm_setName :jm_getName jm_getName})


