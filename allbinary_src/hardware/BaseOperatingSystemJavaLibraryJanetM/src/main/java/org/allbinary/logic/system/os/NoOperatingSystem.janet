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
# package org.allbinary.logic.system.os

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./GenericOperatingSystem :as GenericOperatingSystem)

# Java class NoOperatingSystem
(var jproto nil)
(var jcell_NO_OPERATING_SYSTEM :jnone)
(var jstatic_NO_OPERATING_SYSTEM nil)
(var jnew_0 nil)

(set jstatic_NO_OPERATING_SYSTEM (fn jstatic_NO_OPERATING_SYSTEM []
  (when (= jcell_NO_OPERATING_SYSTEM :jnone) (set jcell_NO_OPERATING_SYSTEM (GenericOperatingSystem/jnew_0)))
  jcell_NO_OPERATING_SYSTEM))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoOperatingSystem"} jproto))
    this))

(set jproto (table/setproto @{} GenericOperatingSystem/jproto))


