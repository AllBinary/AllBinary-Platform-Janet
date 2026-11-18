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
# package org.allbinary.graphics.font

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class UpdateMyFontInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_updateMeasurement nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "UpdateMyFontInterface"} jproto))
    this))

    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
    (error (JR/newException "AbstractMethodError" "updateMeasurement"))))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement})


