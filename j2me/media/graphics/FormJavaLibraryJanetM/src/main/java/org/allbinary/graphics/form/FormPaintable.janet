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
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)

# Java class FormPaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)
(var jm_getForm nil)

    
(set jnew_1 (fn jnew_1 [_form]
    (var this (table/setproto @{:jclass "FormPaintable" :f_form nil} jproto))
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_form) _form)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_form) _graphics)))
    
(set jm_getForm (fn jm_getForm [this]
    (label jreturn
        (return jreturn (this :f_form)))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_getForm jm_getForm} Paintable/jproto))


