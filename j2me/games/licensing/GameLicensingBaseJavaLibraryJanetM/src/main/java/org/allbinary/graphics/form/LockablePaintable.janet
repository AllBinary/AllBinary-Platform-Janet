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
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" "jm_getInstance" args))
(defn- LockedResources/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/system/security/licensing/LockedResources" "jm_getInstance" args))
(defn- LockedUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/system/security/licensing/LockedUtil" "jm_getInstance" args))
(import ./ItemPaintable :as ItemPaintable)

# Java class LockablePaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)
(var jm_getLockedIndex nil)
(var jm_getAnimation nil)

    
(set jnew_1 (fn jnew_1 [_lockedIndex]
    (var this (table/setproto @{:jclass "LockablePaintable" :f_animation nil :f_lockedIndex 0} jproto))
    (put this :f_animation (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) ((LockedResources/jm_getInstance) :f_LOCKED_DEMO_GAME_FEATURE_RESOURCE))))
    
    (JR/superInit this (ItemPaintable/jnew_0))
        (set (this :f_lockedIndex) _lockedIndex)
    this))
    
(set jm_paint (fn jm_paint [this _graphics _currentIndex _x _y]
        (if (and (:jm_isLocked (LockedUtil/jm_getInstance)) (>= _currentIndex (:jm_getLockedIndex this)))
            (do
            (:jm_paintXY (:jm_getAnimation this) _graphics _x _y)))))
    
(set jm_getLockedIndex (fn jm_getLockedIndex [this]
    (label jreturn
        (return jreturn (this :f_lockedIndex)))))
    
(set jm_getAnimation (fn jm_getAnimation [this]
    (label jreturn
        (return jreturn (this :f_animation)))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_getLockedIndex jm_getLockedIndex :jm_getAnimation jm_getAnimation} ItemPaintable/jproto))


