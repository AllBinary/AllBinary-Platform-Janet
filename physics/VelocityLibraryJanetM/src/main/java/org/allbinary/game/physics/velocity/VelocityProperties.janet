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
# package org.allbinary.game.physics.velocity

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./BasicVelocityProperties :as BasicVelocityProperties)

# Java class VelocityProperties
(var jproto nil)
(var jcell_NULL_VELOCITY_PROPERTIES :jnone)
(var jstatic_NULL_VELOCITY_PROPERTIES nil)
(var jsetstatic_NULL_VELOCITY_PROPERTIES nil)
(var jnew_2 nil)
(var jm_getMaxForwardVelocity nil)
(var jm_setMaxForwardVelocity nil)
(var jm_getMaxReverseVelocity nil)
(var jm_setMaxReverseVelocity nil)
(var jm_limitMaxXYForwardVelocity nil)
(var jm_limitMaxXYReverseVelocity nil)
(var jm_limitMaxYForwardVelocity nil)
(var jm_limitMaxYReverseVelocity nil)
(var jm_limitMaxXForwardVelocity nil)
(var jm_limitMaxXReverseVelocity nil)
(var jm_isOverXYMaxForwardVelocity nil)
(var jm_isOverXYMaxReverseVelocity nil)
(var jm_limitXYToForwardAndReverseMaxVelocity nil)
(var jm_limitMaxXYVelocity nil)
(var jm_limitMaxPositiveYVelocity nil)
(var jm_limitMaxNegativeYVelocity nil)
(var jm_limitMaxYVelocity nil)
(var jm_limitMaxXVelocity nil)
(var jm_isOverXYMaxVelocity nil)
(var jm_setVelocityi nil)
(var jm_addVelocityi nil)

(set jstatic_NULL_VELOCITY_PROPERTIES (fn jstatic_NULL_VELOCITY_PROPERTIES []
  (when (= jcell_NULL_VELOCITY_PROPERTIES :jnone) (set jcell_NULL_VELOCITY_PROPERTIES (jnew_2 0 0)))
  jcell_NULL_VELOCITY_PROPERTIES))
(set jsetstatic_NULL_VELOCITY_PROPERTIES (fn jsetstatic_NULL_VELOCITY_PROPERTIES [value] (set jcell_NULL_VELOCITY_PROPERTIES value)))

    
(set jnew_2 (fn jnew_2 [_maxForwardVelocity _maxReverseVelocity]
    (var this (table/setproto @{:jclass "VelocityProperties" :f_maxForwardVelocity 0 :f_maxReverseVelocity 0} jproto))
    
    
    (JR/superInit this (BasicVelocityProperties/jnew_0))
        (:jm_setMaxForwardVelocity this _maxForwardVelocity)
        (:jm_setMaxReverseVelocity this _maxReverseVelocity)
    this))
    
(set jm_getMaxForwardVelocity (fn jm_getMaxForwardVelocity [this]
    (label jreturn
        (return jreturn (this :f_maxForwardVelocity)))))
    
(set jm_setMaxForwardVelocity (fn jm_setMaxForwardVelocity [this _maxForwardVelocity]
        (set (this :f_maxForwardVelocity) _maxForwardVelocity)))
    
(set jm_getMaxReverseVelocity (fn jm_getMaxReverseVelocity [this]
    (label jreturn
        (return jreturn (this :f_maxReverseVelocity)))))
    
(set jm_setMaxReverseVelocity (fn jm_setMaxReverseVelocity [this _maxReverseVelocity]
        (set (this :f_maxReverseVelocity) _maxReverseVelocity)))
    
(set jm_limitMaxXYForwardVelocity (fn jm_limitMaxXYForwardVelocity [this]
        (:jm_limitMaxXYVelocity this (:jm_getMaxForwardVelocity this))))
    
(set jm_limitMaxXYReverseVelocity (fn jm_limitMaxXYReverseVelocity [this]
        (:jm_limitMaxXYVelocity this (:jm_getMaxReverseVelocity this))))
    
(set jm_limitMaxYForwardVelocity (fn jm_limitMaxYForwardVelocity [this]
        (:jm_limitMaxYVelocity this (:jm_getMaxForwardVelocity this))))
    
(set jm_limitMaxYReverseVelocity (fn jm_limitMaxYReverseVelocity [this]
        (:jm_limitMaxYVelocity this (:jm_getMaxReverseVelocity this))))
    
(set jm_limitMaxXForwardVelocity (fn jm_limitMaxXForwardVelocity [this]
        (:jm_limitMaxXVelocity this (:jm_getMaxForwardVelocity this))))
    
(set jm_limitMaxXReverseVelocity (fn jm_limitMaxXReverseVelocity [this]
        (:jm_limitMaxXVelocity this (:jm_getMaxReverseVelocity this))))
    
(set jm_isOverXYMaxForwardVelocity (fn jm_isOverXYMaxForwardVelocity [this]
    (label jreturn
        (return jreturn (:jm_isOverXYMaxVelocity this (:jm_getMaxForwardVelocity this))))))
    
