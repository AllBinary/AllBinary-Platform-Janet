# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../java/lang/System :as System)
(import ../../../java/lang/Runnable :as Runnable)
(import ./ThreadPool :as ThreadPool)

# Java class MusicThreadPool
(var jproto nil)
(var jcell_THREAD_POOL :jnone)
(var jstatic_THREAD_POOL nil)
(var jnew_3 nil)
(var jm_getInstance nil)
(var jm_runTask nil)
(var jm_startTask nil)
(var jm_completedTask nil)

(set jstatic_THREAD_POOL (fn jstatic_THREAD_POOL []
  (when (= jcell_THREAD_POOL :jnone) (set jcell_THREAD_POOL (ThreadPool/jnew_3 "Music" 2 (ThreadPool/jstatic_NORMAL_PRIORITY))))
  jcell_THREAD_POOL))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_THREAD_POOL)))))
    
(set jnew_3 (fn jnew_3 [_poolName _numThreads _priority]
    (var this (table/setproto @{:jclass "MusicThreadPool"} jproto))
        nil
    this))
    
(set jm_runTask (fn jm_runTask [this _task]
        (JR/className (this :f_logUtil))
        (ThreadPool/jm_runTask this _task)))
    
(set jm_startTask (fn jm_startTask [this _task]
        (JR/className (this :f_logUtil))))
    
(set jm_completedTask (fn jm_completedTask [this _task]
        (JR/className (this :f_logUtil))))

(set jproto (table/setproto @{:jm_runTask jm_runTask :jm_startTask jm_startTask :jm_completedTask jm_completedTask} ThreadPool/jproto))


