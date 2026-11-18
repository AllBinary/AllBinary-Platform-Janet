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
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- J2MEUtil/jm_isJ2ME [& args] (JR/call jfile "../../../../org/allbinary/J2MEUtil" "jm_isJ2ME" args))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- RectangleAdjustedAnimation/jnew_5 [& args] (JR/call jfile "../../../../org/allbinary/animation/vector/RectangleAdjustedAnimation" "jnew_5" args))
(defn- RectangleFilledAdjustedAnimation/jnew_5 [& args] (JR/call jfile "../../../../org/allbinary/animation/vector/RectangleFilledAdjustedAnimation" "jnew_5" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(import ./ScrollCurrentSelectionForm :as ScrollCurrentSelectionForm)
(defn- ItemPaintableFactory/jm_getInstance [& args] (JR/call jfile "./ItemPaintableFactory" "jm_getInstance" args))

# Java class CommandCurrentSelectionForm
(var jproto nil)
(var jnew_6 nil)
(var jm_updateMeasurement nil)
(var jm_initAnimations nil)
(var jm_addAll nil)
(var jm_addAt nil)
(var jm_updateAll nil)
(var jm_updateAt nil)
(var jm_getSelectedCommand nil)
(var jm_append nil)
(var jm_delete nil)
(var jm_deleteAll nil)
(var jm_insert nil)
(var jm_set nil)
(var jm_paint nil)
(var jm_paintItem nil)
(var jm_paintUnselectedItem nil)

    
(set jnew_6 (fn jnew_6 [_title _items _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "CommandCurrentSelectionForm" :f_selectedAnimationArray nil :f_unSelectedAnimationArray nil} jproto))
    (put this :f_selectedAnimationArray (array/new-filled 16 nil))
    (put this :f_unSelectedAnimationArray (array/new-filled 16 nil))
        (JR/superInit this (ScrollCurrentSelectionForm/jnew_8 _title _items (ItemPaintableFactory/jm_getInstance) _border (JR/i32 (- 3)) _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor))
        (:jm_initAnimations this)
        (:jm_addAll this _items)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (:jm_updateAll this _graphics (:jm_getAllitems this))
        ((get ScrollCurrentSelectionForm/jproto :jm_updateMeasurement) this _graphics)))
    
(set jm_initAnimations (fn jm_initAnimations [this]
        (var _nullAnimation (JR/className (NullAnimationFactory/jm_getFactoryInstance)))
        (do
            (var _index (length (this :f_selectedAnimationArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set ((this :f_selectedAnimationArray) _index) _nullAnimation))))
        (do
            (var _index (length (this :f_unSelectedAnimationArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set ((this :f_unSelectedAnimationArray) _index) _nullAnimation))))))
    
(set jm_addAll (fn jm_addAll [this _items]
        (do
            (var _index (length _items))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (:jm_addAt this _index (_items _index)))))))
    
(set jm_addAt (fn jm_addAt [this _index _item]
        (var _basicColorFactory (BasicColorFactory/jm_getInstance))
        (var _buttonColor (_basicColorFactory :f_TRANSPARENT_GREY))
        (var _selectedButtonColor (_basicColorFactory :f_TRANSPARENT_RED))
        (var _width (:jm_getMinimumWidth _item))
        (var _height (:jm_getMinimumHeight _item))
        (var _adjustedBorder 3)
        (var _offset (JR/i32 (- (JR/i32 (+ (this :f_halfBorder) _adjustedBorder)))))
        (var _rectWidth (JR/i32 (- (JR/i32 (+ _width (this :f_border))) _adjustedBorder)))
        (var _rectHeight (JR/i32 (- (JR/i32 (+ _height (this :f_border))) _adjustedBorder)))
        (if (or (J2MEUtil/jm_isJ2ME) (J2MEUtil/jm_isHTML))
            (do
            (set ((this :f_selectedAnimationArray) _index) (RectangleAdjustedAnimation/jnew_5 _rectWidth _rectHeight _offset _offset _selectedButtonColor)))
            (do
            (set ((this :f_selectedAnimationArray) _index) (RectangleFilledAdjustedAnimation/jnew_5 _rectWidth _rectHeight _offset _offset _selectedButtonColor))))
        (set _adjustedBorder 4)
        (if (or (J2MEUtil/jm_isJ2ME) (J2MEUtil/jm_isHTML))
            (do
            (set ((this :f_unSelectedAnimationArray) _index) (RectangleAdjustedAnimation/jnew_5 _rectWidth _rectHeight _offset _offset _buttonColor)))
            (do
            (set ((this :f_unSelectedAnimationArray) _index) (RectangleFilledAdjustedAnimation/jnew_5 _rectWidth _rectHeight _offset _offset _buttonColor))))))
    
(set jm_updateAll (fn jm_updateAll [this _graphics _items]
        (do
            (var _index (length _items))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (JR/className (_items _index))
            (:jm_updateAt this _index (_items _index)))))))
    
