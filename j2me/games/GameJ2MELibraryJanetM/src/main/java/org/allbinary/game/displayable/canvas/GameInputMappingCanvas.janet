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
(defn- Command/jnew_4 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Command" "jnew_4" args))
(defn- Command/jstatic_SCREEN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Command" "jstatic_SCREEN" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- PlatformInputMappingFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" "jm_getInstance" args))
(defn- ColorFillPaintableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" "jm_getInstance" args))
(defn- ProcessPaintable/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/ProcessPaintable" "jnew_0" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../../java/lang/Integer :as Integer)
(import ./GameCommandCanvas :as GameCommandCanvas)
(defn- GameInputMappingInstructionsCanvas/jstatic_DISPLAY [& args] (JR/call jfile "./GameInputMappingInstructionsCanvas" "jstatic_DISPLAY" args))

# Java class GameInputMappingCanvas
(var jproto nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jcell_DISPLAY :jnone)
(var jstatic_DISPLAY nil)
(var jsetstatic_DISPLAY nil)
(var jcell_DEFAULT :jnone)
(var jstatic_DEFAULT nil)
(var jsetstatic_DEFAULT nil)
(var jnew_4 nil)
(var jm_close nil)
(var jm_initCommands nil)
(var jm_keyPressed nil)
(var jm_keyReleased nil)
(var jm_keyRepeated nil)
(var jm_keyPressedByDevice nil)
(var jm_addGameKey nil)
(var jm_processInputMapping nil)
(var jm_setSelectedAction nil)
(var jm_gameActionCrud nil)
(var jm_addNewMapping nil)
(var jm_deleteCurrentMapping nil)
(var jm_setDefault nil)
(var jm_update nil)
(var jm_paint nil)

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "GameInputMappingCanvas"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

(set jstatic_DISPLAY (fn jstatic_DISPLAY []
  (when (= jcell_DISPLAY :jnone) (set jcell_DISPLAY (Command/jnew_4 "Controls" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 2)))
  jcell_DISPLAY))
(set jsetstatic_DISPLAY (fn jsetstatic_DISPLAY [value] (set jcell_DISPLAY value)))

(set jstatic_DEFAULT (fn jstatic_DEFAULT []
  (when (= jcell_DEFAULT :jnone) (set jcell_DEFAULT (Command/jnew_4 "Default" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 2)))
  jcell_DEFAULT))
(set jsetstatic_DEFAULT (fn jsetstatic_DEFAULT [value] (set jcell_DEFAULT value)))

    
(set jnew_4 (fn jnew_4 [_abeClientInformation _commandListener _allBinaryGameLayerManager _helpPaintable]
    (var this (table/setproto @{:jclass "GameInputMappingCanvas" :f_paintable nil :f_helpPaintable nil :f_colorFillPaintable nil :f_inputMapping nil :f_NONE nil :f_abeClientInformation nil :f_selectedGameKey nil :f_selectedInput nil :f_inputFactory nil} jproto))
    
    
    
    
    (put this :f_NONE ((GameKeyFactory/jm_getInstance) :f_NONE))
    
    (put this :f_selectedGameKey (this :f_NONE))
    (put this :f_selectedInput (this :f_NONE))
    (put this :f_inputFactory (InputFactory/jm_getInstance))
        (JR/superInit this (GameCommandCanvas/jnew_4 _commandListener (jstatic_NAME) (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) (:jm_getForegroundBasicColor _allBinaryGameLayerManager)))
        (JR/className (this :f_logUtil))
        (if (nil? _helpPaintable)
            (do
            (error (JR/newException "Exception" "Help Paintable Exception"))))
        (set (this :f_abeClientInformation) _abeClientInformation)
        (set (this :f_helpPaintable) _helpPaintable)
        (set (this :f_inputMapping) (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance)))
        (set (this :f_paintable) (ProcessPaintable/jnew_0))
        (set (this :f_colorFillPaintable) (:jm_getInstance (ColorFillPaintableFactory/jm_getInstance) (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) false))
    this))
    
(set jm_close (fn jm_close [this]
        ((get GameCommandCanvas/jproto :jm_close) this)
        (:jm_process (this :f_paintable))
        (set (this :f_selectedGameKey) (this :f_NONE))
        (set (this :f_selectedInput) (this :f_NONE))
        (:jm_update this)))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (:jm_removeAllCommands this)
        (:jm_addCommand this ((GameCommandsFactory/jm_getInstance) :f_CLOSE_AND_SHOW_GAME_CANVAS))
        (:jm_addCommand this (jstatic_DEFAULT))
        (:jm_addCommand this (GameInputMappingInstructionsCanvas/jstatic_DISPLAY))
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_keyPressed (fn jm_keyPressed [this _keyCode]
        (:jm_keyPressedByDevice this _keyCode 0)))
    
(set jm_keyReleased (fn jm_keyReleased [this _keyCode]
        (:jm_keyReleasedByDevice this _keyCode 0)))
    
(set jm_keyRepeated (fn jm_keyRepeated [this _keyCode]
        (:jm_keyRepeatedByDevice this _keyCode 0)))
    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
        (:jm_addGameKey this _keyCode false)
        ((get GameCommandCanvas/jproto :jm_keyPressedByDevice) this _keyCode 0)))
    
