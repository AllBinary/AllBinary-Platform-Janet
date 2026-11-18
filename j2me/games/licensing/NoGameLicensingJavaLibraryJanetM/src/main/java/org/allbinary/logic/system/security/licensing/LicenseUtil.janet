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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LicenseUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_isRunning nil)
(var jm_setRunning nil)
(var jm_shouldWait nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LicenseUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_isRunning (fn jm_isRunning [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_setRunning (fn jm_setRunning [this _running]
    nil))
    
(set jm_shouldWait (fn jm_shouldWait [this _commandListener]
    (label jreturn
        (return jreturn (:jm_isRunning this)))))

(set jproto @{:jm_init jm_init :jm_isRunning jm_isRunning :jm_setRunning jm_setRunning :jm_shouldWait jm_shouldWait})


