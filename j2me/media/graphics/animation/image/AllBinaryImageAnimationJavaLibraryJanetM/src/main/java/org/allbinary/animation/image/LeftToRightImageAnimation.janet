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
# package org.allbinary.animation.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Sprite/jstatic_TRANS_NONE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/game/Sprite" "jstatic_TRANS_NONE" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(import ./ImageSegmentAnimation :as ImageSegmentAnimation)

# Java class LeftToRightImageAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_nextFrame nil)
(var jm_previousFrame nil)
(var jm_setFrame nil)
(var jm_update nil)
(var jm_paintXY nil)

    
(set jnew_3 (fn jnew_3 [_image _sequenceArray _animationBehavior]
    (var this (table/setproto @{:jclass "LeftToRightImageAnimation" :f_currentWidth 0 :f_anchor 0} jproto))
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
        (JR/superInit this (ImageSegmentAnimation/jnew_3 _image _sequenceArray _animationBehavior))
        (set (this :f_currentWidth) 0)
        (if (= ((:jm_getSequence this) 0) (JR/i32 (- 1)))
            (do
            (:jm_setFrame this (JR/i32 (- (:jm_getSize this) 1)))))
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (if (= ((:jm_getSequence this) 0) (JR/i32 (- 1)))
            (do
            ((get ImageSegmentAnimation/jproto :jm_previousFrame) this))
            (do
            ((get ImageSegmentAnimation/jproto :jm_nextFrame) this)))
        (:jm_update this)))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (if (= ((:jm_getSequence this) 0) (JR/i32 (- 1)))
            (do
            ((get ImageSegmentAnimation/jproto :jm_nextFrame) this))
            (do
            ((get ImageSegmentAnimation/jproto :jm_previousFrame) this)))
        (:jm_update this)))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        ((get ImageSegmentAnimation/jproto :jm_setFrame) this _index)
        (:jm_update this)))
    
(set jm_update (fn jm_update [this]
        (set (this :f_currentWidth) (JR/idiv (JR/i32 (* (:jm_getDrawWidth this) (:jm_getFrame this))) (:jm_getSize this)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_drawRegion _graphics (:jm_getImage this) (:jm_getStartX this) (:jm_getStartY this) (this :f_currentWidth) (:jm_getDrawHeight this) (Sprite/jstatic_TRANS_NONE) _x _y (this :f_anchor))))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_setFrame jm_setFrame :jm_update jm_update :jm_paintXY jm_paintXY} ImageSegmentAnimation/jproto))


