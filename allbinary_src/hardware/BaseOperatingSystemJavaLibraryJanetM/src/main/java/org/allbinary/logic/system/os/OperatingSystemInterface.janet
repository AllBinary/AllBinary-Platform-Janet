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

# Java class OperatingSystemInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getName nil)
(var jm_getVersion nil)
(var jm_getArch nil)
(var jm_getCharacterSet nil)
(var jm_isOverScan nil)
(var jm_getOverScanXPercent nil)
(var jm_getOverScanYPercent nil)
(var jm_isScalable nil)
(var jm_isAutoHide nil)
(var jm_toString nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OperatingSystemInterface"} jproto))
    this))

    
(set jm_getName (fn jm_getName [this]
    (error (JR/newException "AbstractMethodError" "getName"))))
    
(set jm_getVersion (fn jm_getVersion [this]
    (error (JR/newException "AbstractMethodError" "getVersion"))))
    
(set jm_getArch (fn jm_getArch [this]
    (error (JR/newException "AbstractMethodError" "getArch"))))
    
(set jm_getCharacterSet (fn jm_getCharacterSet [this]
    (error (JR/newException "AbstractMethodError" "getCharacterSet"))))
    
(set jm_isOverScan (fn jm_isOverScan [this]
    (error (JR/newException "AbstractMethodError" "isOverScan"))))
    
(set jm_getOverScanXPercent (fn jm_getOverScanXPercent [this]
    (error (JR/newException "AbstractMethodError" "getOverScanXPercent"))))
    
(set jm_getOverScanYPercent (fn jm_getOverScanYPercent [this]
    (error (JR/newException "AbstractMethodError" "getOverScanYPercent"))))
    
(set jm_isScalable (fn jm_isScalable [this]
    (error (JR/newException "AbstractMethodError" "isScalable"))))
    
(set jm_isAutoHide (fn jm_isAutoHide [this]
    (error (JR/newException "AbstractMethodError" "isAutoHide"))))
    
(set jm_toString (fn jm_toString [this]
    (error (JR/newException "AbstractMethodError" "toString"))))

(set jproto @{:jm_getName jm_getName :jm_getVersion jm_getVersion :jm_getArch jm_getArch :jm_getCharacterSet jm_getCharacterSet :jm_isOverScan jm_isOverScan :jm_getOverScanXPercent jm_getOverScanXPercent :jm_getOverScanYPercent jm_getOverScanYPercent :jm_isScalable jm_isScalable :jm_isAutoHide jm_isAutoHide :jm_toString jm_toString})


