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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ColorFillPaintableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" "jm_getInstance" args))
(import ./GameCommandCanvas :as GameCommandCanvas)

# Java class BasicPaintablesCanvas
(var jproto nil)
(var jnew_4 nil)
(var jm_paint nil)

    
(set jnew_4 (fn jnew_4 [_cmdListener _name _allBinaryGameLayerManager _paintableArray]
    (var this (table/setproto @{:jclass "BasicPaintablesCanvas" :f_paintableArray nil :f_colorFillPaintable nil} jproto))
    
    
        (JR/superInit this (GameCommandCanvas/jnew_4 _cmdListener _name (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) (:jm_getForegroundBasicColor _allBinaryGameLayerManager)))
        (set (this :f_paintableArray) _paintableArray)
        (set (this :f_colorFillPaintable) (:jm_getInstance (ColorFillPaintableFactory/jm_getInstance) (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) false))
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_colorFillPaintable) _graphics)
        (:jm_setColor _graphics (this :f_foregroundColor))
        (do
            (var _index (JR/i32 (- (length (this :f_paintableArray)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((this :f_paintableArray) _index)))
                (do (set _index (JR/i32 (- _index 1))))))
        ((get GameCommandCanvas/jproto :jm_paint) this _graphics)))

(set jproto (table/setproto @{:jm_paint jm_paint} GameCommandCanvas/jproto))


