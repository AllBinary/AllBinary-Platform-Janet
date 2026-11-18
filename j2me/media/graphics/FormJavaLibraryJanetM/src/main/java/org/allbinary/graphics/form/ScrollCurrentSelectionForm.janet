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
(defn- Processor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/canvas/Processor" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ./ScrollSelectionForm :as ScrollSelectionForm)
(defn- ItemIndexDx/jm_getInstance [& args] (JR/call jfile "./ItemIndexDx" "jm_getInstance" args))
(defn- FormTypeFactory/jm_getInstance [& args] (JR/call jfile "./FormTypeFactory" "jm_getInstance" args))
(defn- VerticalFormProcessor/jnew_1 [& args] (JR/call jfile "./VerticalFormProcessor" "jnew_1" args))
(defn- VerticalItemIndexDx/jnew_1 [& args] (JR/call jfile "./VerticalItemIndexDx" "jnew_1" args))
(defn- HorizontalFormProcessor/jnew_1 [& args] (JR/call jfile "./HorizontalFormProcessor" "jnew_1" args))
(defn- HorizontalItemIndexDx/jnew_1 [& args] (JR/call jfile "./HorizontalItemIndexDx" "jnew_1" args))
(defn- TempHorizontalFormProcessor/jnew_1 [& args] (JR/call jfile "./TempHorizontalFormProcessor" "jnew_1" args))
(defn- TempHorizontalItemIndexDx/jnew_1 [& args] (JR/call jfile "./TempHorizontalItemIndexDx" "jnew_1" args))

# Java class ScrollCurrentSelectionForm
(var jproto nil)
(var jnew_8 nil)
(var jm_init nil)
(var jm_updateMeasurement nil)
(var jm_processTempHorizontalForm nil)
(var jm_processHorizontalForm nil)
(var jm_processVerticalForm nil)
(var jm_getXTempHorizontalForm nil)
(var jm_getXHorizontalForm nil)
(var jm_getXVerticalForm nil)
(var jm_getDiffX nil)
(var jm_getDx nil)
(var jm_getDy nil)
(var jm_paint nil)

    
(set jnew_8 (fn jnew_8 [_title _items _formPaintableFactory _border _adjustedExtraBorder _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ScrollCurrentSelectionForm" :f_moveForSmallScreen false :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_processor nil :f_preItemIndexDx nil :f_dx 0 :f_dy 0 :f_maxWidth 0} jproto))
    
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    (put this :f_processor (Processor/jm_getInstance))
    (put this :f_preItemIndexDx (ItemIndexDx/jm_getInstance))
    
    
    (put this :f_maxWidth 0)
        (JR/superInit this (ScrollSelectionForm/jnew_7 _title _items _formPaintableFactory _border _adjustedExtraBorder _backgroundBasicColor _foregroundBasicColor))
        (set (this :f_moveForSmallScreen) _moveForSmallScreen)
    this))
    
(set jm_init (fn jm_init [this _rectangle _formType]
        ((get ScrollSelectionForm/jproto :jm_init) this _rectangle _formType)
        (var _formTypeFactory (FormTypeFactory/jm_getInstance))
        (if (= _formType (_formTypeFactory :f_TEMP_HORIZONTAL_FORM))
            (do
            (set (this :f_processor) (TempHorizontalFormProcessor/jnew_1 this))
            (set (this :f_preItemIndexDx) (TempHorizontalItemIndexDx/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_HORIZONTAL_FORM))
            (do
            (set (this :f_processor) (HorizontalFormProcessor/jnew_1 this))
            (set (this :f_preItemIndexDx) (HorizontalItemIndexDx/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_VERTICAL_CENTER_FORM))
            (do
            (set (this :f_processor) (VerticalFormProcessor/jnew_1 this))
            (set (this :f_preItemIndexDx) (VerticalItemIndexDx/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_NULL_FORM_TYPE))
            (do
            nil)
            (do
            (JR/className (this :f_logUtil)))))))
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_processTempHorizontalForm (fn jm_processTempHorizontalForm [this]
        (set (this :f_dx) (JR/i32 (+ (JR/i32 (- (this :f_x) 30)) (brshift (:jm_getWidth (this :f_rectangle)) 1))))
        (set (this :f_dy) (this :f_y))))
    
(set jm_processHorizontalForm (fn jm_processHorizontalForm [this]
        (var _size (:jm_size this))
        (var _totalWidth 0)
        (var _item nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _item (:jm_get this _index))
            (set _totalWidth (JR/i32 (+ _totalWidth (JR/i32 (+ (:jm_getMinimumWidth _item) (this :f_border)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_dx) (JR/i32 (- (JR/i32 (+ (this :f_x) (brshift (:jm_getWidth (this :f_rectangle)) 1))) (brshift _totalWidth 1))))
        (set (this :f_dy) (JR/i32 (+ (this :f_y) (brshift (:jm_getHeight (this :f_rectangle)) 1))))
        (if (this :f_moveForSmallScreen)
            (do
            (var _maxTitleHeight 175)
            (if (< (this :f_dy) _maxTitleHeight)
                (do
                (set (this :f_dy) _maxTitleHeight)))))))
    
(set jm_processVerticalForm (fn jm_processVerticalForm [this]
        (var _totalHeight 0)
        (var _size (:jm_size this))
        (var _item2 nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _item2 (:jm_get this _index))
            (if (< (this :f_maxWidth) (:jm_getMinimumWidth _item2))
                (do
                (set (this :f_maxWidth) (:jm_getMinimumWidth _item2))))
            (set _totalHeight (JR/i32 (+ _totalHeight (JR/i32 (+ (:jm_getMinimumHeight _item2) (this :f_border)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_dx) (JR/idiv (JR/i32 (- (:jm_getWidth (this :f_rectangle)) (this :f_maxWidth))) 2))
        (if (> (:jm_size this) 0)
            (do
            (set (this :f_dy) (JR/i32 (+ (this :f_y) (JR/idiv (JR/i32 (- (:jm_getHeight (this :f_rectangle)) _totalHeight)) 2))))
            (if (this :f_moveForSmallScreen)
                (do
                (var _maxTitleHeight 175)
                (if (< (this :f_dy) _maxTitleHeight)
                    (do
                    (set (this :f_dy) _maxTitleHeight))))))
            (do
            (set (this :f_dy) (this :f_y))))))
    
(set jm_getXTempHorizontalForm (fn jm_getXTempHorizontalForm [this _index _item _dx _dy]
    (label jreturn
        (return jreturn (:jm_getDiffX this _item)))))
    
(set jm_getXHorizontalForm (fn jm_getXHorizontalForm [this _index _item _dx _dy]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getXVerticalForm (fn jm_getXVerticalForm [this _index _item _dx _dy]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getDiffX this _item) (this :f_halfBorder)))))))
    
(set jm_getDiffX (fn jm_getDiffX [this _item]
    (label jreturn
        (return jreturn (brshift (JR/i32 (- (this :f_maxWidth) (:jm_getMinimumWidth _item))) 1)))))
    
(set jm_getDx (fn jm_getDx [this]
    (label jreturn
        (return jreturn (this :f_dx)))))
    
(set jm_getDy (fn jm_getDy [this]
    (label jreturn
        (return jreturn (this :f_dy)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (try
            (do
            (:jm_process (this :f_processor))
            (var _delta 0)
            (var _deltaX (:jm_getDx this))
            (var _deltaY (:jm_getDy this))
            (var _size (:jm_size this))
            (var _formTypeFactory (FormTypeFactory/jm_getInstance))
            (var _item nil)
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (set _item (:jm_get this _index))
                (var _diffX (:jm_getDx (this :f_preItemIndexDx) _index _item (this :f_dx) (this :f_dy)))
                (if (= _index (:jm_getSelectedIndex this))
                    (do
                    (set _delta (:jm_paintItem this _graphics _index _item (JR/i32 (+ _deltaX _diffX)) _deltaY))
                    (JR/className (this :f_paintable)))
                    (do
                    (set _delta (:jm_paintUnselectedItem this _graphics _index _item (JR/i32 (+ _deltaX _diffX)) _deltaY))
                    (JR/className (this :f_paintable))))
                (if (= (this :f_formType) (_formTypeFactory :f_TEMP_HORIZONTAL_FORM))
                    (do
                    nil)
                    (if (= (this :f_formType) (_formTypeFactory :f_HORIZONTAL_FORM))
                    (do
                    (set _deltaX _delta))
                    (if (= (this :f_formType) (_formTypeFactory :f_VERTICAL_CENTER_FORM))
                    (do
                    (set _deltaY _delta))
                    (do
                    (error (JR/newException "Exception" (_formTypeFactory :f_UNK))))))))
                    (do (set _index (JR/i32 (+ _index 1)))))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_updateMeasurement jm_updateMeasurement :jm_processTempHorizontalForm jm_processTempHorizontalForm :jm_processHorizontalForm jm_processHorizontalForm :jm_processVerticalForm jm_processVerticalForm :jm_getXTempHorizontalForm jm_getXTempHorizontalForm :jm_getXHorizontalForm jm_getXHorizontalForm :jm_getXVerticalForm jm_getXVerticalForm :jm_getDiffX jm_getDiffX :jm_getDx jm_getDx :jm_getDy jm_getDy :jm_paint jm_paint} ScrollSelectionForm/jproto))


