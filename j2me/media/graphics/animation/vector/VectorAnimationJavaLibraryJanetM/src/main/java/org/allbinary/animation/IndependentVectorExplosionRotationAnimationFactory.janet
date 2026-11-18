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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- VectorRotationGenerator/jm_getInstance [& args] (JR/call jfile "./VectorRotationGenerator" "jm_getInstance" args))
(defn- VectorExplosionGenerator/jm_getInstance [& args] (JR/call jfile "./VectorExplosionGenerator" "jm_getInstance" args))

# Java class IndependentVectorExplosionRotationAnimationFactory
(var jproto nil)
(var jnew_3 nil)
(var jm_init nil)
(var jm_getInstanceAnimation nil)

    
(set jnew_3 (fn jnew_3 [_vectorInfo _basicColor _vectorAnimationFactoryInterface]
    (var this (table/setproto @{:jclass "IndependentVectorExplosionRotationAnimationFactory" :f_framePoints nil :f_vectorInfo nil :f_basicColor nil :f_vectorAnimationFactoryInterface nil :f_vectorExplosionGenerator nil} jproto))
    (put this :f_framePoints ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY_ARRAY))
    
    
    
    (put this :f_vectorExplosionGenerator (VectorExplosionGenerator/jm_getInstance))
        (set (this :f_vectorInfo) _vectorInfo)
        (set (this :f_basicColor) _basicColor)
        (set (this :f_vectorAnimationFactoryInterface) _vectorAnimationFactoryInterface)
        (:jm_init this)
    this))
    
(set jm_init (fn jm_init [this]
        (set (this :f_framePoints) (:jm_getInstance (VectorRotationGenerator/jm_getInstance) (this :f_vectorInfo)))))
    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (label jreturn
        (var _frame 0)
        (if (not (nil? _animationInterface))
            (do
            (var _rotationAnimationInterface _animationInterface)
            (set _frame (:jm_getFrame _rotationAnimationInterface))))
        (var _points (:jm_getInstance (this :f_vectorExplosionGenerator) ((this :f_framePoints) _frame) 6 ((this :f_vectorExplosionGenerator) :f_ROTATION)))
        (return jreturn (:jm_getInstance (this :f_vectorAnimationFactoryInterface) _points (this :f_basicColor))))))

(set jproto @{:jm_init jm_init :jm_getInstanceAnimation jm_getInstanceAnimation})


