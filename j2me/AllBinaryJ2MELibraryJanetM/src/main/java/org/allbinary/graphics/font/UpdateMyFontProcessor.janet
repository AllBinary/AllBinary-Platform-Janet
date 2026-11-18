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
(import ./MyFontProcessor :as MyFontProcessor)

# Java class UpdateMyFontProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_keyValueDrawCharArray]
    (var this (table/setproto @{:jclass "UpdateMyFontProcessor" :f_updateMeasurementProcessor nil} jproto))
    
    (JR/superInit this (MyFontProcessor/jnew_0))
        (set (this :f_updateMeasurementProcessor) _keyValueDrawCharArray)
    this))
    
(set jm_process (fn jm_process [this _graphics]
        (:jm_updateMeasurement (this :f_updateMeasurementProcessor) _graphics)))

(set jproto (table/setproto @{:jm_process jm_process} MyFontProcessor/jproto))


