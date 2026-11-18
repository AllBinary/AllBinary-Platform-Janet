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
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- ABCustomItem/jm_getNullInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/form/item/ABCustomItem" "jm_getNullInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- RectangleCollisionUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/RectangleCollisionUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./PaintableForm :as PaintableForm)
(defn- ItemPaintableFactory/jm_getInstance [& args] (JR/call jfile "./ItemPaintableFactory" "jm_getInstance" args))
(defn- ItemIndexPaintable/jm_getInstance [& args] (JR/call jfile "./ItemIndexPaintable" "jm_getInstance" args))
(defn- ItemIndexDx/jm_getInstance [& args] (JR/call jfile "./ItemIndexDx" "jm_getInstance" args))
(defn- FormTypeFactory/jm_getInstance [& args] (JR/call jfile "./FormTypeFactory" "jm_getInstance" args))
(defn- ScrollSelectionFormTempHorizontalPaintable/jnew_1 [& args] (JR/call jfile "./ScrollSelectionFormTempHorizontalPaintable" "jnew_1" args))
(defn- ScrollSelectionFormTempHorizontalDx/jnew_1 [& args] (JR/call jfile "./ScrollSelectionFormTempHorizontalDx" "jnew_1" args))
(defn- ScrollSelectionFormVerticalPaintable/jnew_1 [& args] (JR/call jfile "./ScrollSelectionFormVerticalPaintable" "jnew_1" args))
(defn- ScrollSelectionFormVericalDx/jnew_1 [& args] (JR/call jfile "./ScrollSelectionFormVericalDx" "jnew_1" args))
(defn- ScrollSelectionFormHorizontalPaintable/jnew_1 [& args] (JR/call jfile "./ScrollSelectionFormHorizontalPaintable" "jnew_1" args))
(defn- ScrollSelectionFormHorizontalDx/jnew_1 [& args] (JR/call jfile "./ScrollSelectionFormHorizontalDx" "jnew_1" args))

# Java class ScrollSelectionForm
(var jproto nil)
(var jcell_NULL_SCROLL_SELECTION_FORM :jnone)
(var jstatic_NULL_SCROLL_SELECTION_FORM nil)
(var jsetstatic_NULL_SCROLL_SELECTION_FORM nil)
(var jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM :jnone)
(var jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM nil)
(var jsetstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM nil)
(var jcell_INSIDE_FORM :jnone)
(var jstatic_INSIDE_FORM nil)
(var jsetstatic_INSIDE_FORM nil)
(var jcell_IS_IN_FORM :jnone)
(var jstatic_IS_IN_FORM nil)
(var jsetstatic_IS_IN_FORM nil)
(var jcell_GET_SELECTED_INDEX :jnone)
(var jstatic_GET_SELECTED_INDEX nil)
(var jsetstatic_GET_SELECTED_INDEX nil)
(var jnew_7 nil)
(var jm_createForm nil)
(var jm_getNullScrollSelectionForm nil)
(var jm_getNullScrollSelectionFormHorizontal nil)
(var jm_init nil)
(var jm_paintItemHorizontal nil)
(var jm_paintItemVertical nil)
(var jm_paintItemTempHorizontal nil)
(var jm_getSelectedIndexForPointHorizontalDx nil)
(var jm_getSelectedIndexForPointVerticalDx nil)
(var jm_getSelectedIndexForPointTempHorizontalDx nil)
(var jm_append nil)
(var jm_getSelectedItem nil)
(var jm_getItemIndex nil)
(var jm_getStartIndex nil)
(var jm_getSelectedIndexForPoint nil)
(var jm_processInputKey nil)
(var jm_isInForm nil)
(var jm_paintItem nil)
(var jm_paintUnselectedItem nil)
(var jm_getDiffX nil)
(var jm_getDx nil)
(var jm_getDy nil)
(var jm_setButtonBasicColor nil)
(var jm_getButtonBasicColor nil)

