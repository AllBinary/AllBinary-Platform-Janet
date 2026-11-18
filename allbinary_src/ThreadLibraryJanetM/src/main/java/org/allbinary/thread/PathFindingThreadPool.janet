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
(import ../../../java/lang/Runnable :as Runnable)
(import ./ThreadPool :as ThreadPool)

#This is mainly for network communications.
# Java class PathFindingThreadPool
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_3 nil)
(var jm_getInstance nil)
(var jm_runTaskWithPriority nil)
(var jm_runTask nil)
(var jm_startTask nil)
(var jm_completedTask nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_3 "PathFinding" 1 1)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_3 (fn jnew_3 [_poolName _numThreads _priority]
    (var this (table/setproto @{:jclass "PathFindingThreadPool"} jproto))
        (JR/superInit this (ThreadPool/jnew_3 _poolName _numThreads (ThreadPool/jstatic_NORMAL_PRIORITY)))
    this))
    
(set jm_runTaskWithPriority (fn jm_runTaskWithPriority [this _task]
        ((get ThreadPool/jproto :jm_runTaskWithPriority) this _task)))
    
(set jm_runTask (fn jm_runTask [this _task]
        ((get ThreadPool/jproto :jm_runTask) this _task)))
    
(set jm_startTask (fn jm_startTask [this _task]
    nil))
    
(set jm_completedTask (fn jm_completedTask [this _task]
    nil))

(set jproto (table/setproto @{:jm_runTaskWithPriority jm_runTaskWithPriority :jm_runTask jm_runTask :jm_startTask jm_startTask :jm_completedTask jm_completedTask} ThreadPool/jproto))


