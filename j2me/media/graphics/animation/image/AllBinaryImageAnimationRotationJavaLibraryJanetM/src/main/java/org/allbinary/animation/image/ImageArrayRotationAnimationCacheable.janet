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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./AdjustedImageArrayRotationAnimation :as AdjustedImageArrayRotationAnimation)

# Java class ImageArrayRotationAnimationCacheable
(var jproto nil)
(var jnew_2 nil)
(var jm_getKey nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_anyType _animationBehavior]
    (var this (table/setproto @{:jclass "ImageArrayRotationAnimationCacheable"} jproto))
        (JR/superInit this (AdjustedImageArrayRotationAnimation/jnew_6 (:jm_getImageArray _anyType) (:jm_getAngleInfoP _anyType) (:jm_getTotalAngle _anyType) (:jm_getDx _anyType) (:jm_getDy _anyType) _animationBehavior))
    this))
    
(set jm_getKey (fn jm_getKey [this]
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))

(set jproto (table/setproto @{:jm_getKey jm_getKey :jm_toString jm_toString} AdjustedImageArrayRotationAnimation/jproto))


