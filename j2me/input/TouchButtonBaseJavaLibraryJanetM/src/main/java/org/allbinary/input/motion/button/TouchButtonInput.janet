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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/game/input/Input :as Input)
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- GameKeyEvent/jstatic_NONE [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEvent" "jstatic_NONE" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class TouchButtonInput
(var jproto nil)
(var jnew_2 nil)
(var jm_update nil)
(var jm_getSourceId nil)
(var jm_getGameKeyEvent nil)

    
(set jnew_2 (fn jnew_2 [_id _name]
    (var this (table/setproto @{:jclass "TouchButtonInput" :f_logUtil nil :f_gameKeyEventFactory nil :f_TOUCH_BUTTON_SOURCE_ID 0 :f_gameKeyEvent nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_gameKeyEventFactory (GameKeyEventFactory/jm_getInstance))
    (put this :f_TOUCH_BUTTON_SOURCE_ID ((this :f_gameKeyEventFactory) :f_TOUCH_BUTTON_SOURCE_ID))
    (put this :f_gameKeyEvent (GameKeyEvent/jstatic_NONE))
        (JR/superInit this (Input/jnew_2 _id _name))
        (var _inputFactory (InputFactory/jm_getInstance))
        (:jm_add _inputFactory (:jm_getId this) this)
    this))
    
(set jm_update (fn jm_update [this _inputToGameKeyMapping]
        (try
            (do
            (var _gameKey (:jm_getInstance _inputToGameKeyMapping (:jm_getId this)))
            (set (this :f_gameKeyEvent) (:jm_getInstanceForInput (this :f_gameKeyEventFactory) this _gameKey)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_UPDATE) _e))))))
    
(set jm_getSourceId (fn jm_getSourceId [this]
    (label jreturn
        (return jreturn (this :f_TOUCH_BUTTON_SOURCE_ID)))))
    
(set jm_getGameKeyEvent (fn jm_getGameKeyEvent [this]
    (label jreturn
        (return jreturn (this :f_gameKeyEvent)))))

(set jproto (table/setproto @{:jm_update jm_update :jm_getSourceId jm_getSourceId :jm_getGameKeyEvent jm_getGameKeyEvent} Input/jproto))


