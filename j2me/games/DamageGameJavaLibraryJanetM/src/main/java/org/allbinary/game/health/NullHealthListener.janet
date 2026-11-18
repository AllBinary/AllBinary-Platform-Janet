# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.health

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullHealthListener
(var jproto nil)
(var jcell_NULL_HEALTH_LISTENER :jnone)
(var jstatic_NULL_HEALTH_LISTENER nil)
(var jsetstatic_NULL_HEALTH_LISTENER nil)
(var jnew_0 nil)
(var jm_onHealthChange nil)

(set jstatic_NULL_HEALTH_LISTENER (fn jstatic_NULL_HEALTH_LISTENER []
  (when (= jcell_NULL_HEALTH_LISTENER :jnone) (set jcell_NULL_HEALTH_LISTENER (jnew_0)))
  jcell_NULL_HEALTH_LISTENER))
(set jsetstatic_NULL_HEALTH_LISTENER (fn jsetstatic_NULL_HEALTH_LISTENER [value] (set jcell_NULL_HEALTH_LISTENER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullHealthListener"} jproto))
    this))

    
(set jm_onHealthChange (fn jm_onHealthChange [this]
    nil))

(set jproto @{:jm_onHealthChange jm_onHealthChange})