(set jm_updateAt (fn jm_updateAt [this _index _item]
        (var _basicColorFactory (BasicColorFactory/jm_getInstance))
        (var _buttonColor (_basicColorFactory :f_TRANSPARENT_GREY))
        (var _selectedButtonColor (_basicColorFactory :f_TRANSPARENT_RED))
        (var _width (:jm_getMinimumWidth _item))
        (var _height (:jm_getMinimumHeight _item))
        (var _adjustedBorder 3)
        (var _offset (JR/i32 (- (JR/i32 (+ (this :f_halfBorder) _adjustedBorder)))))
        (var _rectWidth (JR/i32 (- (JR/i32 (+ _width (this :f_border))) _adjustedBorder)))
        (var _rectHeight (JR/i32 (- (JR/i32 (+ _height (this :f_border))) _adjustedBorder)))
        (if (or (J2MEUtil/jm_isJ2ME) (J2MEUtil/jm_isHTML))
            (do
            (var _rectangleAdjustedAnimation ((this :f_selectedAnimationArray) _index))
            (:jm_setWidth _rectangleAdjustedAnimation _rectWidth)
            (:jm_setHeight _rectangleAdjustedAnimation _rectHeight)
            (:jm_setOffsetX _rectangleAdjustedAnimation _offset)
            (:jm_setOffsetY _rectangleAdjustedAnimation _offset)
            (:jm_setBasicColorP _rectangleAdjustedAnimation _selectedButtonColor))
            (do
            (var _rectangleAdjustedAnimation ((this :f_selectedAnimationArray) _index))
            (:jm_setWidth _rectangleAdjustedAnimation _rectWidth)
            (:jm_setHeight _rectangleAdjustedAnimation _rectHeight)
            (:jm_setOffsetX _rectangleAdjustedAnimation _offset)
            (:jm_setOffsetY _rectangleAdjustedAnimation _offset)
            (:jm_setBasicColorP _rectangleAdjustedAnimation _selectedButtonColor)))
        (set _adjustedBorder 4)
        (if (or (J2MEUtil/jm_isJ2ME) (J2MEUtil/jm_isHTML))
            (do
            (var _rectangleAdjustedAnimation ((this :f_unSelectedAnimationArray) _index))
            (:jm_setWidth _rectangleAdjustedAnimation _rectWidth)
            (:jm_setHeight _rectangleAdjustedAnimation _rectHeight)
            (:jm_setOffsetX _rectangleAdjustedAnimation _offset)
            (:jm_setOffsetY _rectangleAdjustedAnimation _offset)
            (:jm_setBasicColorP _rectangleAdjustedAnimation _buttonColor))
            (do
            (var _rectangleAdjustedAnimation ((this :f_unSelectedAnimationArray) _index))
            (:jm_setWidth _rectangleAdjustedAnimation _rectWidth)
            (:jm_setHeight _rectangleAdjustedAnimation _rectHeight)
            (:jm_setOffsetX _rectangleAdjustedAnimation _offset)
            (:jm_setOffsetY _rectangleAdjustedAnimation _offset)
            (:jm_setBasicColorP _rectangleAdjustedAnimation _buttonColor)))))
    
(set jm_getSelectedCommand (fn jm_getSelectedCommand [this]
    (label jreturn
        (var _index ((get ScrollCurrentSelectionForm/jproto :jm_getSelectedIndex) this))
        (var _commandTextItem (:jm_get this _index))
        (return jreturn (:jm_getCommand _commandTextItem)))))
    
(set jm_append (fn jm_append [this _item]
    (label jreturn
        (var _result ((get ScrollCurrentSelectionForm/jproto :jm_append) this _item))
        (:jm_addAt this _result _item)
        (return jreturn _result))))
    
(set jm_delete (fn jm_delete [this _itemNum]
        ((get ScrollCurrentSelectionForm/jproto :jm_delete) this _itemNum)))
    
(set jm_deleteAll (fn jm_deleteAll [this]
        (:jm_initAnimations this)
        ((get ScrollCurrentSelectionForm/jproto :jm_deleteAll) this)))
    
(set jm_insert (fn jm_insert [this _itemNum _item]
        ((get ScrollCurrentSelectionForm/jproto :jm_insert) this _itemNum _item)))
    
(set jm_set (fn jm_set [this _itemNum _item]
        ((get ScrollCurrentSelectionForm/jproto :jm_set) this _itemNum _item)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (JR/className (this :f_myFontProcessor))
        ((get ScrollCurrentSelectionForm/jproto :jm_paint) this _graphics)))
    
(set jm_paintItem (fn jm_paintItem [this _graphics _index _item _x _y]
    (label jreturn
        (JR/className ((this :f_selectedAnimationArray) _index))
        (return jreturn ((get ScrollCurrentSelectionForm/jproto :jm_paintItem) this _graphics _index _item _x _y)))))
    
(set jm_paintUnselectedItem (fn jm_paintUnselectedItem [this _graphics _index _item _x _y]
    (label jreturn
        (JR/className ((this :f_unSelectedAnimationArray) _index))
        (return jreturn ((get ScrollCurrentSelectionForm/jproto :jm_paintUnselectedItem) this _graphics _index _item _x _y)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_initAnimations jm_initAnimations :jm_addAll jm_addAll :jm_addAt jm_addAt :jm_updateAll jm_updateAll :jm_updateAt jm_updateAt :jm_getSelectedCommand jm_getSelectedCommand :jm_append jm_append :jm_delete jm_delete :jm_deleteAll jm_deleteAll :jm_insert jm_insert :jm_set jm_set :jm_paint jm_paint :jm_paintItem jm_paintItem :jm_paintUnselectedItem jm_paintUnselectedItem} ScrollCurrentSelectionForm/jproto))


