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
# package org.allbinary.animation.image.sprite

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))

# Java class SpriteIndexedAnimation
(var jproto nil)
(var jnew_4 nil)
(var jm_getAnimationSize nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)
(var jm_paintFrame nil)
(var jm_paintXY nil)
(var jm_paint nil)
(var jm_nextFrame nil)
(var jm_previousFrame nil)
(var jm_getSize nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_isLastFrame nil)
(var jm_getLastFrame nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_close nil)
(var jm_finalize nil)

    
(set jnew_4 (fn jnew_4 [_sprite _image _basicColorArray _animationBehavior]
    (var this (table/setproto @{:jclass "SpriteIndexedAnimation" :f_sprite nil :f_image nil :f_basicColorArray nil} jproto))
    
    
    
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (set (this :f_sprite) _sprite)
        (set (this :f_image) _image)
        (set (this :f_basicColorArray) _basicColorArray)
        (if (and (not= (length (this :f_basicColorArray)) 0) (not= (:jm_getSize this) (length (this :f_basicColorArray))))
            (do
            (error (JR/newException "Exception" (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_TOTAL_LABEL)) (:jm_getSize this)) "!=") (length (this :f_basicColorArray))))))))
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (do
            (var _index 0)
            (var jbreak false)
            (while (and (not jbreak) (< _index (length (this :f_basicColorArray))))
                (label jcontinue
            (if (= _basicColor ((this :f_basicColorArray) _index))
                (do
                (:jm_setFrame this _index)
                (do (set jbreak true) (return jcontinue)))))
                (unless jbreak (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (if (< (length (this :f_basicColorArray)) (:jm_getFrame this))
            (do
            (return jreturn ((this :f_basicColorArray) (:jm_getFrame this))))
            (do
            (return jreturn ((BasicColorFactory/jm_getInstance) :f_WHITE)))))))
    
(set jm_paintFrame (fn jm_paintFrame [this _graphics _frame _x _y]
        (:jm_setFrame this _frame)
        (:jm_setPosition (this :f_sprite) _x _y)
        (:jm_paint (this :f_sprite) _graphics)))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_setPosition (this :f_sprite) _x _y)
        (:jm_paint (this :f_sprite) _graphics)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_sprite) _graphics)))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (:jm_nextFrame (this :f_sprite))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (:jm_prevFrame (this :f_sprite))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_getRawFrameCount (this :f_sprite))))))
    
(set jm_setFrame (fn jm_setFrame [this _frame]
        (:jm_setFrame (this :f_sprite) _frame)))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (:jm_getFrame (this :f_sprite))))))
    
(set jm_isLastFrame (fn jm_isLastFrame [this]
    (label jreturn
        (if (= (:jm_getFrame (this :f_sprite)) (JR/i32 (- (:jm_getSize this) 1)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_getLastFrame (fn jm_getLastFrame [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_close (fn jm_close [this]
    nil))
    
(set jm_finalize (fn jm_finalize [this]
    nil))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP :jm_paintFrame jm_paintFrame :jm_paintXY jm_paintXY :jm_paint jm_paint :jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_getSize jm_getSize :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_isLastFrame jm_isLastFrame :jm_getLastFrame jm_getLastFrame :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_close jm_close :jm_finalize jm_finalize} IndexedAnimation/jproto))


