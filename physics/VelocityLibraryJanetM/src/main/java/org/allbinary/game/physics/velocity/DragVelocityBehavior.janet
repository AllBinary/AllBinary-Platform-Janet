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
(import ./VelocityBehaviorBase :as VelocityBehaviorBase)

# Java class DragVelocityBehavior
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_reduce nil)
(var jm_reduceX nil)
(var jm_reduceY nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DragVelocityBehavior"} jproto))
    (JR/superInit this (VelocityBehaviorBase/jnew_0))
    this))

    
(set jm_reduce (fn jm_reduce [this _velocityProperties _nominator _denominator]
        (if (not= (JR/className (:jm_getVelocityXBasicDecimalP _velocityProperties)) 0)
            (do
            (var _basicDecimal (:jm_getVelocityXBasicDecimalP _velocityProperties))
            (:jm_multiplyint _basicDecimal _nominator)
            (:jm_divideint _basicDecimal _denominator)))
        (if (not= (JR/className (:jm_getVelocityYBasicDecimalP _velocityProperties)) 0)
            (do
            (var _basicDecimal (:jm_getVelocityYBasicDecimalP _velocityProperties))
            (:jm_multiplyint _basicDecimal _nominator)
            (:jm_divideint _basicDecimal _denominator)))))
    
(set jm_reduceX (fn jm_reduceX [this _velocityProperties _nominator _denominator]
        (var _basicDecimal (:jm_getVelocityXBasicDecimalP _velocityProperties))
        (if (not= (:jm_getUnscaled _basicDecimal) 0)
            (do
            (:jm_multiplyint _basicDecimal _nominator)
            (:jm_divideint _basicDecimal _denominator)))))
    
(set jm_reduceY (fn jm_reduceY [this _velocityProperties _nominator _denominator]
        (if (not= (JR/className (:jm_getVelocityYBasicDecimalP _velocityProperties)) 0)
            (do
            (var _basicDecimal (:jm_getVelocityYBasicDecimalP _velocityProperties))
            (:jm_multiplyint _basicDecimal _nominator)
            (:jm_divideint _basicDecimal _denominator)))))

(set jproto (table/setproto @{:jm_reduce jm_reduce :jm_reduceX jm_reduceX :jm_reduceY jm_reduceY} VelocityBehaviorBase/jproto))


