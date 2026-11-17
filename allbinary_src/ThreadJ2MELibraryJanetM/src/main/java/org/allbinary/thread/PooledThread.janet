# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.thread

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../java/lang/Thread :as Thread)
(import ../../../java/lang/Runnable :as Runnable)
(defn- ThreadObjectUtil/jm_getInstance [& args] (JR/call jfile "./ThreadObjectUtil" "jm_getInstance" args))

# Java class PooledThread
(var jproto nil)
(var jnew_1 nil)
(var jm_run nil)

    
(set jnew_1 (fn jnew_1 [_threadPool]
    (var this (table/setproto @{:jclass "PooledThread" :f_logUtil nil :f_commonStrings nil :f_threadObjectUtil nil :f_threadPool nil :f_INTERRUPT_EXCEPTION nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_threadObjectUtil (ThreadObjectUtil/jm_getInstance))
    
    (put this :f_INTERRUPT_EXCEPTION "Exit InterruptedException")
        nil
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_CONSTRUCTOR) this ((this :f_commonStrings) :f_CONSTRUCTOR))
        (set (this :f_threadPool) _threadPool)
    this))
    
(set jm_run (fn jm_run [this]
        (:jm_threadStarted (this :f_threadPool))
        (do
            (var jbreak false)
            (while (and (not jbreak) true)
                (label jcontinue
            (var _task2 ((this :f_threadObjectUtil) :f_NULL_PRIORITY_RUNNABLE))
            (try
                (do
                (set _task2 (:jm_getTask (this :f_threadPool)))
                (set ((this :f_threadPool) :f_runningTask) true)
                (:jm_startTask (this :f_threadPool) _task2))
                ([_ex] (do
                (var _logUtil (LogUtil/jm_getInstance))
                (:jm_putF _logUtil (this :f_INTERRUPT_EXCEPTION) this ((this :f_commonStrings) :f_RUN))
                (do (set jbreak true) (return jcontinue)))))
            (if (= _task2 ((this :f_threadObjectUtil) :f_NULL_PRIORITY_RUNNABLE))
                (do
                (do (set jbreak true) (return jcontinue))))
            (try
                (do
                (:jm_run _task2)
                (:jm_completedTask (this :f_threadPool) _task2)
                (set ((this :f_threadPool) :f_runningTask) false))
                ([_e] (do
                (var _logUtil (LogUtil/jm_getInstance))
                (:jm_put _logUtil (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_commonStrings) :f_EXCEPTION_LABEL)) (:jm_toString_1 (StringUtil/jm_getInstance) _task2))) this ((this :f_commonStrings) :f_RUN) _e)))))))
        (:jm_threadStopped (this :f_threadPool))))

(set jproto (table/setproto @{:jm_run jm_run} Thread/jproto))


