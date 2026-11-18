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
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(import ./GameInput :as GameInput)
(defn- GameInputStrings/jm_getInstance [& args] (JR/call jfile "./GameInputStrings" "jm_getInstance" args))

# Java class PlayerGameInput
(var jproto nil)
(var jnew_3 nil)
(var jm_onPressGameKeyEvent nil)
(var jm_onDownGameKeyEvent nil)
(var jm_onDownKeyEvent nil)
(var jm_onDownKey nil)
(var jm_onUpGameKeyEvent nil)
(var jm_onUpKeyEvent nil)
(var jm_onEvent nil)
(var jm_getPlayerInputId nil)

    
(set jnew_3 (fn jnew_3 [_gameKeyEventList _removalGameKeyEventList _playerInputId]
    (var this (table/setproto @{:jclass "PlayerGameInput" :f_gameInputStrings nil :f_playerInputId 0} jproto))
    (put this :f_gameInputStrings (GameInputStrings/jm_getInstance))
    
        (JR/superInit this (GameInput/jnew_2 _gameKeyEventList _removalGameKeyEventList))
        (set (this :f_playerInputId) _playerInputId)
    this))
    
(set jm_onPressGameKeyEvent (fn jm_onPressGameKeyEvent [this _gameKeyEvent]
        (:jm_add this _gameKeyEvent)
        (:jm_addForRemoval this _gameKeyEvent)))
    
(set jm_onDownGameKeyEvent (fn jm_onDownGameKeyEvent [this _gameKeyEvent]
        (:jm_add this _gameKeyEvent)))
    
(set jm_onDownKeyEvent (fn jm_onDownKeyEvent [this _gameKeyEvent]
        (:jm_add this _gameKeyEvent)
        (:jm_addForRemoval this _gameKeyEvent)))
    
(set jm_onDownKey (fn jm_onDownKey [this _gameKeyEvent]
        (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START_LABEL)) (:jm_toString _gameKeyEvent))) this ((this :f_gameInputStrings) :f_ON_DOWN_GAME_KEY))))
    
(set jm_onUpGameKeyEvent (fn jm_onUpGameKeyEvent [this _gameKeyEvent]
        (:jm_addForRemoval this _gameKeyEvent)))
    
(set jm_onUpKeyEvent (fn jm_onUpKeyEvent [this _gameKeyEvent]
    nil))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_getPlayerInputId (fn jm_getPlayerInputId [this]
    (label jreturn
        (return jreturn (this :f_playerInputId)))))

(set jproto (table/setproto @{:jm_onPressGameKeyEvent jm_onPressGameKeyEvent :jm_onDownGameKeyEvent jm_onDownGameKeyEvent :jm_onDownKeyEvent jm_onDownKeyEvent :jm_onDownKey jm_onDownKey :jm_onUpGameKeyEvent jm_onUpGameKeyEvent :jm_onUpKeyEvent jm_onUpKeyEvent :jm_onEvent jm_onEvent :jm_getPlayerInputId jm_getPlayerInputId} GameInput/jproto))


