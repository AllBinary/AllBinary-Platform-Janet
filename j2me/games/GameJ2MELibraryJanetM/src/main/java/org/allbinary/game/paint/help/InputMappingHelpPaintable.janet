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
# package org.allbinary.game.paint.help

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(defn- PlatformInputMappingFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./HelpPaintable :as HelpPaintable)
(defn- UpdateMyFontProperties/jnew_0 [& args] (JR/call jfile "./UpdateMyFontProperties" "jnew_0" args))

# Java class InputMappingHelpPaintable
(var jproto nil)
(var jcell_AND :jnone)
(var jstatic_AND nil)
(var jsetstatic_AND nil)
(var jcell_SEP :jnone)
(var jstatic_SEP nil)
(var jsetstatic_SEP nil)
(var jcell_MORE_THAN_TWO_IN_LIST_AND :jnone)
(var jstatic_MORE_THAN_TWO_IN_LIST_AND nil)
(var jsetstatic_MORE_THAN_TWO_IN_LIST_AND nil)
(var jnew_3 nil)
(var jm_updateMeasurement nil)
(var jm_update nil)
(var jm_get nil)
(var jm_paint nil)

(set jstatic_AND (fn jstatic_AND []
  (when (= jcell_AND :jnone) (set jcell_AND " and "))
  jcell_AND))
(set jsetstatic_AND (fn jsetstatic_AND [value] (set jcell_AND value)))

(set jstatic_SEP (fn jstatic_SEP []
  (when (= jcell_SEP :jnone) (set jcell_SEP ", "))
  jcell_SEP))
(set jsetstatic_SEP (fn jsetstatic_SEP [value] (set jcell_SEP value)))

(set jstatic_MORE_THAN_TWO_IN_LIST_AND (fn jstatic_MORE_THAN_TWO_IN_LIST_AND []
  (when (= jcell_MORE_THAN_TWO_IN_LIST_AND :jnone) (set jcell_MORE_THAN_TWO_IN_LIST_AND ", and "))
  jcell_MORE_THAN_TWO_IN_LIST_AND))
