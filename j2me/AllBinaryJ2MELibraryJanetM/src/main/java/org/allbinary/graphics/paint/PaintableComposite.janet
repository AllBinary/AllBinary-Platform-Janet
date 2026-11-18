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
# package org.allbinary.graphics.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./Paintable :as Paintable)

# Java class PaintableComposite
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)
(var jm_paintThreed nil)

    
(set jnew_1 (fn jnew_1 [_paintableArray]
    (var this (table/setproto @{:jclass "PaintableComposite" :f_paintableArray nil} jproto))
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_paintableArray) _paintableArray)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (do
            (var _index (JR/i32 (- (length (this :f_paintableArray)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((this :f_paintableArray) _index)))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
        (do
            (var _index (JR/i32 (- (length (this :f_paintableArray)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((this :f_paintableArray) _index)))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_paintThreed jm_paintThreed} Paintable/jproto))


