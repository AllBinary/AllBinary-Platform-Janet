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
# package org.allbinary.game.ag.life

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- HealthBarTwodAnimation/jnew_2 [& args] (JR/call jfile "../../../../../org/allbinary/game/health/HealthBarTwodAnimation" "jnew_2" args))
(import ../../../../../org/allbinary/graphics/paint/Paintable :as Paintable)

# Java class HealthIncludingLifeBar
(var jproto nil)
(var jnew_5 nil)
(var jm_createHealthIncludingLifeBar nil)
(var jm_onHealthChange nil)
(var jm_paint nil)
(var jm_paintThreed nil)

    
(set jm_createHealthIncludingLifeBar (fn jm_createHealthIncludingLifeBar [_layerInterface _life _healthInterface _location _direction]
    (label jreturn
        (return jreturn (jnew_5 _layerInterface _life _healthInterface (HealthBarTwodAnimation/jnew_2 _layerInterface _location) _direction)))))
    
(set jnew_5 (fn jnew_5 [_layerInterface _life _healthInterface _animationInterface _direction]
    (var this (table/setproto @{:jclass "HealthIncludingLifeBar" :f_animationInterface nil :f_life nil :f_healthInterface nil :f_allbinaryLayer nil} jproto))
    
    
    
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_allbinaryLayer) _layerInterface)
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_life) _life)
        (set (this :f_healthInterface) _healthInterface)
        (:jm_addListener (this :f_healthInterface) this)
        (:jm_onHealthChange this)
    this))
    
(set jm_onHealthChange (fn jm_onHealthChange [this]
        (:jm_onHealthChange (this :f_animationInterface) (JR/idiv (JR/i32 (* (JR/i32 (+ (:jm_getHealth (this :f_healthInterface)) (JR/i32 (* (:jm_getMaxHealth (this :f_healthInterface)) (:jm_get (this :f_life)))))) (:jm_getWidth (this :f_allbinaryLayer)))) (JR/i32 (+ (:jm_getMaxHealth (this :f_healthInterface)) (JR/i32 (* (:jm_getMaxHealth (this :f_healthInterface)) (:jm_getStartLives (this :f_life))))))))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paintXY (this :f_animationInterface) _graphics 0 0)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
        (:jm_paintThreedXYZ (this :f_animationInterface) _graphics 0 0 0)))

(set jproto (table/setproto @{:jm_onHealthChange jm_onHealthChange :jm_paint jm_paint :jm_paintThreed jm_paintThreed} Paintable/jproto))