(set jsetstatic_MORE_THAN_TWO_IN_LIST_AND (fn jsetstatic_MORE_THAN_TWO_IN_LIST_AND [value] (set jcell_MORE_THAN_TWO_IN_LIST_AND value)))

    
(set jnew_3 (fn jnew_3 [_gameInputMappingArray _backgroundBasicColor _basicColor]
    (var this (table/setproto @{:jclass "InputMappingHelpPaintable" :f_logUtil nil :f_commonStrings nil :f_commonSeps nil :f_stringUtil nil :f_basicColorFactory nil :f_NONE nil :f_EMPTY_STRING nil :f_gameInputMappingArray nil :f_keyMappingArray nil :f_actionBasicColor nil :f_inputBasicColorArray nil :f_selectedBasicColor nil :f_updateMyFontProperties nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_commonSeps (CommonSeps/jm_getInstance))
    (put this :f_stringUtil (StringUtil/jm_getInstance))
    (put this :f_basicColorFactory (BasicColorFactory/jm_getInstance))
    (put this :f_NONE ((GameKeyFactory/jm_getInstance) :f_NONE))
    (put this :f_EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    
    (put this :f_keyMappingArray (array/new-filled 0 nil))
    (put this :f_actionBasicColor ((BasicColorUtil/jm_getInstance) :f_ZERO_ARRAY))
    (put this :f_inputBasicColorArray (seq [jindex1 :range [0 0]] (array/new-filled 0 nil)))
    
    (put this :f_updateMyFontProperties (UpdateMyFontProperties/jnew_0))
        (JR/superInit this (HelpPaintable/jnew_3 "Input Mapping" _backgroundBasicColor _basicColor))
        (set (this :f_gameInputMappingArray) _gameInputMappingArray)
        (:jm_update this (this :f_NONE) (this :f_NONE))
        (if (or (= _backgroundBasicColor ((this :f_basicColorFactory) :f_WHITE)) (= _basicColor ((this :f_basicColorFactory) :f_WHITE)))
            (do
            (set (this :f_selectedBasicColor) ((this :f_basicColorFactory) :f_RED)))
            (do
            (set (this :f_selectedBasicColor) ((this :f_basicColorFactory) :f_WHITE))))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (var _updateMyFontProperties (UpdateMyFontProperties/jnew_0))
        (set (_updateMyFontProperties :f_charHeight) (:jm_getHeight _font))
        (var _stringMaker (StringMaker/jnew_0))
        (var _inputInfo (this :f_inputInfo))
        (var _size (length _inputInfo))
        (set (_updateMyFontProperties :f_actionStringArray) (array/new-filled _size nil))
        (set (_updateMyFontProperties :f_keymappingBeginWidthArray) (array/new-filled _size 0))
        (set (_updateMyFontProperties :f_actionStringDeltaXArray) (array/new-filled _size 0))
        (set (_updateMyFontProperties :f_inputDeltaXArray) (seq [jindex1 :range [0 _size]] (array/new-filled 0 0)))
        (set (_updateMyFontProperties :f_sepArray) (seq [jindex1 :range [0 _size]] (array/new-filled 0 nil)))
        (set (_updateMyFontProperties :f_sepWidthArray) (seq [jindex1 :range [0 _size]] (array/new-filled 0 0)))
        (var _list nil)
        (var _keyMappings nil)
        (var _actionString nil)
        (var _input nil)
        (var _size2 0)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _list ((this :f_keyMappingArray) _index))
            (set _keyMappings (:jm_get this _list))
            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
            (set _actionString (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append _stringMaker (_inputInfo _index)) ((this :f_commonSeps) :f_COLON)) ((this :f_commonSeps) :f_SPACE)) ((this :f_commonSeps) :f_SPACE))))
            (set ((_updateMyFontProperties :f_actionStringArray) _index) _actionString)
            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
            (set ((_updateMyFontProperties :f_keymappingBeginWidthArray) _index) (brshift (:jm_stringWidth _font (:jm_toString (:jm_append (:jm_append _stringMaker ((_updateMyFontProperties :f_actionStringArray) _index)) _keyMappings))) 1))
            (set ((_updateMyFontProperties :f_actionStringDeltaXArray) _index) (:jm_stringWidth _font _actionString))
            (set _size2 (:jm_size _list))
            (set ((_updateMyFontProperties :f_inputDeltaXArray) _index) (array/new-filled _size2 0))
            (set ((_updateMyFontProperties :f_sepArray) _index) (array/new-filled _size2 nil))
            (set ((_updateMyFontProperties :f_sepWidthArray) _index) (array/new-filled _size2 0))
            (do
                (var _index2 0)
                (while (< _index2 _size2)
                    (do
                (set _input ((_list :f_objectArray) _index2))
                (set (((_updateMyFontProperties :f_inputDeltaXArray) _index) _index2) (:jm_stringWidth _font (:jm_getName _input)))
                (set (((_updateMyFontProperties :f_sepArray) _index) _index2) (this :f_EMPTY_STRING))
                (if (< (JR/i32 (+ _index2 1)) (:jm_size _list))
                    (do
                    (if (= (:jm_size _list) 2)
                        (do
                        (set (((_updateMyFontProperties :f_sepArray) _index) _index2) (jstatic_AND)))
                        (do
                        (if (= (JR/i32 (+ _index2 2)) (:jm_size _list))
                            (do
                            (set (((_updateMyFontProperties :f_sepArray) _index) _index2) (jstatic_MORE_THAN_TWO_IN_LIST_AND)))
                            (do
                            (set (((_updateMyFontProperties :f_sepArray) _index) _index2) (jstatic_SEP))))))))
                (if (not= (((_updateMyFontProperties :f_sepArray) _index) _index2) (this :f_EMPTY_STRING))
                    (do
                    (set (((_updateMyFontProperties :f_sepWidthArray) _index) _index2) (:jm_stringWidth _font (((_updateMyFontProperties :f_sepArray) _index) _index2))))))
                    (do (set _index2 (JR/i32 (+ _index2 1)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_updateMyFontProperties) _updateMyFontProperties)
        ((get HelpPaintable/jproto :jm_updateMeasurement) this _graphics)))
    
(set jm_update (fn jm_update [this _selectedGameKey _selectedInput]
        (var _stringMaker (StringMaker/jnew_0))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (:jm_append _stringMaker ((CommonLabels/jm_getInstance) :f_START_LABEL)) "selected GameKey: ") (:jm_toString_1 (this :f_stringUtil) _selectedGameKey)) " Input: ") (:jm_toString_1 (this :f_stringUtil) _selectedInput))) this ((this :f_commonStrings) :f_UPDATE))
        (var _gameKeyMapping (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance)))
        (var _size (length (this :f_gameInputMappingArray)))
        (var _keyInfo (array/new-filled _size nil))
        (var _keyMappingArray (array/new-filled _size nil))
        (var _actionBasicColor (array/new-filled _size nil))
        (var _inputBasicColorArray (array/new-filled _size nil))
        (var _gameInputMapping nil)
        (var _gameKey nil)
        (var _list nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _gameInputMapping ((this :f_gameInputMappingArray) _index))
            (set _gameKey (:jm_getGameKey _gameInputMapping))
            (set _list (JR/className (:jm_getInputMapping _gameKeyMapping)))
            (var _size2 (:jm_size _list))
            (set (_inputBasicColorArray _index) (array/new-filled _size2 nil))
            (do
                (var _index2 0)
                (while (< _index2 _size2)
                    (do
                (set ((_inputBasicColorArray _index) _index2) (this :f_basicColor)))
                    (do (set _index2 (JR/i32 (+ _index2 1))))))
            (if (= _gameKey _selectedGameKey)
                (do
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append _stringMaker "Found: selected GameKey: ") (:jm_toString_1 (this :f_stringUtil) _selectedGameKey))) this ((this :f_commonStrings) :f_UPDATE))
                (set (_actionBasicColor _index) (this :f_selectedBasicColor))
                (var _indexOfSelectedInput (:jm_indexOf _list _selectedInput))
                (if (>= _indexOfSelectedInput 0)
                    (do
                    (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                    (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append _stringMaker "Found: selected Input: ") (:jm_toString_1 (this :f_stringUtil) _selectedInput))) this ((this :f_commonStrings) :f_UPDATE))
                    (set ((_inputBasicColorArray _index) _indexOfSelectedInput) (this :f_selectedBasicColor)))))
                (do
                (set (_actionBasicColor _index) (this :f_basicColor))))
            (set (_keyInfo _index) (:jm_getName _gameInputMapping))
            (set (_keyMappingArray _index) _list))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_keyMappingArray) _keyMappingArray)
        (set (this :f_actionBasicColor) _actionBasicColor)
        (set (this :f_inputBasicColorArray) _inputBasicColorArray)
        ((get HelpPaintable/jproto :jm_setInputInfoP) this _keyInfo)
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_get (fn jm_get [this _keyList]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _key nil)
        (var _size (:jm_size _keyList))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _key ((_keyList :f_objectArray) _index))
            (:jm_append _stringBuffer (:jm_getName _key))
            (if (< (JR/i32 (+ _index 1)) (:jm_size _keyList))
                (do
                (if (= (:jm_size _keyList) 2)
                    (do
                    (:jm_append _stringBuffer (jstatic_AND)))
                    (do
                    (if (= (JR/i32 (+ _index 2)) (:jm_size _keyList))
                        (do
                        (:jm_append _stringBuffer (jstatic_MORE_THAN_TWO_IN_LIST_AND)))
                        (do
                        (:jm_append _stringBuffer (jstatic_SEP)))))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (JR/className (this :f_myFontProcessor))
        (var _halfWidth (JR/className (this :f_displayInfo)))
        (:jm_setColor _graphics (:jm_intValue (this :f_basicColor)))
        (:jm_drawString _graphics (this :f_title) (JR/i32 (- _halfWidth (this :f_titleBeginWidth))) ((this :f_updateMyFontProperties) :f_charHeight) (this :f_anchor))
        (var _inputInfo (this :f_inputInfo))
        (var _size (length _inputInfo))
        (var _y 0)
        (var _deltaX 0)
        (var _size2 0)
        (var _actionString nil)
        (var _input nil)
        (var _list nil)
        (var _sep nil)
        (var _beginWidth 0)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _y (JR/i32 (* (JR/i32 (+ _index 3)) ((this :f_updateMyFontProperties) :f_charHeight))))
            (set _deltaX 0)
            (set _list ((this :f_keyMappingArray) _index))
            (set _size2 (:jm_size _list))
            (set _beginWidth (((this :f_updateMyFontProperties) :f_keymappingBeginWidthArray) _index))
            (:jm_setColor _graphics (JR/className ((this :f_actionBasicColor) _index)))
            (set _actionString (((this :f_updateMyFontProperties) :f_actionStringArray) _index))
            (:jm_drawString _graphics _actionString (JR/i32 (+ (JR/i32 (- _halfWidth _beginWidth)) _deltaX)) _y (this :f_anchor))
            (set _deltaX (JR/i32 (+ _deltaX (((this :f_updateMyFontProperties) :f_actionStringDeltaXArray) _index))))
            (do
                (var _index2 0)
                (while (< _index2 _size2)
                    (do
                (set _input ((_list :f_objectArray) _index2))
                (:jm_setColor _graphics (JR/className (((this :f_inputBasicColorArray) _index) _index2)))
                (:jm_drawString _graphics (:jm_getName _input) (JR/i32 (+ (JR/i32 (- _halfWidth _beginWidth)) _deltaX)) _y (this :f_anchor))
                (set _deltaX (JR/i32 (+ _deltaX ((((this :f_updateMyFontProperties) :f_inputDeltaXArray) _index) _index2))))
                (set _sep ((((this :f_updateMyFontProperties) :f_sepArray) _index) _index2))
                (:jm_setColor _graphics (:jm_intValue (this :f_basicColor)))
                (:jm_drawString _graphics _sep (JR/i32 (+ (JR/i32 (- _halfWidth _beginWidth)) _deltaX)) _y (this :f_anchor))
                (set _deltaX (JR/i32 (+ _deltaX ((((this :f_updateMyFontProperties) :f_sepWidthArray) _index) _index2)))))
                    (do (set _index2 (JR/i32 (+ _index2 1)))))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_update jm_update :jm_get jm_get :jm_paint jm_paint} HelpPaintable/jproto))


