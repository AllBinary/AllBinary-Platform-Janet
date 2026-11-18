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
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- J2MEUtil/jm_isJ2ME [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isJ2ME" args))
(import ../../../../../org/allbinary/game/displayable/canvas/GameCommandCanvas :as GameCommandCanvas)
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- PlatformKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/PlatformKeyFactory" "jm_getInstance" args))
(defn- TextItemVisitor/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/item/validation/TextItemVisitor" "jnew_0" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- ABTextFieldItem/jnew_10 [& args] (JR/call jfile "./ABTextFieldItem" "jnew_10" args))

# Java class CustomTextBox
(var jproto nil)
(var jnew_8 nil)
(var jm_submit nil)
(var jm_onEventRaw nil)
(var jm_keyPressed nil)
(var jm_keyReleased nil)
(var jm_keyRepeated nil)
(var jm_keyPressedByDevice nil)
(var jm_keyReleasedByDevice nil)
(var jm_paint nil)
(var jm_paintXY nil)
(var jm_getTextFieldItem nil)

    
(set jnew_8 (fn jnew_8 [_cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "CustomTextBox" :f_textFieldItem nil :f_inputFactory nil} jproto))
    
    (put this :f_inputFactory (InputFactory/jm_getInstance))
        (JR/superInit this (GameCommandCanvas/jnew_4 _cmdListener _label _backgroundBasicColor _foregroundBasicColor))
        (var _stringUtil (StringUtil/jm_getInstance))
        (var _textFieldItem (ABTextFieldItem/jnew_10 this (TextItemVisitor/jnew_0) (_stringUtil :f_EMPTY_STRING) (_stringUtil :f_EMPTY_STRING) _maxSize 0 (_stringUtil :f_EMPTY_STRING) _font _backgroundBasicColor _foregroundBasicColor))
        (:jm_setString _textFieldItem _text)
        (set (this :f_textFieldItem) _textFieldItem)
        (:jm_setTitle this _label)
    this))
    
(set jm_submit (fn jm_submit [this]
    nil))
    
(set jm_onEventRaw (fn jm_onEventRaw [this _keyCode _deviceId _repeated]
        (JR/className (this :f_logUtil))
        (:jm_keyPressedByDevice this _keyCode _deviceId)))
    
(set jm_keyPressed (fn jm_keyPressed [this _keyCode]
        (:jm_keyPressedByDevice this _keyCode 0)))
    
(set jm_keyReleased (fn jm_keyReleased [this _keyCode]
        (:jm_keyReleasedByDevice this _keyCode 0)))
    
(set jm_keyRepeated (fn jm_keyRepeated [this _keyCode]
        (:jm_keyRepeatedByDevice this _keyCode 0)))
    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
        (try
            (do
            (JR/className (this :f_logUtil))
            (var _platformKeyFactory (PlatformKeyFactory/jm_getInstance))
            (var _input (:jm_getInstanceById (this :f_inputFactory) _keyCode))
            (if (:jm_isSubmission _platformKeyFactory _input)
                (do
                (:jm_submit this))
                (do
                (:jm_keyPressed (this :f_textFieldItem) _keyCode))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_keyReleasedByDevice (fn jm_keyReleasedByDevice [this _keyCode _deviceId]
    nil))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_setColor _graphics (this :f_backgroundColor))
        (:jm_fillRect _graphics 0 0 (JR/className (this :f_displayInfo)) (JR/className (this :f_displayInfo)))
        (:jm_setColor _graphics (this :f_foregroundColor))
        (if (not (J2MEUtil/jm_isJ2ME))
            (do
            (:jm_drawString _graphics (:jm_getTitle this) 8 1 0)))
        (:jm_paintXY this _graphics 8 (JR/i32 (+ (JR/className (:jm_getFont _graphics)) 2)))
        ((get GameCommandCanvas/jproto :jm_paint) this _graphics)))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_paintXY (this :f_textFieldItem) _graphics _x _y)))
    
(set jm_getTextFieldItem (fn jm_getTextFieldItem [this]
    (label jreturn
        (return jreturn (this :f_textFieldItem)))))

(set jproto (table/setproto @{:jm_submit jm_submit :jm_onEventRaw jm_onEventRaw :jm_keyPressed jm_keyPressed :jm_keyReleased jm_keyReleased :jm_keyRepeated jm_keyRepeated :jm_keyPressedByDevice jm_keyPressedByDevice :jm_keyReleasedByDevice jm_keyReleasedByDevice :jm_paint jm_paint :jm_paintXY jm_paintXY :jm_getTextFieldItem jm_getTextFieldItem} GameCommandCanvas/jproto))