(set jm_addGameKey (fn jm_addGameKey [this _keyCode _repeated]
        (try
            (do
            (JR/className (this :f_logUtil))
            (var _gameKey (JR/className (this :f_inputToGameKeyMapping)))
            (var _input (:jm_getInstanceById (this :f_inputFactory) _keyCode))
            (:jm_processInputMapping this _gameKey _input))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_processInputMapping (fn jm_processInputMapping [this _gameKey _input]
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Start Passed GameKey: ")
        (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
        (:jm_append _stringBuffer " Input: ")
        (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
        (JR/className (this :f_logUtil))
        (if (not= (this :f_selectedGameKey) (this :f_NONE))
            (do
            (:jm_gameActionCrud this _gameKey _input))
            (do
            (:jm_setSelectedAction this _gameKey)))))
    
(set jm_setSelectedAction (fn jm_setSelectedAction [this _gameKey]
        (JR/className (this :f_logUtil))
        (set (this :f_selectedGameKey) _gameKey)
        (set (this :f_selectedInput) (this :f_NONE))
        (:jm_update (this :f_helpPaintable) (this :f_selectedGameKey) (this :f_selectedInput))
        (JR/className (this :f_repaintBehavior))))
    
(set jm_gameActionCrud (fn jm_gameActionCrud [this _gameKey _input]
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Start GameKey: ")
        (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
        (:jm_append _stringBuffer " Input: ")
        (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
        (JR/className (this :f_logUtil))
        (if (= (this :f_selectedInput) (this :f_NONE))
            (do
            (var _list (JR/className (:jm_getInputMapping (this :f_inputMapping))))
            (var _isInputAlreadyMappedToSelectedAction (:jm_contains _list _input))
            (if _isInputAlreadyMappedToSelectedAction
                (do
                (JR/className (this :f_logUtil))
                (set (this :f_selectedInput) _input)
                (:jm_update (this :f_helpPaintable) (this :f_selectedGameKey) (this :f_selectedInput))
                (JR/className (this :f_repaintBehavior)))
                (do
                (:jm_addNewMapping this _gameKey _input))))
            (if (:jm_isDelete (this :f_inputMapping) _input)
            (do
            (:jm_deleteCurrentMapping this))
            (do
            (:jm_setSelectedAction this _gameKey))))))
    
(set jm_addNewMapping (fn jm_addNewMapping [this _gameKey _input]
        (var _METHOD_NAME "addNewMapping")
        (JR/className (this :f_logUtil))
        (var _isInputAlreadyMapped (JR/className (:jm_getInputMapping (this :f_inputMapping))))
        (if (and (not _isInputAlreadyMapped) (not (:jm_isSystemInput (this :f_inputMapping) _input)))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer "Add Key Mapping : GameKey: ")
            (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
            (:jm_append _stringBuffer " Input: ")
            (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
            (JR/className (this :f_logUtil))
            (JR/className (:jm_getInputMapping (this :f_inputMapping)))
            (set (this :f_selectedInput) _input)
            (:jm_update this))
            (do
            (JR/className (this :f_logUtil))
            (:jm_setSelectedAction this _gameKey)))))
    
(set jm_deleteCurrentMapping (fn jm_deleteCurrentMapping [this]
        (var _METHOD_NAME "deleteCurrentMapping")
        (var _list (JR/className (:jm_getInputMapping (this :f_inputMapping))))
        (if (> (:jm_size _list) 1)
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer "Start GameKey: ")
            (:jm_append _stringBuffer "Remove Key Mapping: GameKey: ")
            (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
            (:jm_append _stringBuffer " Input: ")
            (:jm_append _stringBuffer (JR/toString (this :f_stringUtil)))
            (JR/className (this :f_logUtil))
            (JR/className (:jm_getInputMapping (this :f_inputMapping)))
            (set (this :f_selectedInput) (this :f_NONE))
            (:jm_update this))
            (do
            (JR/className (this :f_logUtil))))))
    
(set jm_setDefault (fn jm_setDefault [this]
        (:jm_setDefault (this :f_inputMapping) (this :f_abeClientInformation))
        (:jm_update (this :f_helpPaintable) (this :f_NONE) (this :f_NONE))
        (JR/className (this :f_repaintBehavior))))
    
(set jm_update (fn jm_update [this]
        (:jm_update (this :f_inputMapping) (this :f_abeClientInformation))
        (:jm_update (this :f_helpPaintable) (this :f_selectedGameKey) (this :f_selectedInput))
        (JR/className (this :f_repaintBehavior))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_colorFillPaintable) _graphics)
        (:jm_paint (this :f_helpPaintable) _graphics)
        (:jm_paint (this :f_paintable) _graphics)
        ((get GameCommandCanvas/jproto :jm_paint) this _graphics)))

(set jproto (table/setproto @{:jm_close jm_close :jm_initCommands jm_initCommands :jm_keyPressed jm_keyPressed :jm_keyReleased jm_keyReleased :jm_keyRepeated jm_keyRepeated :jm_keyPressedByDevice jm_keyPressedByDevice :jm_addGameKey jm_addGameKey :jm_processInputMapping jm_processInputMapping :jm_setSelectedAction jm_setSelectedAction :jm_gameActionCrud jm_gameActionCrud :jm_addNewMapping jm_addNewMapping :jm_deleteCurrentMapping jm_deleteCurrentMapping :jm_setDefault jm_setDefault :jm_update jm_update :jm_paint jm_paint} GameCommandCanvas/jproto))


