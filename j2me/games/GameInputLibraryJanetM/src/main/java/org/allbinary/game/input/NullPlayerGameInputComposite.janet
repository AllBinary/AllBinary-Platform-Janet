# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- NoPlayerGameInput/jm_getInstance [& args] (JR/call jfile "./NoPlayerGameInput" "jm_getInstance" args))

# Java class NullPlayerGameInputComposite
(var jproto nil)
(var jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE :jnone)
(var jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE nil)
(var jsetstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE nil)
(var jnew_0 nil)
(var jm_getName nil)
(var jm_processInput nil)
(var jm_initInputProcessors nil)
(var jm_getPlayerGameInput nil)

(set jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE (fn jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE []
  (when (= jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE :jnone) (set jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE (jnew_0)))
  jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE))
(set jsetstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE (fn jsetstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE [value] (set jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullPlayerGameInputComposite"} jproto))
    this))

    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_processInput (fn jm_processInput [this _layerManager]
    nil))
    
(set jm_initInputProcessors (fn jm_initInputProcessors [this]
    nil))
    
(set jm_getPlayerGameInput (fn jm_getPlayerGameInput [this]
    (label jreturn
        (return jreturn (NoPlayerGameInput/jm_getInstance)))))

(set jproto @{:jm_getName jm_getName :jm_processInput jm_processInput :jm_initInputProcessors jm_initInputProcessors :jm_getPlayerGameInput jm_getPlayerGameInput})


