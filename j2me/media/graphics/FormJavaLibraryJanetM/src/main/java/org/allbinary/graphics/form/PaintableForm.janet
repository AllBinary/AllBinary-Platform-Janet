# Generated Code Do Not Modify
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./ABCustomForm :as ABCustomForm)
(defn- FormTypeFactory/jm_getInstance [& args] (JR/call jfile "./FormTypeFactory" "jm_getInstance" args))

# Java class PaintableForm
(var jproto nil)
(var jcell_NULL_PAINTABLE_FORM :jnone)
(var jstatic_NULL_PAINTABLE_FORM nil)
(var jsetstatic_NULL_PAINTABLE_FORM nil)
(var jnew_4 nil)
(var jm_getNullPaintableForm nil)
(var jm_init nil)
(var jm_getWidth nil)

(set jstatic_NULL_PAINTABLE_FORM (fn jstatic_NULL_PAINTABLE_FORM []
  (when (= jcell_NULL_PAINTABLE_FORM :jnone) (set jcell_NULL_PAINTABLE_FORM ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_PAINTABLE_FORM))
(set jsetstatic_NULL_PAINTABLE_FORM (fn jsetstatic_NULL_PAINTABLE_FORM [value] (set jcell_NULL_PAINTABLE_FORM value)))

    
(set jm_getNullPaintableForm (fn jm_getNullPaintableForm []
    (label jreturn
        (if (= (jstatic_NULL_PAINTABLE_FORM) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_PAINTABLE_FORM (jnew_4 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (array/new-filled 0 nil) ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
        (return jreturn (jstatic_NULL_PAINTABLE_FORM)))))
    
(set jnew_4 (fn jnew_4 [_title _items _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "PaintableForm" :f_canvasStrings nil :f_rectangle nil :f_x 0 :f_y 0 :f_formType nil} jproto))
    (put this :f_canvasStrings (CanvasStrings/jm_getInstance))
    (put this :f_rectangle (RectangleFactory/jstatic_SINGLETON))
    
    
    (put this :f_formType ((FormTypeFactory/jm_getInstance) :f_NULL_FORM_TYPE))
        (JR/superInit this (ABCustomForm/jnew_4 _title _items _backgroundBasicColor _foregroundBasicColor))
        (:jm_setSelectedIndex this 0)
    this))
    
(set jm_init (fn jm_init [this _rectangle _formType]
        (set (this :f_rectangle) _rectangle)
        (var _point (:jm_getPoint (this :f_rectangle)))
        (set (this :f_x) (:jm_getX _point))
        (set (this :f_y) (:jm_getY _point))
        (set (this :f_formType) _formType)))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn (:jm_getWidth (this :f_rectangle))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_getWidth jm_getWidth} ABCustomForm/jproto))


