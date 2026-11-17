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
# package org.allbinary.logic.system.os.windows

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../org/allbinary/logic/system/os/GenericOperatingSystem :as GenericOperatingSystem)

# Java class WindowsOS
(var jproto nil)
(var jnew_0 nil)
(var jm_isAutoHide nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "WindowsOS"} jproto))
        (set (this :f_scalable) true)
    this))
    
(set jm_isAutoHide (fn jm_isAutoHide [this]
    (label jreturn
        (return jreturn true))))

(set jproto (table/setproto @{:jm_isAutoHide jm_isAutoHide} GenericOperatingSystem/jproto))


