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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./Animation :as Animation)

# Java class IndexedAnimation
(var jproto nil)
(var jnew_1 nil)
(var jm_getAnimationBehavior nil)
(var jm_reset nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_getAnimationSize nil)
(var jm_getSize nil)
(var jm_previousFrame nil)
(var jm_isLastFrame nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_setState nil)
(var jm_getWidth nil)
(var jm_getHeight nil)

    
(set jnew_1 (fn jnew_1 [_animationBehavior]
    (var this (table/setproto @{:jclass "IndexedAnimation" :f_logUtil nil :f_commonStrings nil :f_animationBehaviorP nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    (JR/superInit this (Animation/jnew_0))
        (set (this :f_animationBehaviorP) _animationBehavior)
    this))
    
(set jm_getAnimationBehavior (fn jm_getAnimationBehavior [this]
    (label jreturn
        (return jreturn (this :f_animationBehaviorP)))))
    
(set jm_reset (fn jm_reset [this]
        (:jm_reset (this :f_animationBehaviorP))
        (:jm_setFrame this 0)))
    
(set jm_setFrame (fn jm_setFrame [this _index]
    nil))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
    nil))
    
(set jm_isLastFrame (fn jm_isLastFrame [this]
    (label jreturn
        (if (= (:jm_getFrame this) (JR/i32 (- (:jm_getSize this) 1)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_setState (fn jm_setState [this _indexedAnimation]
        (:jm_setFrame this (:jm_getFrame _indexedAnimation))
        (:jm_setDx this (:jm_getDx _indexedAnimation))
        (:jm_setDy this (:jm_getDy _indexedAnimation))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn 0))))

(set jproto (table/setproto @{:jm_getAnimationBehavior jm_getAnimationBehavior :jm_reset jm_reset :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getAnimationSize jm_getAnimationSize :jm_getSize jm_getSize :jm_previousFrame jm_previousFrame :jm_isLastFrame jm_isLastFrame :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_setState jm_setState :jm_getWidth jm_getWidth :jm_getHeight jm_getHeight} Animation/jproto))


