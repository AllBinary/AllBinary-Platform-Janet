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
# package org.allbinary.emulator

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class InitEmulatorFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setInitEmulator nil)
(var jm_isInitEmulator nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InitEmulatorFactory" :f_initEmulator false} jproto))
    (put this :f_initEmulator false)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setInitEmulator (fn jm_setInitEmulator [this _initEmulator]
        (set (this :f_initEmulator) _initEmulator)))
    
(set jm_isInitEmulator (fn jm_isInitEmulator [this]
    (label jreturn
        (return jreturn (this :f_initEmulator)))))

(set jproto @{:jm_setInitEmulator jm_setInitEmulator :jm_isInitEmulator jm_isInitEmulator})


