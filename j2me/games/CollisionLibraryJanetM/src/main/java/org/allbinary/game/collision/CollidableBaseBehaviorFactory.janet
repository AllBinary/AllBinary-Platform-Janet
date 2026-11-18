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
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CollidableBaseBehaviorFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_createBehavior nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CollidableBaseBehaviorFactory"} jproto))
    this))

    
(set jm_createBehavior (fn jm_createBehavior [this]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_createBehavior jm_createBehavior})


