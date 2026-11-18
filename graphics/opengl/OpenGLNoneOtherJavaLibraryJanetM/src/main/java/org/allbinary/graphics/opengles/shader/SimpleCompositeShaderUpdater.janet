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
# package org.allbinary.graphics.opengles.shader

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CompositeShaderUpdater :as CompositeShaderUpdater)

# Java class SimpleCompositeShaderUpdater
(var jproto nil)
(var jnew_4 nil)

    
(set jnew_4 (fn jnew_4 [_uniformBlockArray _uniformArray _attributeArray _attributeHandleArray]
    (var this (table/setproto @{:jclass "SimpleCompositeShaderUpdater"} jproto))
        (JR/superInit this (CompositeShaderUpdater/jnew_4 _uniformBlockArray _uniformArray _attributeArray _attributeHandleArray))
    this))

(set jproto (table/setproto @{} CompositeShaderUpdater/jproto))


