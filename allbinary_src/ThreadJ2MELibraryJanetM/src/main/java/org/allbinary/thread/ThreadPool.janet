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
# package org.allbinary.thread

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ../../../java/lang/Thread :as Thread)
(import ../../../java/lang/Runnable :as Runnable)
(defn- NullRunnable/jm_getInstance [& args] (JR/call jfile "./NullRunnable" "jm_getInstance" args))
(defn- ThreadPoolStrings/jm_getInstance [& args] (JR/call jfile "./ThreadPoolStrings" "jm_getInstance" args))
(defn- ThreadObjectUtil/jm_getInstance [& args] (JR/call jfile "./ThreadObjectUtil" "jm_getInstance" args))
(defn- PooledThread/jnew_1 [& args] (JR/call jfile "./PooledThread" "jnew_1" args))

# Java class ThreadPool
(var jproto nil)
(var jcell_ROOT_NAME :jnone)
(var jstatic_ROOT_NAME nil)
(var jcell_NORMAL_PRIORITY :jnone)
(var jstatic_NORMAL_PRIORITY nil)
(var jnew_3 nil)
(var jm_init nil)
(var jm_runAPriorityTask nil)
(var jm_runTaskWithPriority nil)
(var jm_runTask nil)
(var jm_getTask nil)
(var jm_clear nil)
(var jm_close nil)
(var jm_join nil)
(var jm_isBusy nil)
(var jm_threadStarted nil)
(var jm_threadStopped nil)
(var jm_startTask nil)
(var jm_completedTask nil)
(var jm_createName nil)

(set jstatic_ROOT_NAME (fn jstatic_ROOT_NAME []
  (when (= jcell_ROOT_NAME :jnone) (set jcell_ROOT_NAME "-PooledThread-"))
  jcell_ROOT_NAME))

(set jstatic_NORMAL_PRIORITY (fn jstatic_NORMAL_PRIORITY []
  (when (= jcell_NORMAL_PRIORITY :jnone) (set jcell_NORMAL_PRIORITY (Thread/jstatic_NORM_PRIORITY)))
  jcell_NORMAL_PRIORITY))

    
