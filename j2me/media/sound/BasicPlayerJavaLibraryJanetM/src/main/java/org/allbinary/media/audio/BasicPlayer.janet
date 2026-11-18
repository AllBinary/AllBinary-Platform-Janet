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
(defn- Player/jstatic_UNREALIZED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_UNREALIZED" args))
(defn- Player/jstatic_STARTED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_STARTED" args))
(defn- Player/jstatic_PREFETCHED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_PREFETCHED" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- NullControl/jnew_0 [& args] (JR/call jfile "./NullControl" "jnew_0" args))

#BasicPlayerJavaLibrary
# Java class BasicPlayer
(var jproto nil)
(var jcell_CONTROL_TYPE :jnone)
(var jstatic_CONTROL_TYPE nil)
(var jsetstatic_CONTROL_TYPE nil)
(var jnew_0 nil)
(var jm_getContentType nil)
(var jm_getControl nil)
(var jm_getControls nil)
(var jm_close nil)
(var jm_addPlayerListener nil)
(var jm_removePlayerListener nil)
(var jm_getState nil)
(var jm_setState nil)
(var jm_getDuration nil)
(var jm_getMediaTime nil)
(var jm_deallocate nil)
(var jm_prefetch nil)
(var jm_realize nil)
(var jm_setLoopCount nil)
(var jm_getLoopCount nil)
(var jm_setMediaTime nil)
(var jm_start nil)
(var jm_stop nil)
(var jm_setVolume nil)

(set jstatic_CONTROL_TYPE (fn jstatic_CONTROL_TYPE []
  (when (= jcell_CONTROL_TYPE :jnone) (set jcell_CONTROL_TYPE "ToneControl"))
  jcell_CONTROL_TYPE))
(set jsetstatic_CONTROL_TYPE (fn jsetstatic_CONTROL_TYPE [value] (set jcell_CONTROL_TYPE value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicPlayer" :f_commonStrings nil :f_listenersList nil :f_stateP 0 :f_loopCountP 0} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_listenersList (BasicArrayListD/jnew_0))
    
    
        (:jm_setLoopCount this 0)
        (:jm_setState this (Player/jstatic_UNREALIZED))
    this))
    
(set jm_getContentType (fn jm_getContentType [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_getControl (fn jm_getControl [this _controlType]
    (label jreturn
        (return jreturn (NullControl/jnew_0)))))
    
(set jm_getControls (fn jm_getControls [this]
    (label jreturn
        (return jreturn (array/new-filled 0 nil)))))
    
(set jm_close (fn jm_close [this]
    nil))
    
(set jm_addPlayerListener (fn jm_addPlayerListener [this _playerListener]
        (if (not (:jm_contains (this :f_listenersList) _playerListener))
            (do
            (:jm_add (this :f_listenersList) _playerListener)))))
    
(set jm_removePlayerListener (fn jm_removePlayerListener [this _playerListener]
        (:jm_remove (this :f_listenersList) _playerListener)))
    
(set jm_getState (fn jm_getState [this]
    (label jreturn
        (return jreturn (this :f_stateP)))))
    
(set jm_setState (fn jm_setState [this _state]
        (set (this :f_stateP) _state)))
    
(set jm_getDuration (fn jm_getDuration [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getMediaTime (fn jm_getMediaTime [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_deallocate (fn jm_deallocate [this]
    nil))
    
(set jm_prefetch (fn jm_prefetch [this]
    nil))
    
(set jm_realize (fn jm_realize [this]
    nil))
    
(set jm_setLoopCount (fn jm_setLoopCount [this _count]
        (set (this :f_loopCountP) _count)))
    
(set jm_getLoopCount (fn jm_getLoopCount [this]
    (label jreturn
        (return jreturn (this :f_loopCountP)))))
    
(set jm_setMediaTime (fn jm_setMediaTime [this _now]
    (label jreturn
        (return jreturn 0))))
    
(set jm_start (fn jm_start [this]
        (:jm_setState this (Player/jstatic_STARTED))))
    
(set jm_stop (fn jm_stop [this]
        (:jm_setState this (Player/jstatic_PREFETCHED))))
    
(set jm_setVolume (fn jm_setVolume [this _leftVolume _rightVolume]
    nil))

(set jproto @{:jm_getContentType jm_getContentType :jm_getControl jm_getControl :jm_getControls jm_getControls :jm_close jm_close :jm_addPlayerListener jm_addPlayerListener :jm_removePlayerListener jm_removePlayerListener :jm_getState jm_getState :jm_setState jm_setState :jm_getDuration jm_getDuration :jm_getMediaTime jm_getMediaTime :jm_deallocate jm_deallocate :jm_prefetch jm_prefetch :jm_realize jm_realize :jm_setLoopCount jm_setLoopCount :jm_getLoopCount jm_getLoopCount :jm_setMediaTime jm_setMediaTime :jm_start jm_start :jm_stop jm_stop :jm_setVolume jm_setVolume})


