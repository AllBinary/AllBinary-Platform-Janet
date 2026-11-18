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
# package org.allbinary.graphics.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../javax/microedition/lcdui/Canvas :as Canvas)
(defn- NullCommandListener/jstatic_NULL_COMMAND_LISTENER [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullCommandListener" "jstatic_NULL_COMMAND_LISTENER" args))
(defn- MyCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" "jm_getInstance" args))
(defn- TouchJ2ME/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/input/TouchJ2ME" "jnew_0" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "./CanvasStrings" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "./DisplayInfoSingleton" "jm_getInstance" args))

# Java class MyCanvas
(var jproto nil)
(var jnew_2 nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_setFullScreenMode nil)
(var jm_sizeChanged nil)
(var jm_getCommandStack nil)
(var jm_isCommand nil)
(var jm_addCommand nil)
(var jm_removeCommand nil)
(var jm_removeAllCommands nil)
(var jm_setCommandListener nil)
(var jm_getCustomCommandListener nil)
(var jm_isPaused nil)
(var jm_removePauseCommand nil)
(var jm_pause nil)
(var jm_unPause nil)
(var jm_process nil)
(var jm_paint nil)
(var jm_draw nil)
(var jm_hasChild nil)
(var jm_destroy nil)
(var jm_setPaused nil)
(var jm_keyPressedByDevice nil)
(var jm_keyRepeatedByDevice nil)
(var jm_keyReleasedByDevice nil)
(var jm_pointerDragged nil)
(var jm_pointerPressed nil)
(var jm_pointerReleased nil)
(var jm_nextSong nil)

    
(set jnew_2 (fn jnew_2 [_name _childNameList]
    (var this (table/setproto @{:jclass "MyCanvas" :f_logUtil nil :f_commonStrings nil :f_canvasStrings nil :f_stringUtil nil :f_displayInfo nil :f_name nil :f_childNameList nil :f_commandStack nil :f_commandListener nil :f_paused false :f_touchME nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_canvasStrings (CanvasStrings/jm_getInstance))
    (put this :f_stringUtil (StringUtil/jm_getInstance))
    (put this :f_displayInfo (DisplayInfoSingleton/jm_getInstance))
    
    
    
    (put this :f_commandListener (NullCommandListener/jstatic_NULL_COMMAND_LISTENER))
    
    (put this :f_touchME (TouchJ2ME/jnew_0))
    (JR/superInit this (Canvas/jnew_0))
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_CONSTRUCTOR) this ((this :f_commonStrings) :f_CONSTRUCTOR))
        (:jm_update (this :f_displayInfo) this ((this :f_canvasStrings) :f_CONSTRUCTOR))
        (set (this :f_name) _name)
        (set (this :f_childNameList) _childNameList)
        (set (this :f_commandStack) (:jm_createStack (StdUtil/jm_getInstance)))
    this))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn ((get Canvas/jproto :jm_getWidth) this)))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn ((get Canvas/jproto :jm_getHeight) this)))))
    
(set jm_setFullScreenMode (fn jm_setFullScreenMode [this _mode]
        ((get Canvas/jproto :jm_setFullScreenMode) this _mode)
        (:jm_update (this :f_displayInfo) this ((this :f_canvasStrings) :f_SET_FULL_SCREEN_MODE))))
    
(set jm_sizeChanged (fn jm_sizeChanged [this _w _h]
        (:jm_update (this :f_displayInfo) this ((this :f_canvasStrings) :f_SIZE_CHANGED))))
    
(set jm_getCommandStack (fn jm_getCommandStack [this]
    (label jreturn
        (return jreturn (this :f_commandStack)))))
    
(set jm_isCommand (fn jm_isCommand [this _command]
    (label jreturn
        (return jreturn (:jm_contains (this :f_commandStack) _command)))))
    
(set jm_addCommand (fn jm_addCommand [this _command]
        (if (not (:jm_contains (this :f_commandStack) _command))
            (do
            (:jm_push (this :f_commandStack) _command)
            ((get Canvas/jproto :jm_addCommand) this _command)))))
    
(set jm_removeCommand (fn jm_removeCommand [this _command]
        (:jm_removeElement (this :f_commandStack) _command)
        ((get Canvas/jproto :jm_removeCommand) this _command)))
    