(set jnew_3 (fn jnew_3 [_poolName _numThreads _priority]
    (var this (table/setproto @{:jclass "ThreadPool" :f_logUtil nil :f_commonStrings nil :f_NULL_RUNNABLE nil :f_threadPoolStrings nil :f_threadObjectUtil nil :f_poolName nil :f_priority 0 :f_isAlive false :f_taskQueue nil :f_threadID 0 :f_numThreads 0 :f_runningTask false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_NULL_RUNNABLE (NullRunnable/jm_getInstance))
    (put this :f_threadPoolStrings (ThreadPoolStrings/jm_getInstance))
    (put this :f_threadObjectUtil (ThreadObjectUtil/jm_getInstance))
    
    
    (put this :f_isAlive false)
    (put this :f_taskQueue (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
    
    
    
        (set (this :f_poolName) _poolName)
        (set (this :f_priority) _priority)
        (set (this :f_numThreads) _numThreads)
    this))
    
(set jm_init (fn jm_init [this]
        (if (not (this :f_isAlive))
            (do
            (set (this :f_isAlive) true)
            (set (this :f_taskQueue) (BasicArrayListD/jnew_0))
            (var _pooledThread nil)
            (do
                (var _i 0)
                (while (< _i (this :f_numThreads))
                    (do
                (set _pooledThread (PooledThread/jnew_1 this))
                (:jm_setPriority _pooledThread (this :f_priority))
                (:jm_start _pooledThread))
                    (do (set _i (JR/i32 (+ _i 1))))))))))
    
(set jm_runAPriorityTask (fn jm_runAPriorityTask [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_runTaskWithPriority (fn jm_runTaskWithPriority [this _task]
        (do
            (if (not (this :f_isAlive))
                (do
                (:jm_init this)))
            (if (not (nil? _task))
                (do
                (var _size (:jm_size (this :f_taskQueue)))
                (var _runnable nil)
                (var _lowerPriorityRunnable ((this :f_threadObjectUtil) :f_NULL_PRIORITY_RUNNABLE))
                (do
                    (var _index 0)
                    (var jbreak false)
                    (while (and (not jbreak) (< _index _size))
                        (label jcontinue
                    (set _runnable (:jm_get (this :f_taskQueue) _index))
                    (if (> (:jm_getPriority _runnable) (:jm_getPriority _task))
                        (do
                        (set _lowerPriorityRunnable _runnable)
                        (do (set jbreak true) (return jcontinue)))))
                        (unless jbreak (set _index (JR/i32 (+ _index 1))))))
                (if (= _lowerPriorityRunnable ((this :f_threadObjectUtil) :f_NULL_PRIORITY_RUNNABLE))
                    (do
                    (:jm_add (this :f_taskQueue) _task))
                    (do
                    (var _index (:jm_indexOf (this :f_taskQueue) _lowerPriorityRunnable))
                    (:jm_addAt (this :f_taskQueue) _index _task)))
                (:jm_notify this))))))
    
(set jm_runTask (fn jm_runTask [this _task]
        (do
            (if (not (this :f_isAlive))
                (do
                (:jm_init this)))
            (if (not (nil? _task))
                (do
                (:jm_add (this :f_taskQueue) _task)
                (:jm_notify this))))))
    
(set jm_getTask (fn jm_getTask [this]
    (label jreturn
        (do
            (do
                (while (= (:jm_size (this :f_taskQueue)) 0)
                    (do
                (if (not (this :f_isAlive))
                    (do
                    (return jreturn (this :f_NULL_RUNNABLE))))
                (:jm_wait this))))
            (var _runnable (:jm_removeAt (this :f_taskQueue) 0))
            (return jreturn _runnable)))))
    
(set jm_clear (fn jm_clear [this]
        (do
            (if (this :f_isAlive)
                (do
                (:jm_clear (this :f_taskQueue)))))))
    
(set jm_close (fn jm_close [this]
        (do
            (if (this :f_isAlive)
                (do
                (set (this :f_isAlive) false)
                (:jm_clear (this :f_taskQueue)))))))
    
(set jm_join (fn jm_join [this]
        (do
            (set (this :f_isAlive) false)
            (:jm_clear (this :f_taskQueue))
            (:jm_notifyAll this))))
    
(set jm_isBusy (fn jm_isBusy [this]
    (label jreturn
        (if (not (this :f_isAlive))
            (do
            (return jreturn false)))
        (if (> (:jm_size (this :f_taskQueue)) 0)
            (do
            (return jreturn true)))
        (if (this :f_runningTask)
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_threadStarted (fn jm_threadStarted [this]
    nil))
    
(set jm_threadStopped (fn jm_threadStopped [this]
        (if (= (this :f_numThreads) 1)
            (do
            (set (this :f_isAlive) false)
            (:jm_clear (this :f_taskQueue))))))
    
(set jm_startTask (fn jm_startTask [this _task]
    nil))
    
(set jm_completedTask (fn jm_completedTask [this _task]
    nil))
    
(set jm_createName (fn jm_createName [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_appendint (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_poolName)) (jstatic_ROOT_NAME)) (do (def jold (this :f_threadID)) (set (this :f_threadID) (JR/i32 (+ (this :f_threadID) 1))) jold)))))))

(set jproto @{:jm_init jm_init :jm_runAPriorityTask jm_runAPriorityTask :jm_runTaskWithPriority jm_runTaskWithPriority :jm_runTask jm_runTask :jm_getTask jm_getTask :jm_clear jm_clear :jm_close jm_close :jm_join jm_join :jm_isBusy jm_isBusy :jm_threadStarted jm_threadStarted :jm_threadStopped jm_threadStopped :jm_startTask jm_startTask :jm_completedTask jm_completedTask :jm_createName jm_createName})


