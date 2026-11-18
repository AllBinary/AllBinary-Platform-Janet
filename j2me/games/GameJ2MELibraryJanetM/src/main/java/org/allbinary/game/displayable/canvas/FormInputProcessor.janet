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
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/input/InputProcessor :as InputProcessor)
(defn- PlatformKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/PlatformKeyFactory" "jm_getInstance" args))
(defn- DownKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/DownKeyEventHandler" "jm_getInstance" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- UpGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class FormInputProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_keyPressedByDevice nil)
(var jm_keyReleasedByDevice nil)

    
(set jnew_1 (fn jnew_1 [_allBinaryGameCanvas]
    (var this (table/setproto @{:jclass "FormInputProcessor" :f_logUtil nil :f_commonStrings nil :f_gameKeyEventFactory nil :f_downKeyEventHandler nil :f_upGameKeyEventHandler nil :f_inputFactory nil :f_platformKeyFactory nil :f_allBinaryGameCanvas nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_gameKeyEventFactory (GameKeyEventFactory/jm_getInstance))
    (put this :f_downKeyEventHandler (DownKeyEventHandler/jm_getInstance))
    (put this :f_upGameKeyEventHandler (UpGameKeyEventHandler/jm_getInstance))
    (put this :f_inputFactory (InputFactory/jm_getInstance))
    (put this :f_platformKeyFactory (PlatformKeyFactory/jm_getInstance))
    
    (JR/superInit this (InputProcessor/jnew_0))
        (set (this :f_allBinaryGameCanvas) _allBinaryGameCanvas)
    this))
    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
        (try
            (do
            (PreLogUtil/jm_put (:jm_toString (:jm_appendint (:jm_append (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) ((this :f_inputFactory) :f_KEY_CODE_LABEL)) _keyCode) ((CommonSeps/jm_getInstance) :f_SPACE)) ((this :f_inputFactory) :f_DEVICE_ID_LABEL)) _deviceId)) this ((this :f_gameInputStrings) :f_KEY_PRESSED))
            (var _input (:jm_getInstanceById (this :f_inputFactory) _keyCode))
            (var _gameKeyEvent (:jm_getInstanceForInput (this :f_gameKeyEventFactory) (this :f_allBinaryGameCanvas) _input))
            (:jm_fireEventForGameKeyEvent (this :f_downKeyEventHandler) _gameKeyEvent))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_gameInputStrings) :f_ADD_KEY_EVENT) _e))))))
    
(set jm_keyReleasedByDevice (fn jm_keyReleasedByDevice [this _canvas _keyCode _deviceId]
        (try
            (do
            (var _input (:jm_getInstanceById (this :f_inputFactory) _keyCode))
            (if (:jm_isEnter (this :f_platformKeyFactory) _input)
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_appendint (:jm_append (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) ((this :f_inputFactory) :f_KEY_CODE_LABEL)) _keyCode) ((CommonSeps/jm_getInstance) :f_SPACE)) ((this :f_inputFactory) :f_DEVICE_ID_LABEL)) _deviceId)) this ((this :f_gameInputStrings) :f_KEY_RELEASED))
                (var _gameKey ((GameKeyFactory/jm_getInstance) :f_KEY_NUM0))
                (var _gameKeyEventSourceInterface _canvas)
                (var _gameKeyEvent (:jm_getInstanceForInput (this :f_gameKeyEventFactory) _gameKeyEventSourceInterface _gameKey))
                (:jm_fireEvent (this :f_upGameKeyEventHandler) _gameKeyEvent)
                (JR/className (:jm_getInstanceForDevice (this :f_upGameKeyEventHandler) _deviceId)))))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_gameInputStrings) :f_ADD_KEY_EVENT) _e))))))

(set jproto (table/setproto @{:jm_keyPressedByDevice jm_keyPressedByDevice :jm_keyReleasedByDevice jm_keyReleasedByDevice} InputProcessor/jproto))