(set jm_removeAllCommands (fn jm_removeAllCommands [this]
        (var _size (:jm_size (this :f_commandStack)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            ((get Canvas/jproto :jm_removeCommand) this (:jm_pop (this :f_commandStack))))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_setCommandListener (fn jm_setCommandListener [this _l]
        ((get Canvas/jproto :jm_setCommandListener) this _l)
        (set (this :f_commandListener) _l)))
    
(set jm_getCustomCommandListener (fn jm_getCustomCommandListener [this]
    (label jreturn
        (return jreturn (this :f_commandListener)))))
    
(set jm_isPaused (fn jm_isPaused [this]
    (label jreturn
        (return jreturn (this :f_paused)))))
    
(set jm_removePauseCommand (fn jm_removePauseCommand [this]
        (:jm_removeCommand this ((MyCommandsFactory/jm_getInstance) :f_PAUSE_COMMAND))))
    
(set jm_pause (fn jm_pause [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_canvasStrings) :f_PAUSE))
        (:jm_removePauseCommand this)
        (:jm_addCommand this ((MyCommandsFactory/jm_getInstance) :f_RESUME_COMMAND))
        (:jm_setPaused this true)))
    
(set jm_unPause (fn jm_unPause [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_canvasStrings) :f_UN_PAUSE))
        (:jm_removeCommand this ((MyCommandsFactory/jm_getInstance) :f_RESUME_COMMAND))
        (:jm_addCommand this ((MyCommandsFactory/jm_getInstance) :f_PAUSE_COMMAND))
        (:jm_setPaused this false)))
    
(set jm_process (fn jm_process [this]
        (:jm_process (this :f_displayInfo))))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_draw (fn jm_draw [this _graphics]
    nil))
    
(set jm_hasChild (fn jm_hasChild [this _displayable]
    (label jreturn
        (return jreturn (:jm_contains (this :f_childNameList) (_displayable :f_name))))))
    
(set jm_destroy (fn jm_destroy [this]
        (:jm_putF (this :f_logUtil) "Destroyed MyCanvas" this "destroy")))
    
(set jm_setPaused (fn jm_setPaused [this _isPaused]
        (set (this :f_paused) _isPaused)))
    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
    nil))
    
(set jm_keyRepeatedByDevice (fn jm_keyRepeatedByDevice [this _keyCode _deviceId]
    nil))
    
(set jm_keyReleasedByDevice (fn jm_keyReleasedByDevice [this _keyCode _deviceId]
    nil))
    
(set jm_pointerDragged (fn jm_pointerDragged [this _x _y]
        (:jm_pointerDragged (this :f_touchME) _x _y)))
    
(set jm_pointerPressed (fn jm_pointerPressed [this _x _y]
        (:jm_pointerPressed (this :f_touchME) _x _y)))
    
(set jm_pointerReleased (fn jm_pointerReleased [this _x _y]
        (:jm_pointerReleased (this :f_touchME) _x _y)))
    
(set jm_nextSong (fn jm_nextSong [this _nextSongSound _leftVolume _rightVolume]
    nil))

(set jproto (table/setproto @{:jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_setFullScreenMode jm_setFullScreenMode :jm_sizeChanged jm_sizeChanged :jm_getCommandStack jm_getCommandStack :jm_isCommand jm_isCommand :jm_addCommand jm_addCommand :jm_removeCommand jm_removeCommand :jm_removeAllCommands jm_removeAllCommands :jm_setCommandListener jm_setCommandListener :jm_getCustomCommandListener jm_getCustomCommandListener :jm_isPaused jm_isPaused :jm_removePauseCommand jm_removePauseCommand :jm_pause jm_pause :jm_unPause jm_unPause :jm_process jm_process :jm_paint jm_paint :jm_draw jm_draw :jm_hasChild jm_hasChild :jm_destroy jm_destroy :jm_setPaused jm_setPaused :jm_keyPressedByDevice jm_keyPressedByDevice :jm_keyRepeatedByDevice jm_keyRepeatedByDevice :jm_keyReleasedByDevice jm_keyReleasedByDevice :jm_pointerDragged jm_pointerDragged :jm_pointerPressed jm_pointerPressed :jm_pointerReleased jm_pointerReleased :jm_nextSong jm_nextSong} Canvas/jproto))


