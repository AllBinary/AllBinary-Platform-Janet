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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)

# Java class PaintableLayerComposite
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)
(var jm_paintThreed nil)

    
(set jnew_1 (fn jnew_1 [_paintableArray]
    (var this (table/setproto @{:jclass "PaintableLayerComposite" :f_paintableArray nil} jproto))
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_paintableArray) _paintableArray)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (do
            (var _index (length (this :f_paintableArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (JR/className ((this :f_paintableArray) _index)))))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
        (var _paintableInterface nil)
        (do
            (var _index (length (this :f_paintableArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _paintableInterface ((this :f_paintableArray) _index))
            (:jm_paintThreed _paintableInterface _graphics))))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_paintThreed jm_paintThreed} Paintable/jproto))


