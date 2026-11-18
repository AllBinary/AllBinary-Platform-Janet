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
# package org.allbinary.emulator.swt

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullRunnable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/thread/NullRunnable" "jm_getInstance" args))
(import ../../../../java/lang/Runnable :as Runnable)

# Java class SWTProcessor
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SWTProcessor" :f_runnable nil} jproto))
    (put this :f_runnable (NullRunnable/jm_getInstance))
    this))
    
(set jm_process (fn jm_process [this _display]
        (:jm_sleep _display)))

(set jproto @{:jm_process jm_process})


