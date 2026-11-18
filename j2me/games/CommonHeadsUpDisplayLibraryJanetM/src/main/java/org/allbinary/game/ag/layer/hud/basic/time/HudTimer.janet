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
# package org.allbinary.game.ag.layer.hud.basic.time

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PrimitiveLongSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton" "jm_getInstance" args))
(defn- PrimitiveLongUtil/jm_createPowerOfTen [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil" "jm_createPowerOfTen" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))

# Java class HudTimer
(var jproto nil)
(var jnew_1 nil)
(var jm_start nil)
(var jm_get nil)
(var jm_update nil)
(var jm_reduce nil)
(var jm_add nil)
(var jm_getTimeChars nil)
(var jm_getCurrentTotalDigits nil)

    
(set jnew_1 (fn jnew_1 [_maxTime]
    (var this (table/setproto @{:jclass "HudTimer" :f_startTime 0 :f_hundredthTime 0 :f_maxTime 0 :f_modifier 0 :f_hundrethsString nil :f_totalDigits 0 :f_primitiveLongUtil nil :f_MAX nil :f_gameTickTimeDelayHelper nil} jproto))
    (put this :f_startTime (JR/i32 (- 1)))
    
    
    
    (put this :f_hundrethsString ((PrimitiveLongSingleton/jm_getInstance) :f_ZERO))
    (put this :f_totalDigits 1)
    
    (put this :f_MAX @[(get "L" 0) (get "O" 0) (get "L" 0)])
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
        (set (this :f_primitiveLongUtil) (PrimitiveLongUtil/jm_createPowerOfTen _maxTime))
        (set (this :f_maxTime) _maxTime)
    this))
    
(set jm_start (fn jm_start [this]
        (set (this :f_hundredthTime) 0)
        (set (this :f_startTime) ((this :f_gameTickTimeDelayHelper) :f_startTime))))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (return jreturn (this :f_hundredthTime)))))
    
(set jm_update (fn jm_update [this]
        (var _lastLowerTime (this :f_hundredthTime))
        (var _currentTime (- (+ (this :f_modifier) ((this :f_gameTickTimeDelayHelper) :f_startTime)) (this :f_startTime)))
        (if (< _currentTime 0)
            (do
            (set _currentTime 0)))
        (set (this :f_hundredthTime) (JR/ldiv _currentTime 100))
        (if (>= (this :f_hundredthTime) (this :f_maxTime))
            (do
            (if (> (this :f_startTime) 0)
                (do
                (set (this :f_hundrethsString) (this :f_MAX)))))
            (if (not= _lastLowerTime (this :f_hundredthTime))
            (do
            (set (this :f_hundrethsString) (:jm_getCharArray (this :f_primitiveLongUtil) (JR/i32 (this :f_hundredthTime))))
            (set (this :f_totalDigits) (:jm_getCurrentTotalDigits (this :f_primitiveLongUtil))))))))
    
(set jm_reduce (fn jm_reduce [this _value]
        (set (this :f_modifier) (- (this :f_modifier) _value))))
    
(set jm_add (fn jm_add [this _value]
        (set (this :f_modifier) (+ (this :f_modifier) _value))))
    
(set jm_getTimeChars (fn jm_getTimeChars [this]
    (label jreturn
        (return jreturn (this :f_hundrethsString)))))
    
(set jm_getCurrentTotalDigits (fn jm_getCurrentTotalDigits [this]
    (label jreturn
        (return jreturn (this :f_totalDigits)))))

(set jproto @{:jm_start jm_start :jm_get jm_get :jm_update jm_update :jm_reduce jm_reduce :jm_add jm_add :jm_getTimeChars jm_getTimeChars :jm_getCurrentTotalDigits jm_getCurrentTotalDigits})


