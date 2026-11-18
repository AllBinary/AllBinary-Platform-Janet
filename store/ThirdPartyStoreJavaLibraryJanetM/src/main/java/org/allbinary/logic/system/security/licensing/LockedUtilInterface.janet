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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LockedUtilInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_isLocked nil)
(var jm_isLockedFeature nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LockedUtilInterface"} jproto))
    this))

    
(set jm_isLocked (fn jm_isLocked [this]
    (error (JR/newException "AbstractMethodError" "isLocked"))))
    
(set jm_isLockedFeature (fn jm_isLockedFeature [this _lockableFeatrue]
    (error (JR/newException "AbstractMethodError" "isLockedFeature"))))

(set jproto @{:jm_isLocked jm_isLocked :jm_isLockedFeature jm_isLockedFeature})


