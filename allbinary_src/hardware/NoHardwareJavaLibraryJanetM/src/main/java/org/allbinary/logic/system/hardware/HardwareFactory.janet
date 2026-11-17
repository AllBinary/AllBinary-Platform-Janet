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
# package org.allbinary.logic.system.hardware

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NoHardware/jm_getInstance_0 [& args] (JR/call jfile "./NoHardware" "jm_getInstance_0" args))

# Java class HardwareFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstance_1 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HardwareFactory" :f_SINGLETON nil} jproto))
    (put this :f_SINGLETON (NoHardware/jm_getInstance_0))
    this))
    
(set jm_getInstance_1 (fn jm_getInstance_1 [this _os]
    (label jreturn
        (try
            (do
            (return jreturn (this :f_SINGLETON)))
            ([_e] (do
            (error _e)))))))

(set jproto @{:jm_getInstance_1 jm_getInstance_1})


