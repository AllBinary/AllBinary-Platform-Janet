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
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(import ./ImageSegmentAnimation :as ImageSegmentAnimation)

# Java class RightToLeftImageAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_nextFrame nil)
(var jm_previousFrame nil)
(var jm_setFrame nil)
(var jm_update nil)
(var jm_paintXY nil)

    
(set jnew_2 (fn jnew_2 [_image _animationBehavior]
    (var this (table/setproto @{:jclass "RightToLeftImageAnimation" :f_startWidth 0 :f_currentWidth 0 :f_anchor 0} jproto))
    
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
        (JR/superInit this (ImageSegmentAnimation/jnew_3 _image (PrimitiveIntUtil/jm_getArrayInstance) _animationBehavior))
        (:jm_setFrame this (JR/i32 (- (:jm_getSize this) 1)))
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        ((get ImageSegmentAnimation/jproto :jm_previousFrame) this)
        (:jm_update this)))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        ((get ImageSegmentAnimation/jproto :jm_nextFrame) this)
        (:jm_update this)))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        ((get ImageSegmentAnimation/jproto :jm_setFrame) this _index)
        (:jm_update this)))
    
(set jm_update (fn jm_update [this]
        (set (this :f_startWidth) (JR/idiv (JR/i32 (* (:jm_getDrawWidth this) (:jm_getFrame this))) (:jm_getSize this)))
        (set (this :f_currentWidth) (JR/i32 (- (:jm_getDrawWidth this) (this :f_startWidth))))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_drawRegion _graphics (:jm_getImage this) (this :f_startWidth) (:jm_getStartY this) (this :f_currentWidth) (:jm_getDrawHeight this) (Sprite/jstatic_TRANS_NONE) (JR/i32 (+ _x (this :f_startWidth))) _y (this :f_anchor))))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_setFrame jm_setFrame :jm_update jm_update :jm_paintXY jm_paintXY} ImageSegmentAnimation/jproto))


