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
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)

# Java class SWTBlackPaintable
(var jproto nil)
(var jnew_0 nil)
(var jm_paint nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SWTBlackPaintable" :f_basicSetColorUtil nil :f_BLACK nil} jproto))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    (put this :f_BLACK ((BasicColorFactory/jm_getInstance) :f_BLACK))
    (JR/superInit this (Paintable/jnew_0))
    this))

    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (this :f_BLACK))))

(set jproto (table/setproto @{:jm_paint jm_paint} Paintable/jproto))


