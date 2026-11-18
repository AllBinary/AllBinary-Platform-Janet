# Generated Code Do Not Modify
# package org.allbinary.game.layer.weapon

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- WeaponProperties/jnew_5 [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" "jnew_5" args))
(defn- RemoteInfo/jstatic_REMOTE_INFO [& args] (JR/call jfile "../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" "jstatic_REMOTE_INFO" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./SimpleWeaponLayer :as SimpleWeaponLayer)

# Java class TempExplosionWeaponLayer
(var jproto nil)
(var jnew_6 nil)
(var jm_processTick nil)

    
(set jnew_6 (fn jnew_6 [_name _movement _animationInterface _rectangle _viewPosition _timeDelay]
    (var this (table/setproto @{:jclass "TempExplosionWeaponLayer" :f_weaponProperties nil :f_timeDelayHelper nil} jproto))
    (put this :f_weaponProperties (WeaponProperties/jnew_5 (- 1) (- 1) 0 1000 (JR/i16 0)))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 0))
        (JR/superInit this (SimpleWeaponLayer/jnew_8 _name (RemoteInfo/jstatic_REMOTE_INFO) (JR/i32 (- 1)) _movement _animationInterface (SimpleWeaponLayer/jm_createDestroyed) _rectangle _viewPosition))
        (set ((this :f_timeDelayHelper) :f_delay) _timeDelay)
    this))
    
(set jm_processTick (fn jm_processTick [this _allBinaryLayerManager]
        (if (:jm_isTime (this :f_timeDelayHelper) ((GameTickTimeDelayHelperFactory/jm_getInstance) :f_startTime))
            (do
            (JR/className (:jm_getCollidableInferface this))
            (set (this :f_totalDamage) (JR/i32 (+ (:jm_getInitDamage this) 1)))))
        ((get SimpleWeaponLayer/jproto :jm_processTick) this _allBinaryLayerManager)))

(set jproto (table/setproto @{:jm_processTick jm_processTick} SimpleWeaponLayer/jproto))


