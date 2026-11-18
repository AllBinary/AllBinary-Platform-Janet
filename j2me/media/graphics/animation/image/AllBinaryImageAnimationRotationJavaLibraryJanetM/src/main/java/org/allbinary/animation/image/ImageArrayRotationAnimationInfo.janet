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
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))

# Java class ImageArrayRotationAnimationInfo
(var jproto nil)
(var jnew_5 nil)
(var jm_setImageArray nil)
(var jm_getImageArray nil)
(var jm_getAngleInfoP nil)
(var jm_setTotalAngle nil)
(var jm_getTotalAngle nil)
(var jm_setDx nil)
(var jm_getDx nil)
(var jm_setDy nil)
(var jm_getDy nil)

    
(set jnew_5 (fn jnew_5 [_imageArray _angleIncrement _totalAngle _dx _dy]
    (var this (table/setproto @{:jclass "ImageArrayRotationAnimationInfo" :f_imageArray nil :f_angleIncrement 0 :f_totalAngle 0 :f_dx 0 :f_dy 0} jproto))
    
    
    
    
    
        (set (this :f_imageArray) _imageArray)
        (set (this :f_angleIncrement) _angleIncrement)
        (set (this :f_totalAngle) _totalAngle)
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_setImageArray (fn jm_setImageArray [this _imageArray]
        (set (this :f_imageArray) _imageArray)))
    
(set jm_getImageArray (fn jm_getImageArray [this]
    (label jreturn
        (return jreturn (this :f_imageArray)))))
    
(set jm_getAngleInfoP (fn jm_getAngleInfoP [this]
    (label jreturn
        (return jreturn (AngleInfo/jm_getInstance (JR/i16 (this :f_angleIncrement)))))))
    
(set jm_setTotalAngle (fn jm_setTotalAngle [this _totalAngle]
        (set (this :f_totalAngle) _totalAngle)))
    
(set jm_getTotalAngle (fn jm_getTotalAngle [this]
    (label jreturn
        (return jreturn (this :f_totalAngle)))))
    
(set jm_setDx (fn jm_setDx [this _dx]
        (set (this :f_dx) _dx)))
    
(set jm_getDx (fn jm_getDx [this]
    (label jreturn
        (return jreturn (this :f_dx)))))
    
(set jm_setDy (fn jm_setDy [this _dy]
        (set (this :f_dy) _dy)))
    
(set jm_getDy (fn jm_getDy [this]
    (label jreturn
        (return jreturn (this :f_dy)))))

(set jproto @{:jm_setImageArray jm_setImageArray :jm_getImageArray jm_getImageArray :jm_getAngleInfoP jm_getAngleInfoP :jm_setTotalAngle jm_setTotalAngle :jm_getTotalAngle jm_getTotalAngle :jm_setDx jm_setDx :jm_getDx jm_getDx :jm_setDy jm_setDy :jm_getDy jm_getDy})


