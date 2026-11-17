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
# package org.allbinary.time

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(import ../../../java/lang/System :as System)
(import ../../../java/lang/Long :as Long)

# Java class TimeDelayHelper
(var jproto nil)
(var jnew_1 nil)
(var jm_isTimeTNT nil)
(var jm_isTimeSinceTNT nil)
(var jm_isTime nil)
(var jm_isTimeWithoutReset nil)
(var jm_isTimeSince nil)
(var jm_getElapsedTNT nil)
(var jm_getElapsed nil)
(var jm_isElapsed nil)
(var jm_isElapsedTNT nil)
(var jm_setStartTime nil)
(var jm_getStartTime nil)
(var jm_setStartTimeTNT nil)
(var jm_pause nil)
(var jm_resume nil)
(var jm_toStringAt nil)
(var jm_toString nil)

    
(set jnew_1 (fn jnew_1 [_delay]
    (var this (table/setproto @{:jclass "TimeDelayHelper" :f_startTime 0 :f_elapsedTimeAtPause 0 :f_delay 0} jproto))
    (put this :f_startTime (JR/i32 (- 1)))
    (put this :f_elapsedTimeAtPause (Long/jstatic_MIN_VALUE))
    
        (set (this :f_delay) _delay)
        (:jm_setStartTimeTNT this)
    this))
    
(set jm_isTimeTNT (fn jm_isTimeTNT [this]
    (label jreturn
        (var _currentTime (JR/currentTimeMillis))
        (if (> (- _currentTime (this :f_startTime)) (this :f_delay))
            (do
            (set (this :f_startTime) _currentTime)
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isTimeSinceTNT (fn jm_isTimeSinceTNT [this _delay]
    (label jreturn
        (var _currentTime (JR/currentTimeMillis))
        (if (> (- _currentTime (this :f_startTime)) _delay)
            (do
            (set (this :f_startTime) _currentTime)
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isTime (fn jm_isTime [this _currentTime]
    (label jreturn
        (if (> (- _currentTime (this :f_startTime)) (this :f_delay))
            (do
            (set (this :f_startTime) _currentTime)
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isTimeWithoutReset (fn jm_isTimeWithoutReset [this _currentTime]
    (label jreturn
        (if (> (- _currentTime (this :f_startTime)) (this :f_delay))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isTimeSince (fn jm_isTimeSince [this _delay _currentTime]
    (label jreturn
        (if (> (- _currentTime (this :f_startTime)) (this :f_delay))
            (do
            (set (this :f_startTime) _currentTime)
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_getElapsedTNT (fn jm_getElapsedTNT [this]
    (label jreturn
        (return jreturn (- (JR/currentTimeMillis) (this :f_startTime))))))
    
(set jm_getElapsed (fn jm_getElapsed [this _currentTime]
    (label jreturn
        (return jreturn (- _currentTime (this :f_startTime))))))
    
(set jm_isElapsed (fn jm_isElapsed [this _currentTime _time]
    (label jreturn
        (if (> (:jm_getElapsed this _currentTime) _time)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_isElapsedTNT (fn jm_isElapsedTNT [this _time]
    (label jreturn
        (if (> (:jm_getElapsedTNT this) _time)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_setStartTime (fn jm_setStartTime [this _startTime]
        (set (this :f_startTime) _startTime)))
    
(set jm_getStartTime (fn jm_getStartTime [this]
    (label jreturn
        (return jreturn (this :f_startTime)))))
    
(set jm_setStartTimeTNT (fn jm_setStartTimeTNT [this]
        (set (this :f_startTime) (JR/currentTimeMillis))))
    
(set jm_pause (fn jm_pause [this]
        (set (this :f_elapsedTimeAtPause) (:jm_getElapsedTNT this))
        (set (this :f_startTime) (Long/jstatic_MAX_VALUE))))
    
(set jm_resume (fn jm_resume [this]
    (label jreturn
        (if (not= (this :f_elapsedTimeAtPause) (Long/jstatic_MIN_VALUE))
            (do
            (set (this :f_startTime) (+ (JR/currentTimeMillis) (this :f_elapsedTimeAtPause)))
            (set (this :f_elapsedTimeAtPause) (Long/jstatic_MIN_VALUE))
            (:jm_setStartTimeTNT this)
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_toStringAt (fn jm_toStringAt [this _currentTime]
    (label jreturn
        (var _elapsed (:jm_getElapsed this _currentTime))
        (if (> _elapsed 0)
            (do
            (var _commonLabels (CommonLabels/jm_getInstance))
            (var _elapsedAsString (JR/str _elapsed))
            (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_appendlong (:jm_append (:jm_appendlong (:jm_append (StringMaker/jnew_0) (_commonLabels :f_START)) (this :f_startTime)) (_commonLabels :f_CURRENT)) _currentTime) (_commonLabels :f_ELAPSED)) _elapsedAsString))))
            (do
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _currentTime (JR/currentTimeMillis))
        (var _elapsed (:jm_getElapsed this _currentTime))
        (if (> _elapsed 0)
            (do
            (var _commonLabels (CommonLabels/jm_getInstance))
            (var _elapsedAsString (JR/str _elapsed))
            (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_appendlong (:jm_append (:jm_appendlong (:jm_append (StringMaker/jnew_0) (_commonLabels :f_START)) (this :f_startTime)) (_commonLabels :f_CURRENT)) _currentTime) (_commonLabels :f_ELAPSED)) _elapsedAsString))))
            (do
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))))

(set jproto @{:jm_isTimeTNT jm_isTimeTNT :jm_isTimeSinceTNT jm_isTimeSinceTNT :jm_isTime jm_isTime :jm_isTimeWithoutReset jm_isTimeWithoutReset :jm_isTimeSince jm_isTimeSince :jm_getElapsedTNT jm_getElapsedTNT :jm_getElapsed jm_getElapsed :jm_isElapsed jm_isElapsed :jm_isElapsedTNT jm_isElapsedTNT :jm_setStartTime jm_setStartTime :jm_getStartTime jm_getStartTime :jm_setStartTimeTNT jm_setStartTimeTNT :jm_pause jm_pause :jm_resume jm_resume :jm_toStringAt jm_toStringAt :jm_toString jm_toString})


