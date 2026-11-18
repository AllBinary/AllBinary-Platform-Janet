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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "./InputFactory" "jm_getInstance" args))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyFactory" "jm_getInstance" args))

# Java class GameKeyMappingFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getGameKey nil)
(var jm_setGameKey nil)

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
    (var this (table/setproto @{:jclass "GameKeyMappingFactory" :f_intKeyToGameKey nil} jproto))
    (put this :f_intKeyToGameKey (array/new-filled ((InputFactory/jm_getInstance) :f_MAX) nil))
        (var _gameKeyFactory (GameKeyFactory/jm_getInstance))
        (:jm_setGameKey this (_gameKeyFactory :f_NONE))
        (:jm_setGameKey this (_gameKeyFactory :f_UP))
        (:jm_setGameKey this (_gameKeyFactory :f_DOWN))
        (:jm_setGameKey this (_gameKeyFactory :f_LEFT))
        (:jm_setGameKey this (_gameKeyFactory :f_RIGHT))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_POUND))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_STAR))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM0))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM1))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM2))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM3))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM4))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM5))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM6))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM7))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM8))
        (:jm_setGameKey this (_gameKeyFactory :f_KEY_NUM9))
        (:jm_setGameKey this (_gameKeyFactory :f_GAME_A))
        (:jm_setGameKey this (_gameKeyFactory :f_GAME_B))
        (:jm_setGameKey this (_gameKeyFactory :f_GAME_C))
        (:jm_setGameKey this (_gameKeyFactory :f_GAME_D))
        (:jm_setGameKey this (_gameKeyFactory :f_FIRE))
        (:jm_setGameKey this (_gameKeyFactory :f_LEVEL_DOWN))
        (:jm_setGameKey this (_gameKeyFactory :f_LEVEL_UP))
    this))
    
(set jm_getGameKey (fn jm_getGameKey [this _key]
    (label jreturn
        (return jreturn ((this :f_intKeyToGameKey) _key)))))
    
(set jm_setGameKey (fn jm_setGameKey [this _gameKey]
        (set ((this :f_intKeyToGameKey) (:jm_getId _gameKey)) _gameKey)))

(set jproto @{:jm_getGameKey jm_getGameKey :jm_setGameKey jm_setGameKey})


