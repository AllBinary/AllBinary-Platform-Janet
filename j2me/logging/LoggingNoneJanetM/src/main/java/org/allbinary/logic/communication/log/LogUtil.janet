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
# package org.allbinary.logic.communication.log

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

#ActualPlatform
# Java class LogUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_putP nil)
(var jm_putF nil)
(var jm_putFS nil)
(var jm_put nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LogUtil"} jproto))
    this))
    
(set jm_putP (fn jm_putP [this _log]
    nil))
    
(set jm_putF (fn jm_putF [this _specialMessage _anyType _functionName]
    nil))
    
(set jm_putFS (fn jm_putFS [this _specialMessage _className _functionName]
    nil))
    
(set jm_put (fn jm_put [this _specialMessage _anyType _functionName _exception]
    nil))

(set jproto @{:jm_putP jm_putP :jm_putF jm_putF :jm_putFS jm_putFS :jm_put jm_put})


