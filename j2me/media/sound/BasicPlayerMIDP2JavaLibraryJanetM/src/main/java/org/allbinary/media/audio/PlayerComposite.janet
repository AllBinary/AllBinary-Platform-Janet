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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))

#BasicPlayerMIDP2
# Java class PlayerComposite
(var jproto nil)
(var jnew_2 nil)
(var jm_addPlayerListener nil)
(var jm_removePlayerListener nil)
(var jm_close nil)
(var jm_deallocate nil)
(var jm_getContentType nil)
(var jm_getDuration nil)
(var jm_getMediaTime nil)
(var jm_getTimeBase nil)
(var jm_setTimeBase nil)
(var jm_prefetch nil)
(var jm_realize nil)
(var jm_getState nil)
(var jm_setLoopCount nil)
(var jm_setMediaTime nil)
(var jm_start nil)
(var jm_stop nil)
(var jm_getControl nil)
(var jm_getControls nil)
(var jm_setVolume nil)
(var jm_getPlayerP nil)

    
(set jnew_2 (fn jnew_2 [_player _repeatTime]
    (var this (table/setproto @{:jclass "PlayerComposite" :f_logUtil nil :f_commonStrings nil :f_player nil :f_timeElapsedHelper nil :f_gameTickTimeDelayHelper nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    (put this :f_timeElapsedHelper (TimeDelayHelper/jnew_1 0))
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
        (set (this :f_player) _player)
        (set ((this :f_timeElapsedHelper) :f_delay) _repeatTime)
    this))
    
(set jm_addPlayerListener (fn jm_addPlayerListener [this _playerListener]
        (:jm_addPlayerListener (this :f_player) _playerListener)))
    
(set jm_removePlayerListener (fn jm_removePlayerListener [this _playerListener]
        (:jm_removePlayerListener (this :f_player) _playerListener)))
    
(set jm_close (fn jm_close [this]
        (:jm_close (this :f_player))))
    
(set jm_deallocate (fn jm_deallocate [this]
        (:jm_deallocate (this :f_player))))
    
(set jm_getContentType (fn jm_getContentType [this]
    (label jreturn
        (return jreturn (:jm_getContentType (this :f_player))))))
    
(set jm_getDuration (fn jm_getDuration [this]
    (label jreturn
        (return jreturn (:jm_getDuration (this :f_player))))))
    
(set jm_getMediaTime (fn jm_getMediaTime [this]
    (label jreturn
        (return jreturn (:jm_getMediaTime (this :f_player))))))
    
(set jm_getTimeBase (fn jm_getTimeBase [this]
    (label jreturn
        (return jreturn (:jm_getTimeBase (this :f_player))))))
    
(set jm_setTimeBase (fn jm_setTimeBase [this _timeBase]
        (:jm_setTimeBase (this :f_player) _timeBase)))
    
(set jm_prefetch (fn jm_prefetch [this]
        (try
            (do
            (:jm_prefetch (this :f_player)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "prefetch" _e))))))
    
(set jm_realize (fn jm_realize [this]
        (try
            (do
            (:jm_realize (this :f_player)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "realize" _e))))))
    
(set jm_getState (fn jm_getState [this]
    (label jreturn
        (return jreturn (:jm_getState (this :f_player))))))
    
(set jm_setLoopCount (fn jm_setLoopCount [this _count]
        (:jm_setLoopCount (this :f_player) _count)))
    
(set jm_setMediaTime (fn jm_setMediaTime [this _now]
    (label jreturn
        (try
            (do
            (return jreturn (:jm_setMediaTime (this :f_player) _now)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "setMediaTime" _e)
            (return jreturn (JR/i32 (- 1)))))))))
    
(set jm_start (fn jm_start [this]
        (try
            (do
            (if (:jm_isTime (this :f_timeElapsedHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime))
                (do
                (:jm_start (this :f_player)))))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_START_METHOD_NAME) _e))))))
    
(set jm_stop (fn jm_stop [this]
        (try
            (do
            (:jm_stop (this :f_player)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "stop" _e))))))
    
(set jm_getControl (fn jm_getControl [this _controlType]
    (label jreturn
        (return jreturn (:jm_getControl (this :f_player) _controlType)))))
    
(set jm_getControls (fn jm_getControls [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_setVolume (fn jm_setVolume [this _leftVolume _rightVolume]
        (var _controllable2 (this :f_player))
        (:jm_setVolume _controllable2 _leftVolume _rightVolume)))
    
(set jm_getPlayerP (fn jm_getPlayerP [this]
    (label jreturn
        (return jreturn (this :f_player)))))

(set jproto @{:jm_addPlayerListener jm_addPlayerListener :jm_removePlayerListener jm_removePlayerListener :jm_close jm_close :jm_deallocate jm_deallocate :jm_getContentType jm_getContentType :jm_getDuration jm_getDuration :jm_getMediaTime jm_getMediaTime :jm_getTimeBase jm_getTimeBase :jm_setTimeBase jm_setTimeBase :jm_prefetch jm_prefetch :jm_realize jm_realize :jm_getState jm_getState :jm_setLoopCount jm_setLoopCount :jm_setMediaTime jm_setMediaTime :jm_start jm_start :jm_stop jm_stop :jm_getControl jm_getControl :jm_getControls jm_getControls :jm_setVolume jm_setVolume :jm_getPlayerP jm_getPlayerP})


