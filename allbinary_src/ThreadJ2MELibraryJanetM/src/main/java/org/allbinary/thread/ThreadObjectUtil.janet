# Generated Code Do Not Modify
# package org.allbinary.thread

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/TsUtil" "jm_getInstance" args))
(import ../../../java/lang/Thread :as Thread)
(import ../../../java/lang/Runnable :as Runnable)
(defn- NullPriorityRunnable/jnew_0 [& args] (JR/call jfile "./NullPriorityRunnable" "jnew_0" args))

# Java class ThreadObjectUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_notifyObject nil)
(var jm_waitObject nil)
(var jm_waitObjectFor nil)
(var jm_processThread nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ThreadObjectUtil" :f_NULL_PRIORITY_RUNNABLE nil} jproto))
    (put this :f_NULL_PRIORITY_RUNNABLE (NullPriorityRunnable/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_notifyObject (fn jm_notifyObject [this _anyType]
        (JR/className _anyType)))
    
(set jm_waitObject (fn jm_waitObject [this _anyType]
        (JR/className _anyType)))
    
(set jm_waitObjectFor (fn jm_waitObjectFor [this _anyType _delay]
        (:jm_waitFor (TsUtil/jm_getInstance) _anyType _delay)))
    
(set jm_processThread (fn jm_processThread [this _runnable]
        (var _thread (Thread/jnew_1 _runnable))
        (:jm_start _thread)))

(set jproto @{:jm_notifyObject jm_notifyObject :jm_waitObject jm_waitObject :jm_waitObjectFor jm_waitObjectFor :jm_processThread jm_processThread})


