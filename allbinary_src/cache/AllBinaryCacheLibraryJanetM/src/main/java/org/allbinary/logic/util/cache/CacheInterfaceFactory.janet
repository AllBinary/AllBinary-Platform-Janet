# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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
# package org.allbinary.logic.util.cache

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CacheInterfaceFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CacheInterfaceFactory"} jproto))
    this))
    
(set jm_getInstance (fn jm_getInstance [_cacheType _cachePolicy]
        (error (JR/newException "Exception" (string "No such " (:jm_toString _cacheType))))))

(set jproto @{})


