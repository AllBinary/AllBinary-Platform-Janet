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
(defn- ImageItem/jstatic_LAYOUT_DEFAULT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/ImageItem" "jstatic_LAYOUT_DEFAULT" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- ScreenInfo/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/ScreenInfo" "jm_getInstance" args))
(defn- VectorUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/VectorUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../java/lang/Boolean :as Boolean)
(defn- CommandTextItem/jnew_5 [& args] (JR/call jfile "./CommandTextItem" "jnew_5" args))

# Java class CommandTextItemArrayFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstance nil)

    
(set jnew_1 (fn jnew_1 [_visitorInterface]
    (var this (table/setproto @{:jclass "CommandTextItemArrayFactory" :f_list nil :f_visitorInterface nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    
        (set (this :f_visitorInterface) _visitorInterface)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _vector _backgroundBasicColor _foregroundBasicColor]
    (label jreturn
        (var _vectorUtil (VectorUtil/jm_getInstance))
        (var _size (:jm_getSize _vectorUtil _vector))
        (:jm_clear (this :f_list))
        (var _textItem nil)
        (var _priorityLimit 7)
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _isLargeEnoughDisplayForBigMenu (or (and (:jm_isPortrait _displayInfo) (>= (:jm_getLastHeight _displayInfo) ((ScreenInfo/jm_getInstance) :f_MEDIUM_WIDTH))) (and (not (:jm_isPortrait _displayInfo)) (>= (:jm_getLastWidth _displayInfo) ((ScreenInfo/jm_getInstance) :f_MEDIUM_WIDTH)))))
        (if (and (not _isLargeEnoughDisplayForBigMenu) (> _size 3))
            (do
            (set _priorityLimit 3)))
        (var _command nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _command (:jm_elementAt _vectorUtil _vector _index))
            (if (< (:jm_getPriority _command) _priorityLimit)
                (do
                (var _aBoolean (:jm_visit (this :f_visitorInterface) _command))
                (if (:jm_booleanValue _aBoolean)
                    (do
                    (set _textItem (CommandTextItem/jnew_5 _command (ImageItem/jstatic_LAYOUT_DEFAULT) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) _backgroundBasicColor _foregroundBasicColor))
                    (:jm_add (this :f_list) _textItem))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _textItemArray (array/new-filled (:jm_size (this :f_list)) nil))
        (var _size2 (length _textItemArray))
        (do
            (var _index 0)
            (while (< _index _size2)
                (do
            (set (_textItemArray _index) (((this :f_list) :f_objectArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _textItemArray))))

(set jproto @{:jm_getInstance jm_getInstance})


