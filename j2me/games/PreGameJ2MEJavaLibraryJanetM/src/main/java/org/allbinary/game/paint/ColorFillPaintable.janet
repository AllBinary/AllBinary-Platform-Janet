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
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(import ./ColorFillBasePaintable :as ColorFillBasePaintable)

# Java class ColorFillPaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_basicColor]
    (var this (table/setproto @{:jclass "ColorFillPaintable" :f_displayInfoSingleton nil} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
        (JR/superInit this (ColorFillBasePaintable/jnew_1 _basicColor))
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_setColor _graphics (this :f_colorP))
        (:jm_fillRect _graphics 0 0 (:jm_getLastWidth (this :f_displayInfoSingleton)) (:jm_getLastHeight (this :f_displayInfoSingleton)))))

(set jproto (table/setproto @{:jm_paint jm_paint} ColorFillBasePaintable/jproto))


