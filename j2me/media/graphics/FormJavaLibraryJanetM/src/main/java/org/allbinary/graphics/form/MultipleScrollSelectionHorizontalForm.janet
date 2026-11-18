# Generated Code Do Not Modify
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- J2MEUtil/jm_isJ2ME [& args] (JR/call jfile "../../../../org/allbinary/J2MEUtil" "jm_isJ2ME" args))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ./ScrollSelectionForm :as ScrollSelectionForm)
(defn- ItemPaintableFactory/jm_getInstance [& args] (JR/call jfile "./ItemPaintableFactory" "jm_getInstance" args))
(defn- ItemIndexPaintable/jm_getInstance [& args] (JR/call jfile "./ItemIndexPaintable" "jm_getInstance" args))
(defn- MultipleScrollSelectionFormRectPaintable/jnew_1 [& args] (JR/call jfile "./MultipleScrollSelectionFormRectPaintable" "jnew_1" args))
(defn- FormTypeFactory/jm_getInstance [& args] (JR/call jfile "./FormTypeFactory" "jm_getInstance" args))
(defn- MultipleScrollSelectionFormVerticalPaintable/jnew_1 [& args] (JR/call jfile "./MultipleScrollSelectionFormVerticalPaintable" "jnew_1" args))
(defn- MultipleScrollSelectionFormHorizontalPaintable/jnew_1 [& args] (JR/call jfile "./MultipleScrollSelectionFormHorizontalPaintable" "jnew_1" args))

# Java class MultipleScrollSelectionHorizontalForm
(var jproto nil)
(var jnew_6 nil)
(var jm_createForm nil)
(var jm_fillRect nil)
(var jm_init nil)
(var jm_updateMeasurement nil)
(var jm_paintHorizontal nil)
(var jm_paintVertical nil)
(var jm_getStartIndex nil)
(var jm_paint nil)

    
(set jm_createForm (fn jm_createForm [_title _items _rectangle _formType _border _backgroundBasicColor _foregroundBasicColor]
    (label jreturn
        (var _scrollSelectionForm (jnew_6 _title _items (ItemPaintableFactory/jm_getInstance) _border _backgroundBasicColor _foregroundBasicColor))
        (:jm_init _scrollSelectionForm _rectangle _formType)
        (return jreturn _scrollSelectionForm))))
    
(set jnew_6 (fn jnew_6 [_title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "MultipleScrollSelectionHorizontalForm" :f_rectPaintable nil :f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable nil :f_backgroundColor 0 :f_myFontProcessor nil :f_logged false :f_fontHeight 0} jproto))
    (put this :f_rectPaintable (NullPaintable/jm_getInstance))
    (put this :f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable (ItemIndexPaintable/jm_getInstance))
    (put this :f_backgroundColor (JR/className ((BasicColorFactory/jm_getInstance) :f_TRANSPARENT_GREY)))
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_logged false)
    (put this :f_fontHeight 0)
        (JR/superInit this (ScrollSelectionForm/jnew_7 _title _items _formPaintableFactory _border 3 _backgroundBasicColor _foregroundBasicColor))
        (if (or (J2MEUtil/jm_isJ2ME) (J2MEUtil/jm_isHTML))
            (do
            nil)
            (do
            (set (this :f_rectPaintable) (MultipleScrollSelectionFormRectPaintable/jnew_1 this))))
    this))
    
(set jm_fillRect (fn jm_fillRect [this _graphics]
        (:jm_setColor _graphics (this :f_backgroundColor))
        (:jm_fillRect _graphics (this :f_x) (this :f_y) (:jm_getWidth (this :f_rectangle)) (:jm_getHeight (this :f_rectangle)))))
    
(set jm_init (fn jm_init [this _rectangle _formType]
        ((get ScrollSelectionForm/jproto :jm_init) this _rectangle _formType)
        (var _formTypeFactory (FormTypeFactory/jm_getInstance))
        (if (= _formType (_formTypeFactory :f_HORIZONTAL_FORM))
            (do
            (set (this :f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable) (MultipleScrollSelectionFormHorizontalPaintable/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_VERTICAL_CENTER_FORM))
            (do
            (set (this :f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable) (MultipleScrollSelectionFormVerticalPaintable/jnew_1 this)))
            (if (= _formType (_formTypeFactory :f_NULL_FORM_TYPE))
            (do
            nil)
            (do
            (error (JR/newException "Exception" (_formTypeFactory :f_UNK)))))))))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_fontHeight) (:jm_getHeight _font))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_paintHorizontal (fn jm_paintHorizontal [this _graphics _index _item _dx _dy]
    (var _dx _dx)
    (label jreturn
        (var _dx2 (JR/i32 (+ (:jm_paintItem this _graphics _index _item _dx _dy) (this :f_border))))
        (JR/className (this :f_paintable))
        (set _dx _dx2)
        (return jreturn _dx))))
    
(set jm_paintVertical (fn jm_paintVertical [this _graphics _index _item _dx _dy]
    (label jreturn
        (:jm_paintItem this _graphics _index _item _dx _dy)
        (JR/className (this :f_paintable))
        (return jreturn _dx))))
    
(set jm_getStartIndex (fn jm_getStartIndex [this]
    (label jreturn
        (return jreturn (:jm_getSelectedIndex this)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (try
            (do
            (:jm_process (this :f_myFontProcessor) _graphics)
            (var _start (:jm_getStartIndex this))
            (var _size (:jm_size this))
            (var _dx (this :f_x))
            (var _dy (this :f_y))
            (:jm_paint (this :f_rectPaintable) _graphics)
            (:jm_drawString _graphics (:jm_getTitle this) (this :f_x) (JR/i32 (- (this :f_y) (this :f_fontHeight))) 0)
            (var _item nil)
            (do
                (var _index _start)
                (while (< _index _size)
                    (do
                (set _item (:jm_get this _index))
                (if (>= _dx (:jm_getMaxX (this :f_rectangle)))
                    (do
                    (if (this :f_logged)
                        (do
                        nil)
                        (do
                        (set (this :f_logged) true)
                        (PreLogUtil/jm_put (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "painting beyond maxx: ") (:jm_getMaxX (this :f_rectangle)))) this ((this :f_canvasStrings) :f_PAINT))))))
                (set _dx (:jm_paint (this :f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable) _graphics _index _item _dx _dy)))
                    (do (set _index (JR/i32 (+ _index 1)))))))
            ([_e] (do
            (PreLogUtil/jm_put ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_canvasStrings) :f_PAINT)))))))

(set jproto (table/setproto @{:jm_fillRect jm_fillRect :jm_init jm_init :jm_updateMeasurement jm_updateMeasurement :jm_paintHorizontal jm_paintHorizontal :jm_paintVertical jm_paintVertical :jm_getStartIndex jm_getStartIndex :jm_paint jm_paint} ScrollSelectionForm/jproto))


