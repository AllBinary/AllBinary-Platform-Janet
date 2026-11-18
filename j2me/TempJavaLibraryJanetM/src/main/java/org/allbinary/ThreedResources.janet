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
# package org.allbinary

(import ../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ThreedResources
(var jproto nil)
(var jcell_threedResources :jnone)
(var jstatic_threedResources nil)
(var jsetstatic_threedResources nil)
(var jnew_0 nil)
(var jm_getThreedResources nil)
(var jm_add nil)

(set jstatic_threedResources (fn jstatic_threedResources []
  (when (= jcell_threedResources :jnone) (set jcell_threedResources (jnew_0)))
  jcell_threedResources))
(set jsetstatic_threedResources (fn jsetstatic_threedResources [value] (set jcell_threedResources value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ThreedResources"} jproto))
    this))

    
(set jm_getThreedResources (fn jm_getThreedResources []
    (label jreturn
        (return jreturn (jstatic_threedResources)))))
    
(set jm_add (fn jm_add [this]
    nil))

(set jproto @{:jm_add jm_add})


