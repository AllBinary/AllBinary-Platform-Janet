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
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- VectorExplosionGenerator/jm_getInstance [& args] (JR/call jfile "./VectorExplosionGenerator" "jm_getInstance" args))
(defn- VectorRotationAnimation/jnew_3 [& args] (JR/call jfile "./VectorRotationAnimation" "jnew_3" args))

# Java class VectorExplosionAnimationFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_getInstanceAnimation nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)

    
(set jnew_2 (fn jnew_2 [_basicColor _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "VectorExplosionAnimationFactory" :f_vectorExplosionGenerator nil :f_basicColor nil :f_animationBehaviorFactory nil} jproto))
    (put this :f_vectorExplosionGenerator (VectorExplosionGenerator/jm_getInstance))
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_WHITE))
    
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
        (:jm_setBasicColorP this _basicColor)
    this))
    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (label jreturn
        (var _vectorRotationAnimationInterface _animationInterface)
        (var _frame (:jm_getFrame _vectorRotationAnimationInterface))
        (var _framePoints (:jm_getPoints _vectorRotationAnimationInterface _frame))
        (var _points (:jm_getInstance (this :f_vectorExplosionGenerator) _framePoints 6 ((this :f_vectorExplosionGenerator) :f_ROTATION)))
        (return jreturn (VectorRotationAnimation/jnew_3 _points (:jm_getBasicColorP this) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))

(set jproto @{:jm_getInstanceAnimation jm_getInstanceAnimation :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP})


