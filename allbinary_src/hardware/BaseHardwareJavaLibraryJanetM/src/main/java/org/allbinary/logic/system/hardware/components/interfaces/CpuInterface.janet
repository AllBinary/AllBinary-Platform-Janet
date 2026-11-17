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
# package org.allbinary.logic.system.hardware.components.interfaces

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CpuInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getProcessor nil)
(var jm_getVendorId nil)
(var jm_getCpuFamily nil)
(var jm_getModel nil)
(var jm_getModelName nil)
(var jm_getStepping nil)
(var jm_getCpuSpeed nil)
(var jm_getCacheSize nil)
(var jm_compareTo nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CpuInterface"} jproto))
    this))

    
(set jm_getProcessor (fn jm_getProcessor [this]
    (error (JR/newException "AbstractMethodError" "getProcessor"))))
    
(set jm_getVendorId (fn jm_getVendorId [this]
    (error (JR/newException "AbstractMethodError" "getVendorId"))))
    
(set jm_getCpuFamily (fn jm_getCpuFamily [this]
    (error (JR/newException "AbstractMethodError" "getCpuFamily"))))
    
(set jm_getModel (fn jm_getModel [this]
    (error (JR/newException "AbstractMethodError" "getModel"))))
    
(set jm_getModelName (fn jm_getModelName [this]
    (error (JR/newException "AbstractMethodError" "getModelName"))))
    
(set jm_getStepping (fn jm_getStepping [this]
    (error (JR/newException "AbstractMethodError" "getStepping"))))
    
(set jm_getCpuSpeed (fn jm_getCpuSpeed [this]
    (error (JR/newException "AbstractMethodError" "getCpuSpeed"))))
    
(set jm_getCacheSize (fn jm_getCacheSize [this]
    (error (JR/newException "AbstractMethodError" "getCacheSize"))))
    
(set jm_compareTo (fn jm_compareTo [this _cpuInterface]
    (error (JR/newException "AbstractMethodError" "compareTo"))))

(set jproto @{:jm_getProcessor jm_getProcessor :jm_getVendorId jm_getVendorId :jm_getCpuFamily jm_getCpuFamily :jm_getModel jm_getModel :jm_getModelName jm_getModelName :jm_getStepping jm_getStepping :jm_getCpuSpeed jm_getCpuSpeed :jm_getCacheSize jm_getCacheSize :jm_compareTo jm_compareTo})


