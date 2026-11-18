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
# package org.allbinary.animation.vector

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/Animation :as Animation)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class LineAnimation
(var jproto nil)
(var jnew_1 nil)
(var jm_init nil)
(var jm_setPosition nil)
(var jm_paintXY nil)
(var jm_nextFrame nil)
(var jm_getBasicColorP nil)
(var jm_setBasicColorP nil)

    
(set jnew_1 (fn jnew_1 [_basicColor]
    (var this (table/setproto @{:jclass "LineAnimation" :f_newLine nil :f_tempLine nil :f_line nil} jproto))
    (put this :f_newLine (seq [jindex1 :range [0 2]] (array/new-filled 2 0)))
    (put this :f_tempLine ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY))
    (put this :f_line (seq [jindex1 :range [0 2]] (array/new-filled 2 0)))
    (JR/superInit this (Animation/jnew_0))
        (:jm_setBasicColorP this _basicColor)
    this))
    
(set jm_init (fn jm_init [this _x _y]
        (set (((this :f_newLine) 0) 0) _x)
        (set (((this :f_newLine) 0) 1) _y)
        (set (((this :f_newLine) 1) 0) _x)
        (set (((this :f_newLine) 1) 1) _y)
        (set (this :f_tempLine) (this :f_line))
        (set (this :f_line) (this :f_newLine))
        (set (this :f_newLine) (this :f_tempLine))))
    
(set jm_setPosition (fn jm_setPosition [this _x _y _z]
        (set (((this :f_newLine) 0) 0) (((this :f_line) 1) 0))
        (set (((this :f_newLine) 0) 1) (((this :f_line) 1) 1))
        (set (((this :f_newLine) 1) 0) _x)
        (set (((this :f_newLine) 1) 1) _y)
        (set (this :f_tempLine) (this :f_line))
        (set (this :f_line) (this :f_newLine))
        (set (this :f_newLine) (this :f_tempLine))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (var _currentLine (this :f_line))
        (JR/className (this :f_basicSetColorUtil))
        (:jm_drawLine _graphics ((_currentLine 0) 0) ((_currentLine 0) 1) ((_currentLine 1) 0) ((_currentLine 1) 1))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn ((get Animation/jproto :jm_getBasicColorP) this)))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        ((get Animation/jproto :jm_setBasicColorP) this _basicColor)))

(set jproto (table/setproto @{:jm_init jm_init :jm_setPosition jm_setPosition :jm_paintXY jm_paintXY :jm_nextFrame jm_nextFrame :jm_getBasicColorP jm_getBasicColorP :jm_setBasicColorP jm_setBasicColorP} Animation/jproto))


