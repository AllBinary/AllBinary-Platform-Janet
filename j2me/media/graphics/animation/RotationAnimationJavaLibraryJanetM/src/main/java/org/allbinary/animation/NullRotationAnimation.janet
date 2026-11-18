# Generated Code Do Not Modify
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(import ./RotationAnimation :as RotationAnimation)

# Java class NullRotationAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_createTotalAngle nil)
(var jm_createQuarter nil)
(var jm_getAnimationSize nil)

    
(set jm_createTotalAngle (fn jm_createTotalAngle [_angleInfo _totalAngle _animationBehavior]
    (label jreturn
        (return jreturn (jnew_3 _angleInfo (CircularIndexUtil/jm_createInstance (JR/idiv _totalAngle (JR/className (:jm_getAngleIncrementInfo _angleInfo)))) _animationBehavior)))))
    
(set jm_createQuarter (fn jm_createQuarter [_animationBehavior]
    (label jreturn
        (return jreturn (jnew_3 (AngleInfo/jm_getInstance ((AngleFactory/jm_getInstance) :f_QUARTER_TOTAL_ANGLE)) (CircularIndexUtil/jm_createInstance 4) _animationBehavior)))))
    
(set jnew_3 (fn jnew_3 [_angleInfo _circularIndexUtil _animationBehavior]
    (var this (table/setproto @{:jclass "NullRotationAnimation"} jproto))
        (JR/superInit this (RotationAnimation/jnew_3 _angleInfo _circularIndexUtil _animationBehavior))
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn 0))))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize} RotationAnimation/jproto))


