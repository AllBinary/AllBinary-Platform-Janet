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
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(import ./ImageAnimation :as ImageAnimation)

# Java class ImageSegmentAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_nextFrame nil)
(var jm_previousFrame nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_getSize nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_paintXY nil)
(var jm_getStartX nil)
(var jm_setStartX nil)
(var jm_getStartY nil)
(var jm_setStartY nil)
(var jm_getDrawWidth nil)
(var jm_setDrawWidth nil)
(var jm_getDrawHeight nil)
(var jm_setDrawHeight nil)

    
(set jnew_3 (fn jnew_3 [_image _sequenceArray _animationBehavior]
    (var this (table/setproto @{:jclass "ImageSegmentAnimation" :f_startX 0 :f_startY 0 :f_drawWidth 0 :f_drawHeight 0 :f_circularIndexUtil nil :f_sequenceArray nil} jproto))
    
    
    
    
    
    
        (JR/superInit this (ImageAnimation/jnew_2 _image _animationBehavior))
        (set (this :f_startX) 0)
        (set (this :f_startY) 0)
        (set (this :f_drawWidth) (JR/className (:jm_getImage this)))
        (set (this :f_drawHeight) (JR/className (:jm_getImage this)))
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (this :f_drawHeight)))
        (set (this :f_sequenceArray) _sequenceArray)
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (:jm_next (this :f_circularIndexUtil))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (:jm_previous (this :f_circularIndexUtil))))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (:jm_setIndex (this :f_circularIndexUtil) _index)))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (:jm_getIndex (this :f_circularIndexUtil))))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_getSize (this :f_circularIndexUtil))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequenceArray]
        (set (this :f_sequenceArray) _sequenceArray)))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (this :f_sequenceArray)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    nil))
    
(set jm_getStartX (fn jm_getStartX [this]
    (label jreturn
        (return jreturn (this :f_startX)))))
    
(set jm_setStartX (fn jm_setStartX [this _startX]
        (set (this :f_startX) _startX)))
    
(set jm_getStartY (fn jm_getStartY [this]
    (label jreturn
        (return jreturn (this :f_startY)))))
    
(set jm_setStartY (fn jm_setStartY [this _startY]
        (set (this :f_startY) _startY)))
    
(set jm_getDrawWidth (fn jm_getDrawWidth [this]
    (label jreturn
        (return jreturn (this :f_drawWidth)))))
    
(set jm_setDrawWidth (fn jm_setDrawWidth [this _drawWidth]
        (set (this :f_drawWidth) _drawWidth)))
    
(set jm_getDrawHeight (fn jm_getDrawHeight [this]
    (label jreturn
        (return jreturn (this :f_drawHeight)))))
    
(set jm_setDrawHeight (fn jm_setDrawHeight [this _drawHeight]
        (set (this :f_drawHeight) _drawHeight)))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getSize jm_getSize :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_paintXY jm_paintXY :jm_getStartX jm_getStartX :jm_setStartX jm_setStartX :jm_getStartY jm_getStartY :jm_setStartY jm_setStartY :jm_getDrawWidth jm_getDrawWidth :jm_setDrawWidth jm_setDrawWidth :jm_getDrawHeight jm_getDrawHeight :jm_setDrawHeight jm_setDrawHeight} ImageAnimation/jproto))


