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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PlayerGameInput/jnew_3 [& args] (JR/call jfile "../../../../org/allbinary/game/input/PlayerGameInput" "jnew_3" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- StaticViewPosition/jnew_3 [& args] (JR/call jfile "../../../../org/allbinary/view/StaticViewPosition" "jnew_3" args))
(import ./AllBinaryGameLayer :as AllBinaryGameLayer)

# Java class PlayerGameInputGameLayer
(var jproto nil)
(var jnew_1 nil)
(var jm_getPlayerGameInput nil)
(var jm_initInputProcessors nil)
(var jm_processInput nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_playerInputId]
    (var this (table/setproto @{:jclass "PlayerGameInputGameLayer" :f_playerGameInput nil} jproto))
    
        (JR/superInit this (AllBinaryGameLayer/jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) 0 0) (StaticViewPosition/jnew_3 0 0 0)))
        (set (this :f_playerGameInput) (PlayerGameInput/jnew_3 (:jm_getGameKeyEventList this) (BasicArrayListD/jnew_0) _playerInputId))
        (var _canvasStrings (CanvasStrings/jm_getInstance))
        (JR/className (this :f_logUtil))
    this))
    
(set jm_getPlayerGameInput (fn jm_getPlayerGameInput [this]
    (label jreturn
        (return jreturn (this :f_playerGameInput)))))
    
(set jm_initInputProcessors (fn jm_initInputProcessors [this]
    nil))
    
(set jm_processInput (fn jm_processInput [this _myManager]
    nil))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))

(set jproto (table/setproto @{:jm_getPlayerGameInput jm_getPlayerGameInput :jm_initInputProcessors jm_initInputProcessors :jm_processInput jm_processInput :jm_paint jm_paint} AllBinaryGameLayer/jproto))


