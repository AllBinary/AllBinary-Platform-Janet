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
(import ./SWTProcessor :as SWTProcessor)

# Java class SWTRunnableProcessor
(var jproto nil)
(var jcell_instanceR :jnone)
(var jstatic_instanceR nil)
(var jsetstatic_instanceR nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_instanceR (fn jstatic_instanceR []
  (when (= jcell_instanceR :jnone) (set jcell_instanceR (jnew_0)))
  jcell_instanceR))
(set jsetstatic_instanceR (fn jsetstatic_instanceR [value] (set jcell_instanceR value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SWTRunnableProcessor"} jproto))
    (JR/superInit this (SWTProcessor/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceR)))))
    
(set jm_process (fn jm_process [this _display]
    nil))

(set jproto (table/setproto @{:jm_process jm_process} SWTProcessor/jproto))


