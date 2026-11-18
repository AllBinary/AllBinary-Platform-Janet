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
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/input/InputProcessor :as InputProcessor)
(defn- PlatformInputMappingFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" "jm_getInstance" args))
(defn- DownGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" "jm_getInstance" args))
(defn- DownKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/DownKeyEventHandler" "jm_getInstance" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- UpGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../../../java/lang/Integer :as Integer)

# Java class GameCanvasInputProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_keyPressedByDevice nil)
(var jm_keyReleasedByDevice nil)
(var jm_removeGameKeyEvent nil)

    
(set jnew_1 (fn jnew_1 [_allBinaryGameCanvas]
    (var this (table/setproto @{:jclass "GameCanvasInputProcessor" :f_logUtil nil :f_allBinaryGameCanvas nil :f_downGameKeyEventHandler nil :f_upGameKeyEventHandler nil :f_downKeyEventHandler nil :f_smallIntegerSingletonFactory nil :f_inputToGameKeyMapping nil :f_NONE nil :f_gameKeyEventFactory nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_downGameKeyEventHandler (DownGameKeyEventHandler/jm_getInstance))
    (put this :f_upGameKeyEventHandler (UpGameKeyEventHandler/jm_getInstance))
    (put this :f_downKeyEventHandler (DownKeyEventHandler/jm_getInstance))
    (put this :f_smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
    (put this :f_inputToGameKeyMapping (JR/className (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance))))
    (put this :f_NONE ((GameKeyFactory/jm_getInstance) :f_NONE))
    (put this :f_gameKeyEventFactory (GameKeyEventFactory/jm_getInstance))
    (JR/superInit this (InputProcessor/jnew_0))
        (set (this :f_allBinaryGameCanvas) _allBinaryGameCanvas)
        (:jm_init (this :f_inputToGameKeyMapping) (this :f_allBinaryGameCanvas))
    this))
    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
        (try
            (do
            (var _gameKey (:jm_getInstanceForCanvas (this :f_inputToGameKeyMapping) (this :f_allBinaryGameCanvas) _keyCode))
            (if (not= _gameKey (this :f_NONE))
                (do
                (var _gameKeyEvent (:jm_getInstanceForInput (this :f_gameKeyEventFactory) (this :f_allBinaryGameCanvas) _gameKey))
                (:jm_fireEvent (this :f_downGameKeyEventHandler) _gameKeyEvent)
                (JR/className (:jm_getInstanceForDevice (this :f_downGameKeyEventHandler) _deviceId)))
                (do
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) ((this :f_gameInputStrings) :f_NO_KEY)) _keyCode)) this ((this :f_gameInputStrings) :f_ADD_KEY_EVENT))))
            (var _keyCodeAsInteger (:jm_getAtNoThrow (this :f_smallIntegerSingletonFactory) _keyCode))
            (:jm_fireEventI (this :f_downKeyEventHandler) _keyCodeAsInteger)
            (JR/className (:jm_getInstanceForDevice (this :f_downKeyEventHandler) _deviceId)))
            ([_e] (do
            (:jm_put (this :f_logUtil) "Key Event Error" this ((this :f_gameInputStrings) :f_ADD_KEY_EVENT) _e))))))
    
(set jm_keyReleasedByDevice (fn jm_keyReleasedByDevice [this _canvas _keyCode _deviceId]
        (:jm_removeGameKeyEvent this _canvas _keyCode _deviceId false)))
    
(set jm_removeGameKeyEvent (fn jm_removeGameKeyEvent [this _canvas _keyCode _deviceId _repeated]
        (try
            (do
            (var _gameKey (:jm_getInstanceForCanvas (this :f_inputToGameKeyMapping) _canvas _keyCode))
            (if (not= _gameKey (this :f_NONE))
                (do
                (var _gameKeyEventSourceInterface _canvas)
                (var _gameKeyEvent (:jm_getInstanceForInput (this :f_gameKeyEventFactory) _gameKeyEventSourceInterface _gameKey))
                (:jm_fireEvent (this :f_upGameKeyEventHandler) _gameKeyEvent)
                (JR/className (:jm_getInstanceForDevice (this :f_upGameKeyEventHandler) _deviceId)))
                (do
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) ((this :f_gameInputStrings) :f_NO_KEY)) _keyCode)) this ((this :f_gameInputStrings) :f_REMOVE_KEY_EVENT)))))
            ([_e] (do
            (:jm_put (this :f_logUtil) "Key Event Error" this ((this :f_gameInputStrings) :f_REMOVE_KEY_EVENT) _e))))))

(set jproto (table/setproto @{:jm_keyPressedByDevice jm_keyPressedByDevice :jm_keyReleasedByDevice jm_keyReleasedByDevice :jm_removeGameKeyEvent jm_removeGameKeyEvent} InputProcessor/jproto))


