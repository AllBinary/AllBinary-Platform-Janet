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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(import ../../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- TouchButtonFactory/jm_getInstance [& args] (JR/call jfile "./TouchButtonFactory" "jm_getInstance" args))

# Java class TouchButtonsPaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_basicColor]
    (var this (table/setproto @{:jclass "TouchButtonsPaintable" :f_foregroundBasicColor nil :f_foregroundColor 0 :f_basicSetColorUtil nil :f_touchButtonFactory nil} jproto))
    
    
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    (put this :f_touchButtonFactory (TouchButtonFactory/jm_getInstance))
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_foregroundBasicColor) _basicColor)
        (set (this :f_foregroundColor) (:jm_intValue _basicColor))
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _list (:jm_getList (this :f_touchButtonFactory)))
        (:jm_setBasicColorP3 (this :f_basicSetColorUtil) _graphics (this :f_foregroundBasicColor) (this :f_foregroundColor))
        (var _touchButton nil)
        (do
            (var _index (:jm_size _list))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _touchButton ((_list :f_objectArray) _index))
            (:jm_paint _touchButton _graphics))))
        (do
            (var _index (:jm_size _list))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _touchButton ((_list :f_objectArray) _index))
            (:jm_paintHint _touchButton _graphics))))))

(set jproto (table/setproto @{:jm_paint jm_paint} Paintable/jproto))


