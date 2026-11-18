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
# package org.allbinary.game.score.displayable

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Font/jm_getDefaultFont [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Font" "jm_getDefaultFont" args))
(defn- TextField/jstatic_ANY [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/TextField" "jstatic_ANY" args))
(defn- PostGameCommandFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/PostGameCommandFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/graphics/form/item/CustomTextBox :as CustomTextBox)
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- SimpleTextPaintable/jnew_2 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/SimpleTextPaintable" "jnew_2" args))
(defn- VirtualKeyboardEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/event/VirtualKeyboardEventHandler" "jm_getInstance" args))
(defn- OperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" "jm_getInstance" args))
(defn- InApplicationPurchaseFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory" "jm_getInstance" args))
(defn- HighScoreUtil/jnew_7 [& args] (JR/call jfile "./HighScoreUtil" "jnew_7" args))
(defn- HighScoreUtil/jstatic_SUBMIT_TEXTBOX_COMMAND [& args] (JR/call jfile "./HighScoreUtil" "jstatic_SUBMIT_TEXTBOX_COMMAND" args))

# Java class HighScoreTextBox
(var jproto nil)
(var jnew_9 nil)
(var jm_initCommands nil)
(var jm_open nil)
(var jm_close nil)
(var jm_update nil)
(var jm_paint nil)
(var jm_saveHighScore nil)
(var jm_submit nil)

    
(set jnew_9 (fn jnew_9 [_highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore _backgrounBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "HighScoreTextBox" :f_virtualKeyboardEventHandler nil :f_highScoreUtil nil :f_pleaseWait nil :f_paintable nil :f_submitted false} jproto))
    (put this :f_virtualKeyboardEventHandler (VirtualKeyboardEventHandler/jm_getInstance))
    
    (put this :f_pleaseWait (SimpleTextPaintable/jnew_2 ((this :f_commonStrings) :f_PLEASE_WAIT) ((BasicColorFactory/jm_getInstance) :f_WHITE)))
    (put this :f_paintable (NullPaintable/jm_getInstance))
    (put this :f_submitted false)
        (JR/superInit this (CustomTextBox/jnew_8 _cmdListener "New High Score Enter Name:" _name 12 (TextField/jstatic_ANY) (Font/jm_getDefaultFont) _backgrounBasicColor _foregroundBasicColor))
        (set (this :f_highScoreUtil) (HighScoreUtil/jnew_7 _highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore))
        (var _operatingSystemInterface (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance)))
        (if (:jm_isOverScan _operatingSystemInterface)
            (do
            (var _username (:jm_getUserName (InApplicationPurchaseFactory/jm_getInstance)))
            (JR/className (:jm_getTextFieldItem this))))
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (:jm_removeAllCommands this)
        (:jm_addCommands (PostGameCommandFactory/jm_getInstance) this)
        (:jm_addCommand this (HighScoreUtil/jstatic_SUBMIT_TEXTBOX_COMMAND))
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_open (fn jm_open [this]
        (:jm_open (this :f_virtualKeyboardEventHandler))
        (set (this :f_paintable) (NullPaintable/jm_getInstance))
        ((get CustomTextBox/jproto :jm_open) this)))
    
(set jm_close (fn jm_close [this]
        (:jm_close (this :f_virtualKeyboardEventHandler))
        (set (this :f_paintable) (this :f_pleaseWait))
        (JR/className (this :f_repaintBehavior))
        ((get CustomTextBox/jproto :jm_close) this)
        (:jm_removeCommand this (HighScoreUtil/jstatic_SUBMIT_TEXTBOX_COMMAND))
        (:jm_update this)
        (if (this :f_submitted)
            (do
            (:jm_saveHighScore (this :f_highScoreUtil)))
            (do
            nil))
        (set (this :f_paintable) (NullPaintable/jm_getInstance))
        (JR/className (this :f_repaintBehavior))))
    
(set jm_update (fn jm_update [this]
        (var _name (JR/className (:jm_getTextFieldItem this)))
        (:jm_update (this :f_highScoreUtil) _name)
        ((get CustomTextBox/jproto :jm_update) this)))
    
(set jm_paint (fn jm_paint [this _graphics]
        ((get CustomTextBox/jproto :jm_paint) this _graphics)
        (:jm_paint (this :f_paintable) _graphics)))
    
(set jm_saveHighScore (fn jm_saveHighScore [this]
        (:jm_saveHighScore (this :f_highScoreUtil))))
    
(set jm_submit (fn jm_submit [this]
        (:jm_submit (this :f_highScoreUtil) this)))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands :jm_open jm_open :jm_close jm_close :jm_update jm_update :jm_paint jm_paint :jm_saveHighScore jm_saveHighScore :jm_submit jm_submit} CustomTextBox/jproto))