(set jm_isOverXYMaxReverseVelocity (fn jm_isOverXYMaxReverseVelocity [this]
    (label jreturn
        (return jreturn (:jm_isOverXYMaxVelocity this (:jm_getMaxReverseVelocity this))))))
    
(set jm_limitXYToForwardAndReverseMaxVelocity (fn jm_limitXYToForwardAndReverseMaxVelocity [this]
        (:jm_limitMaxXYForwardVelocity this)
        (:jm_limitMaxXYReverseVelocity this)))
    
(set jm_limitMaxXYVelocity (fn jm_limitMaxXYVelocity [this _maxVelocity]
        (:jm_limitMaxXVelocity this _maxVelocity)
        (:jm_limitMaxYVelocity this _maxVelocity)))
    
(set jm_limitMaxPositiveYVelocity (fn jm_limitMaxPositiveYVelocity [this _maxVelocity]
        (if (> (JR/className (this :f_velocityYBasicDecimal)) _maxVelocity)
            (do
            (JR/className (this :f_velocityYBasicDecimal))))))
    
(set jm_limitMaxNegativeYVelocity (fn jm_limitMaxNegativeYVelocity [this _maxVelocity]
        (if (< (JR/className (this :f_velocityYBasicDecimal)) (JR/i32 (- _maxVelocity)))
            (do
            (JR/className (this :f_velocityYBasicDecimal))))))
    
(set jm_limitMaxYVelocity (fn jm_limitMaxYVelocity [this _maxVelocity]
        (:jm_limitMaxPositiveYVelocity this _maxVelocity)
        (:jm_limitMaxNegativeYVelocity this _maxVelocity)))
    
(set jm_limitMaxXVelocity (fn jm_limitMaxXVelocity [this _maxVelocity]
        (if (> (JR/className (this :f_velocityXBasicDecimal)) _maxVelocity)
            (do
            (JR/className (this :f_velocityXBasicDecimal))))
        (if (< (JR/className (this :f_velocityXBasicDecimal)) (JR/i32 (- _maxVelocity)))
            (do
            (JR/className (this :f_velocityXBasicDecimal))))))
    
(set jm_isOverXYMaxVelocity (fn jm_isOverXYMaxVelocity [this _maxVelocity]
    (label jreturn
        (if (> (JR/className (this :f_velocityXBasicDecimal)) _maxVelocity)
            (do
            (return jreturn true)))
        (if (< (JR/className (this :f_velocityXBasicDecimal)) (JR/i32 (- _maxVelocity)))
            (do
            (return jreturn true)))
        (if (> (JR/className (this :f_velocityYBasicDecimal)) _maxVelocity)
            (do
            (return jreturn true)))
        (if (< (JR/className (this :f_velocityYBasicDecimal)) (JR/i32 (- _maxVelocity)))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_setVelocityi (fn jm_setVelocityi [this _magnitude _angle _otherAngle]
        ((get BasicVelocityProperties/jproto :jm_setVelocityi) this _magnitude _angle _otherAngle)
        (:jm_limitXYToForwardAndReverseMaxVelocity this)))
    
(set jm_addVelocityi (fn jm_addVelocityi [this _magnitude _angle _otherAngle]
        ((get BasicVelocityProperties/jproto :jm_addVelocityi) this _magnitude _angle _otherAngle)
        (:jm_limitXYToForwardAndReverseMaxVelocity this)))

(set jproto (table/setproto @{:jm_getMaxForwardVelocity jm_getMaxForwardVelocity :jm_setMaxForwardVelocity jm_setMaxForwardVelocity :jm_getMaxReverseVelocity jm_getMaxReverseVelocity :jm_setMaxReverseVelocity jm_setMaxReverseVelocity :jm_limitMaxXYForwardVelocity jm_limitMaxXYForwardVelocity :jm_limitMaxXYReverseVelocity jm_limitMaxXYReverseVelocity :jm_limitMaxYForwardVelocity jm_limitMaxYForwardVelocity :jm_limitMaxYReverseVelocity jm_limitMaxYReverseVelocity :jm_limitMaxXForwardVelocity jm_limitMaxXForwardVelocity :jm_limitMaxXReverseVelocity jm_limitMaxXReverseVelocity :jm_isOverXYMaxForwardVelocity jm_isOverXYMaxForwardVelocity :jm_isOverXYMaxReverseVelocity jm_isOverXYMaxReverseVelocity :jm_limitXYToForwardAndReverseMaxVelocity jm_limitXYToForwardAndReverseMaxVelocity :jm_limitMaxXYVelocity jm_limitMaxXYVelocity :jm_limitMaxPositiveYVelocity jm_limitMaxPositiveYVelocity :jm_limitMaxNegativeYVelocity jm_limitMaxNegativeYVelocity :jm_limitMaxYVelocity jm_limitMaxYVelocity :jm_limitMaxXVelocity jm_limitMaxXVelocity :jm_isOverXYMaxVelocity jm_isOverXYMaxVelocity :jm_setVelocityi jm_setVelocityi :jm_addVelocityi jm_addVelocityi} BasicVelocityProperties/jproto))