(set jstatic_NULL_SCROLL_SELECTION_FORM (fn jstatic_NULL_SCROLL_SELECTION_FORM []
  (when (= jcell_NULL_SCROLL_SELECTION_FORM :jnone) (set jcell_NULL_SCROLL_SELECTION_FORM ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_SCROLL_SELECTION_FORM))
(set jsetstatic_NULL_SCROLL_SELECTION_FORM (fn jsetstatic_NULL_SCROLL_SELECTION_FORM [value] (set jcell_NULL_SCROLL_SELECTION_FORM value)))

(set jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM (fn jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM []
  (when (= jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM :jnone) (set jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM))
(set jsetstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM (fn jsetstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM [value] (set jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM value)))

(set jstatic_INSIDE_FORM (fn jstatic_INSIDE_FORM []
  (when (= jcell_INSIDE_FORM :jnone) (set jcell_INSIDE_FORM " inside form"))
  jcell_INSIDE_FORM))
(set jsetstatic_INSIDE_FORM (fn jsetstatic_INSIDE_FORM [value] (set jcell_INSIDE_FORM value)))

(set jstatic_IS_IN_FORM (fn jstatic_IS_IN_FORM []
  (when (= jcell_IS_IN_FORM :jnone) (set jcell_IS_IN_FORM "isInForm"))
  jcell_IS_IN_FORM))
(set jsetstatic_IS_IN_FORM (fn jsetstatic_IS_IN_FORM [value] (set jcell_IS_IN_FORM value)))

(set jstatic_GET_SELECTED_INDEX (fn jstatic_GET_SELECTED_INDEX []
  (when (= jcell_GET_SELECTED_INDEX :jnone) (set jcell_GET_SELECTED_INDEX "getSelectedIndexForPoint"))
  jcell_GET_SELECTED_INDEX))
(set jsetstatic_GET_SELECTED_INDEX (fn jsetstatic_GET_SELECTED_INDEX [value] (set jcell_GET_SELECTED_INDEX value)))

    
(set jm_createForm (fn jm_createForm [_title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor]
    (label jreturn
        (try
            (do
            (if (= _formPaintableFactory (ItemPaintableFactory/jm_getInstance))
                (do
                (return jreturn (jnew_7 _title _items _formPaintableFactory _border (JR/i32 (- 3)) _backgroundBasicColor _foregroundBasicColor)))
                (do
                (var _commonStrings (CommonStrings/jm_getInstance))
                (var _logUtil (LogUtil/jm_getInstance))
                (:jm_putF _logUtil (_commonStrings :f_EXCEPTION) _logUtil (_commonStrings :f_EXCEPTION))
                (return jreturn (PaintableForm/jm_getNullPaintableForm)))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (var _logUtil (LogUtil/jm_getInstance))
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) _logUtil (_commonStrings :f_EXCEPTION) _e)
            (return jreturn (PaintableForm/jm_getNullPaintableForm))))))))
    
(set jm_getNullScrollSelectionForm (fn jm_getNullScrollSelectionForm []
    (label jreturn
        (if (= (jstatic_NULL_SCROLL_SELECTION_FORM) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_SCROLL_SELECTION_FORM (jm_createForm ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (array/new-filled 0 nil) (ItemPaintableFactory/jm_getInstance) 0 ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
        (return jreturn (jstatic_NULL_SCROLL_SELECTION_FORM)))))
    
(set jm_getNullScrollSelectionFormHorizontal (fn jm_getNullScrollSelectionFormHorizontal []
    (label jreturn
        (if (= (jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM (jm_createForm ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (array/new-filled 0 nil) (ItemPaintableFactory/jm_getInstance) 0 ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
        (return jreturn (jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM)))))
    
(set jnew_7 (fn jnew_7 [_title _items _formPaintableFactory _border _adjustedExtraBorder _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ScrollSelectionForm" :f_rectangleCollisionUtil nil :f_border 0 :f_halfBorder 0 :f_buttonBasicColor nil :f_scrollSelectionFormFormTypeItemIndexPaintable nil :f_formTypeItemIndexDx nil :f_paintable nil :f_adjustedExtraBorder 0} jproto))
    (put this :f_rectangleCollisionUtil (RectangleCollisionUtil/jm_getInstance))
    
    
    
    (put this :f_scrollSelectionFormFormTypeItemIndexPaintable (ItemIndexPaintable/jm_getInstance))
    (put this :f_formTypeItemIndexDx (ItemIndexDx/jm_getInstance))
    (put this :f_paintable (ItemPaintableFactory/jm_getInstance))
    
        (JR/superInit this (PaintableForm/jnew_4 _title _items _backgroundBasicColor _foregroundBasicColor))
        (set (this :f_adjustedExtraBorder) _adjustedExtraBorder)
        (set (this :f_buttonBasicColor) _foregroundBasicColor)
        (set (this :f_border) _border)
        (set (this :f_halfBorder) (brshift _border 1))
        (set (this :f_paintable) (:jm_getInstanceItemPaintable _formPaintableFactory this))
    this))
    
(set jm_init (fn jm_init [this _rectangle _formType]
        ((get PaintableForm/jproto :jm_init) this _rectangle _formType)
        (var _formTypeFactory (FormTypeFactory/jm_getInstance))
        (if (= _formType (_formTypeFactory :f_HORIZONTAL_FORM))
            (do
            (set (this :f_scrollSelectionFormFormTypeItemIndexPaintable) (ScrollSelectionFormHorizontalPaintable/jnew_1 this))
            (set (this :f_formTypeItemIndexDx) (ScrollSelectionFormHorizontalDx/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_VERTICAL_CENTER_FORM))
            (do
            (set (this :f_scrollSelectionFormFormTypeItemIndexPaintable) (ScrollSelectionFormVerticalPaintable/jnew_1 this))
            (set (this :f_formTypeItemIndexDx) (ScrollSelectionFormVericalDx/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_TEMP_HORIZONTAL_FORM))
            (do
            (set (this :f_scrollSelectionFormFormTypeItemIndexPaintable) (ScrollSelectionFormTempHorizontalPaintable/jnew_1 this))
            (set (this :f_formTypeItemIndexDx) (ScrollSelectionFormTempHorizontalDx/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_NULL_FORM_TYPE))
            (do
            nil)
            (do
            (error (JR/newException "Exception" (_formTypeFactory :f_UNK))))))))))
    
(set jm_paintItemHorizontal (fn jm_paintItemHorizontal [this _graphics _index _item _x _y]
    (label jreturn
        (var _width (:jm_getMinimumWidth _item))
        (return jreturn (JR/i32 (+ (JR/i32 (+ _x _width)) (this :f_border)))))))
    
(set jm_paintItemVertical (fn jm_paintItemVertical [this _graphics _index _item _x _y]
    (label jreturn
        (var _height (:jm_getMinimumHeight _item))
        (return jreturn (JR/i32 (+ (JR/i32 (+ _y _height)) (this :f_border)))))))
    
(set jm_paintItemTempHorizontal (fn jm_paintItemTempHorizontal [this _graphics _index _item _x _y]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getSelectedIndexForPointHorizontalDx (fn jm_getSelectedIndexForPointHorizontalDx [this _index _item _dx _dy]
    (label jreturn
        (return jreturn (JR/i32 (- _dx (this :f_halfBorder)))))))
    
(set jm_getSelectedIndexForPointVerticalDx (fn jm_getSelectedIndexForPointVerticalDx [this _index _item _dx _dy]
    (label jreturn
        (return jreturn (JR/i32 (+ _dx (:jm_getDiffX this _item)))))))
    
(set jm_getSelectedIndexForPointTempHorizontalDx (fn jm_getSelectedIndexForPointTempHorizontalDx [this _index _item _dx _dy]
    (label jreturn
        (return jreturn (JR/i32 (+ _dx (:jm_getDiffX this _item)))))))
    
(set jm_append (fn jm_append [this _item]
    (label jreturn
        (return jreturn ((get PaintableForm/jproto :jm_append) this _item)))))
    
(set jm_getSelectedItem (fn jm_getSelectedItem [this _point]
    (label jreturn
        (var _index (:jm_getSelectedIndexForPoint this _point))
        (if (not= _index (JR/i32 (- 1)))
            (do
            (return jreturn (:jm_get this _index)))
            (do
            (return jreturn (ABCustomItem/jm_getNullInstance)))))))
    
(set jm_getItemIndex (fn jm_getItemIndex [this _item]
    (label jreturn
        (var _nextItem nil)
        (var _size (:jm_size this))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _nextItem (:jm_get this _index))
            (if (= _nextItem _item)
                (do
                (return jreturn _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_getStartIndex (fn jm_getStartIndex [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getSelectedIndexForPoint (fn jm_getSelectedIndexForPoint [this _point]
    (label jreturn
        (var _start (:jm_getStartIndex this))
        (var _size (:jm_size this))
        (var _dx (:jm_getDx this))
        (var _dy (:jm_getDy this))
        (var _formTypeFactory (FormTypeFactory/jm_getInstance))
        (var _commonLabels (CommonLabels/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (_commonLabels :f_START_LABEL))
        (:jm_appendint _stringBuffer _start)
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer (_commonLabels :f_TOTAL_LABEL))
        (:jm_appendint _stringBuffer _size)
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (jstatic_GET_SELECTED_INDEX))
        (var _item nil)
        (var _width 0)
        (var _height 0)
        (var _diffX 0)
        (do
            (var _index _start)
            (var jbreak false)
            (while (and (not jbreak) (< _index _size))
                (label jcontinue
            (set _item (:jm_get this _index))
            (set _width (:jm_getMinimumWidth _item))
            (set _height (:jm_getMinimumHeight _item))
            (set _diffX (:jm_getDx (this :f_formTypeItemIndexDx) _index _item _dx _dy))
            (if (:jm_isInside (this :f_rectangleCollisionUtil) _diffX (JR/i32 (- _dy (this :f_halfBorder))) (JR/i32 (+ (JR/i32 (+ _diffX _width)) (this :f_border))) (JR/i32 (+ (JR/i32 (+ (JR/i32 (+ _dy _height)) (this :f_halfBorder))) 1)) (:jm_getX _point) (:jm_getY _point))
                (do
                (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
                (:jm_append _stringBuffer (_commonLabels :f_ITEM_LABEL))
                (:jm_append _stringBuffer (:jm_getLabel _item))
                (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
                (:jm_append _stringBuffer (_commonLabels :f_INDEX_LABEL))
                (:jm_appendint _stringBuffer _index)
                (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (jstatic_GET_SELECTED_INDEX))
                (return jreturn _index)))
            (if (= (this :f_formType) (_formTypeFactory :f_HORIZONTAL_FORM))
                (do
                (set _dx (JR/i32 (+ (JR/i32 (+ _dx _width)) (this :f_border))))
                (if (> _dx (:jm_getMaxX (this :f_rectangle)))
                    (do
                    (do (set jbreak true) (return jcontinue)))))
                (if (= (this :f_formType) (_formTypeFactory :f_VERTICAL_CENTER_FORM))
                (do
                (set _dy (JR/i32 (+ (JR/i32 (+ _dy _height)) (this :f_border))))
                (if (> _dy (:jm_getMaxY (this :f_rectangle)))
                    (do
                    (do (set jbreak true) (return jcontinue)))))
                (if (= (this :f_formType) (_formTypeFactory :f_NULL_FORM_TYPE))
                (do
                nil)
                (do
                (error (JR/newException "Exception" (_formTypeFactory :f_UNK))))))))
                (unless jbreak (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_processInputKey (fn jm_processInputKey [this _gameKeyCode]
    (label jreturn
        (var _formTypeFactory (FormTypeFactory/jm_getInstance))
        (if (= (:jm_size this) 0)
            (do
            (return jreturn (JR/i32 (- 1)))))
        (var _index (:jm_getSelectedIndex this))
        (if (or (= (this :f_formType) (_formTypeFactory :f_HORIZONTAL_FORM)) (= (this :f_formType) (_formTypeFactory :f_TEMP_HORIZONTAL_FORM)))
            (do
            (if (= _gameKeyCode (Canvas/jstatic_RIGHT))
                (do
                (set _index (JR/i32 (+ _index 1))))
                (if (= _gameKeyCode (Canvas/jstatic_LEFT))
                (do
                (set _index (JR/i32 (- _index 1)))))))
            (if (= (this :f_formType) (_formTypeFactory :f_VERTICAL_CENTER_FORM))
            (do
            (if (= _gameKeyCode (Canvas/jstatic_DOWN))
                (do
                (set _index (JR/i32 (+ _index 1))))
                (if (= _gameKeyCode (Canvas/jstatic_UP))
                (do
                (set _index (JR/i32 (- _index 1)))))))
            (if (= (this :f_formType) (_formTypeFactory :f_NULL_FORM_TYPE))
            (do
            nil)
            (do
            (error (JR/newException "Exception" (_formTypeFactory :f_UNK)))))))
        (var _max (JR/i32 (- (:jm_size this) 1)))
        (if (< _index 0)
            (do
            (:jm_setSelectedIndex this 0))
            (if (> _index _max)
            (do
            (:jm_setSelectedIndex this _max))
            (do
            (:jm_setSelectedIndex this _index))))
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_isInForm (fn jm_isInForm [this _point]
    (label jreturn
        (if (:jm_isInside (this :f_rectangleCollisionUtil) (this :f_x) (JR/i32 (- (this :f_y) (this :f_halfBorder))) (JR/i32 (+ (:jm_getMaxX (this :f_rectangle)) (this :f_border))) (JR/i32 (+ (:jm_getMaxY (this :f_rectangle)) (this :f_border))) (:jm_getX _point) (:jm_getY _point))
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (:jm_toString_1 (StringUtil/jm_getInstance) _point)) (jstatic_INSIDE_FORM))) this (jstatic_IS_IN_FORM))
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_paintItem (fn jm_paintItem [this _graphics _index _item _x _y]
    (label jreturn
        (:jm_paintXY _item _graphics _x _y)
        (var _width (:jm_getMinimumWidth _item))
        (var _height (:jm_getMinimumHeight _item))
        (:jm_setColor _graphics (:jm_intValue (:jm_getButtonBasicColor this)))
        (var _adjustedBorder 3)
        (:jm_drawRect _graphics (JR/i32 (- (JR/i32 (- _x (this :f_halfBorder))) _adjustedBorder)) (JR/i32 (- (JR/i32 (- _y (this :f_halfBorder))) _adjustedBorder)) (JR/i32 (+ (JR/i32 (+ _width (this :f_border))) (this :f_adjustedExtraBorder))) (JR/i32 (+ (JR/i32 (+ _height (this :f_border))) (this :f_adjustedExtraBorder))))
        (return jreturn (:jm_paint (this :f_scrollSelectionFormFormTypeItemIndexPaintable) _graphics _index _item _x _y)))))
    
(set jm_paintUnselectedItem (fn jm_paintUnselectedItem [this _graphics _index _item _x _y]
    (label jreturn
        (:jm_setColor _graphics (:jm_intValue (:jm_getButtonBasicColor this)))
        (:jm_paintUnselected _item _graphics _x _y)
        (return jreturn (:jm_paint (this :f_scrollSelectionFormFormTypeItemIndexPaintable) _graphics _index _item _x _y)))))
    
(set jm_getDiffX (fn jm_getDiffX [this _item]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getDx (fn jm_getDx [this]
    (label jreturn
        (return jreturn (this :f_x)))))
    
(set jm_getDy (fn jm_getDy [this]
    (label jreturn
        (return jreturn (this :f_y)))))
    
(set jm_setButtonBasicColor (fn jm_setButtonBasicColor [this _buttonBasicColor]
        (set (this :f_buttonBasicColor) _buttonBasicColor)))
    
(set jm_getButtonBasicColor (fn jm_getButtonBasicColor [this]
    (label jreturn
        (return jreturn (this :f_buttonBasicColor)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_paintItemHorizontal jm_paintItemHorizontal :jm_paintItemVertical jm_paintItemVertical :jm_paintItemTempHorizontal jm_paintItemTempHorizontal :jm_getSelectedIndexForPointHorizontalDx jm_getSelectedIndexForPointHorizontalDx :jm_getSelectedIndexForPointVerticalDx jm_getSelectedIndexForPointVerticalDx :jm_getSelectedIndexForPointTempHorizontalDx jm_getSelectedIndexForPointTempHorizontalDx :jm_append jm_append :jm_getSelectedItem jm_getSelectedItem :jm_getItemIndex jm_getItemIndex :jm_getStartIndex jm_getStartIndex :jm_getSelectedIndexForPoint jm_getSelectedIndexForPoint :jm_processInputKey jm_processInputKey :jm_isInForm jm_isInForm :jm_paintItem jm_paintItem :jm_paintUnselectedItem jm_paintUnselectedItem :jm_getDiffX jm_getDiffX :jm_getDx jm_getDx :jm_getDy jm_getDy :jm_setButtonBasicColor jm_setButtonBasicColor :jm_getButtonBasicColor jm_getButtonBasicColor} PaintableForm/jproto))


