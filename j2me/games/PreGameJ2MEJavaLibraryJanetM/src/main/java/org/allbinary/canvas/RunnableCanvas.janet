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
# package org.allbinary.canvas

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- NullWaitGameRunnable/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/displayable/canvas/NullWaitGameRunnable" "jm_getInstance" args))
(import ../../../org/allbinary/graphics/displayable/MyCanvas :as MyCanvas)
(defn- ABSystemWrapper/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/ABSystemWrapper" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- NullThread/jstatic_NULL_THREAD [& args] (JR/call jfile "../../../org/allbinary/thread/NullThread" "jstatic_NULL_THREAD" args))
(defn- ThreadObjectUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/thread/ThreadObjectUtil" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ../../../java/lang/Thread :as Thread)
(defn- Processor/jm_getInstance [& args] (JR/call jfile "./Processor" "jm_getInstance" args))
(defn- RunnableCanvasRefreshHelper/jnew_1 [& args] (JR/call jfile "./RunnableCanvasRefreshHelper" "jnew_1" args))

# Java class RunnableCanvas
(var jproto nil)
(var jnew_3 nil)
(var jm_initCommands nil)
(var jm_isMainCanvas nil)
(var jm_setThread nil)
(var jm_setRunning nil)
(var jm_isRunning nil)
(var jm_getLoopTimeHelperP nil)
(var jm_setWait nil)
(var jm_getWait nil)
(var jm_setCurrentThread nil)
(var jm_setCurrentThreadFake nil)
(var jm_showNotify nil)
(var jm_stopWaiting nil)
(var jm_waitOnNotify nil)
(var jm_processSleep nil)
(var jm_isPausable nil)
(var jm_processGameSleep nil)
(var jm_processLoopSleep nil)
(var jm_isSingleThread nil)
(var jm_run nil)
(var jm_end2 nil)
(var jm_getType nil)

    
(set jnew_3 (fn jnew_3 [_commandListener _childNameList _hasParam]
    (var this (table/setproto @{:jclass "RunnableCanvas" :f_nullUtil nil :f_stdUtil nil :f_systemWrapper nil :f_tsUtil nil :f_thread nil :f_currentThread nil :f_running false :f_loopTimeHelper nil :f_runnableCanvasRefreshHelper nil :f_commonLabels nil :f_threadObjectUtil nil :f_SET_RUNNING nil :f_IS_RUNNING nil :f_THREAD nil :f_NOT_EQUAL nil :f_PAUSE_SLEEP nil :f_START_PAUSE nil :f_END_PAUSE nil :f_PROCESS_LOOP_SLEEP nil :f_pauseWait 0 :f_notified false} jproto))
    (put this :f_nullUtil (NullUtil/jm_getInstance))
    (put this :f_stdUtil (StdUtil/jm_getInstance))
    (put this :f_systemWrapper (ABSystemWrapper/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_thread (NullThread/jstatic_NULL_THREAD))
    (put this :f_currentThread (NullThread/jstatic_NULL_THREAD))
    
    (put this :f_loopTimeHelper (TimeDelayHelper/jnew_1 ((NullWaitGameRunnable/jm_getInstance) :f_WAIT)))
    (put this :f_runnableCanvasRefreshHelper (Processor/jm_getInstance))
    (put this :f_commonLabels (CommonLabels/jm_getInstance))
    (put this :f_threadObjectUtil (ThreadObjectUtil/jm_getInstance))
    (put this :f_SET_RUNNING "setRunning")
    (put this :f_IS_RUNNING "isRunning")
    (put this :f_THREAD "Thread: ")
    (put this :f_NOT_EQUAL " != ")
    (put this :f_PAUSE_SLEEP "pause sleep")
    (put this :f_START_PAUSE "start pause - game thread sleep at: ")
    (put this :f_END_PAUSE "end pause - game thread sleep at: ")
    (put this :f_PROCESS_LOOP_SLEEP "processLoopSleep")
    (put this :f_pauseWait 0)
    (put this :f_notified false)
        (JR/superInit this (MyCanvas/jnew_2 ((CommonStrings/jm_getInstance) :f_UNKNOWN) _childNameList))
        (JR/className (this :f_logUtil))
        (set (this :f_runnableCanvasRefreshHelper) (RunnableCanvasRefreshHelper/jnew_1 this))
        (if (not (nil? _commandListener))
            (do
            (:jm_initCommands this _commandListener))
            (if _hasParam
            (do
            (JR/className (this :f_logUtil)))))
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (JR/className (this :f_logUtil))))
    
(set jm_isMainCanvas (fn jm_isMainCanvas [this]
    (label jreturn
        (if (not (nil? (:jm_getCustomCommandListener this)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_setThread (fn jm_setThread [this _thread]
        (set (this :f_thread) _thread)))
    
(set jm_setRunning (fn jm_setRunning [this _running]
        (set (this :f_running) _running)
        (if (not (this :f_running))
            (do
            (set (this :f_thread) (NullThread/jstatic_NULL_THREAD))
            (do
                (:jm_notifyObject (this :f_threadObjectUtil) this))))
        (JR/className (this :f_logUtil))))
    
(set jm_isRunning (fn jm_isRunning [this]
    (label jreturn
        (if (= (this :f_thread) (this :f_currentThread))
            (do
            (return jreturn (this :f_running)))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer (this :f_THREAD))
            (if (not (nil? (this :f_thread)))
                (do
                (:jm_append _stringBuffer (:jm_toString (this :f_thread)))))
            (:jm_append _stringBuffer (this :f_NOT_EQUAL))
            (if (not (nil? (this :f_currentThread)))
                (do
                (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (this :f_currentThread)))))
            (JR/className (this :f_logUtil))
            (return jreturn false))))))
    
(set jm_getLoopTimeHelperP (fn jm_getLoopTimeHelperP [this]
    (label jreturn
        (return jreturn (this :f_loopTimeHelper)))))
    
(set jm_setWait (fn jm_setWait [this _wait]
        (set ((this :f_loopTimeHelper) :f_delay) _wait)
        (set (this :f_pauseWait) (* _wait 3))
        (JR/className (this :f_logUtil))))
    
(set jm_getWait (fn jm_getWait [this]
    (label jreturn
        (return jreturn ((this :f_loopTimeHelper) :f_delay)))))
    
(set jm_setCurrentThread (fn jm_setCurrentThread [this]
        (set (this :f_currentThread) (Thread/jm_currentThread))))
    
(set jm_setCurrentThreadFake (fn jm_setCurrentThreadFake [this]
        (set (this :f_currentThread) (this :f_thread))))
    
(set jm_showNotify (fn jm_showNotify [this]
        (try
            (do
            (:jm_stopWaiting this))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_stopWaiting (fn jm_stopWaiting [this]
        (set (this :f_notified) true)
        (do
            (:jm_notifyObject (this :f_threadObjectUtil) this))
        (:jm_repaint this)))
    
(set jm_waitOnNotify (fn jm_waitOnNotify [this _wait]
        (if (not (this :f_notified))
            (do
            (if (> _wait 0)
                (do
                (:jm_waitObjectFor (this :f_threadObjectUtil) this _wait))
                (do
                (:jm_waitObject (this :f_threadObjectUtil) this)))))))
    
(set jm_processSleep (fn jm_processSleep [this]
        (Thread/jm_sleep (this :f_pauseWait))))
    
(set jm_isPausable (fn jm_isPausable [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_processGameSleep (fn jm_processGameSleep [this _sleep]
        (Thread/jm_sleep _sleep)))
    
(set jm_processLoopSleep (fn jm_processLoopSleep [this]
    (label jreturn
        (:jm_process (this :f_runnableCanvasRefreshHelper))
        (if (:jm_isPaused this)
            (do
            (var _stringMaker (StringMaker/jnew_0))
            (if (and (:jm_isRunning this) (not (:jm_isSingleThread this)))
                (do
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (var _currentTimeMillis (:jm_currentTimeMillis (this :f_systemWrapper)))
                (JR/className (this :f_logUtil))
                (do
                    (while (and (and (:jm_isPaused this) (:jm_isRunning this)) (not (:jm_isSingleThread this)))
                        (do
                    (:jm_processSleep this)
                    (if (not (:jm_isPausable this))
                        (do
                        (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                        (JR/className (this :f_logUtil))
                        (return jreturn))))))))))
        (var _elapsedTime (:jm_getElapsedTNT (this :f_loopTimeHelper)))
        (var _wait ((this :f_loopTimeHelper) :f_delay))
        (if (> _elapsedTime _wait)
            (do
            (set _elapsedTime _wait))
            (do
            (:jm_processGameSleep this (- _wait _elapsedTime)))))))
    
(set jm_isSingleThread (fn jm_isSingleThread [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_run (fn jm_run [this]
        (:jm_setCurrentThread this)))
    
(set jm_end2 (fn jm_end2 [this]
    nil))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands :jm_isMainCanvas jm_isMainCanvas :jm_setThread jm_setThread :jm_setRunning jm_setRunning :jm_isRunning jm_isRunning :jm_getLoopTimeHelperP jm_getLoopTimeHelperP :jm_setWait jm_setWait :jm_getWait jm_getWait :jm_setCurrentThread jm_setCurrentThread :jm_setCurrentThreadFake jm_setCurrentThreadFake :jm_showNotify jm_showNotify :jm_stopWaiting jm_stopWaiting :jm_waitOnNotify jm_waitOnNotify :jm_processSleep jm_processSleep :jm_isPausable jm_isPausable :jm_processGameSleep jm_processGameSleep :jm_processLoopSleep jm_processLoopSleep :jm_isSingleThread jm_isSingleThread :jm_run jm_run :jm_end2 jm_end2 :jm_getType jm_getType} MyCanvas/jproto))


