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
# package org.allbinary.game.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./ColorFillPaintable :as ColorFillPaintable)

# Java class OverScanColorFillPaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_basicColor]
    (var this (table/setproto @{:jclass "OverScanColorFillPaintable"} jproto))
        (JR/superInit this (ColorFillPaintable/jnew_1 _basicColor))
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_setColor _graphics (this :f_colorP))
        (:jm_fillRect _graphics (JR/i32 (- (:jm_getClipX _graphics))) (JR/i32 (- (:jm_getClipY _graphics))) (JR/i32 (+ (JR/className (this :f_displayInfoSingleton)) (JR/i32 (* (:jm_getClipX _graphics) 2)))) (JR/i32 (+ (JR/className (this :f_displayInfoSingleton)) (JR/i32 (* (:jm_getClipY _graphics) 2)))))))

(set jproto (table/setproto @{:jm_paint jm_paint} ColorFillPaintable/jproto))


