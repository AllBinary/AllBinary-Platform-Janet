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
(defn- ThreadPool/jnew_3 [& args] (JR/call jfile "./ThreadPool" "jnew_3" args))
(defn- ThreadPool/jstatic_NORMAL_PRIORITY [& args] (JR/call jfile "./ThreadPool" "jstatic_NORMAL_PRIORITY" args))

# Java class SoundThreadPool
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (ThreadPool/jnew_3 "Sound" 1 (ThreadPool/jstatic_NORMAL_PRIORITY))))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SoundThreadPool"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


