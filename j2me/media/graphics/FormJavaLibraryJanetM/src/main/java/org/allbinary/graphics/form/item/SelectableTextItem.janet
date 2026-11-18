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
(import ./ABTextItem :as ABTextItem)

# Java class SelectableTextItem
(var jproto nil)
(var jnew_5 nil)
(var jm_isFocusable nil)
(var jm_paintXY nil)

    
(set jnew_5 (fn jnew_5 [_label _layout _altText _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "SelectableTextItem"} jproto))
        (JR/superInit this (ABTextItem/jnew_5 _label _layout _altText _backgroundBasicColor _foregroundBasicColor))
    this))
    
(set jm_isFocusable (fn jm_isFocusable [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_myFontProcessor))
        (var _stringComponent (:jm_getLabelStringComponent this))
        (if (not (nil? _stringComponent))
            (do
            (:jm_setColor _graphics (JR/className (:jm_getForegroundBasicColor _stringComponent)))))
        (:jm_drawString _graphics (:jm_getLabel this) (JR/i32 (+ _x 2)) _y 0)))

(set jproto (table/setproto @{:jm_isFocusable jm_isFocusable :jm_paintXY jm_paintXY} ABTextItem/jproto))


