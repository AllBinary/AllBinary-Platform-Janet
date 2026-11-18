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

# Java class MultipleScrollSelectionFormRectPaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_multipleScrollSelectionForm]
    (var this (table/setproto @{:jclass "MultipleScrollSelectionFormRectPaintable" :f_multipleScrollSelectionForm nil} jproto))
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_multipleScrollSelectionForm) _multipleScrollSelectionForm)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_fillRect (this :f_multipleScrollSelectionForm) _graphics)))

(set jproto (table/setproto @{:jm_paint jm_paint} Paintable/jproto))


