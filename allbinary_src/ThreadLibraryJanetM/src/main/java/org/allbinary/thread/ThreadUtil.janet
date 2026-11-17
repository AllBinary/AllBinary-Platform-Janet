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
(import ../../../java/lang/Thread :as Thread)

# Java class ThreadUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isRunning nil)
(var jm_join nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ThreadUtil" :f_logUtil nil :f_JOIN nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_JOIN "join")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_isRunning (fn jm_isRunning [this _thread]
    (label jreturn
        (if (and (not (nil? _thread)) (:jm_isAlive _thread))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_join (fn jm_join [this _thread]
        (if (:jm_isRunning (jm_getInstance) _thread)
            (do
            (:jm_putF (this :f_logUtil) "Waiting for Thread To Join/End" this (this :f_JOIN))
            (:jm_join _thread)))))

(set jproto @{:jm_isRunning jm_isRunning :jm_join jm_join})


