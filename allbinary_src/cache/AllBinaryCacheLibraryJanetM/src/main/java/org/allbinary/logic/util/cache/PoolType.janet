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

# Java class PoolType
(var jproto nil)
(var jnew_1 nil)
(var jm_getCacheType nil)
(var jm_toString nil)

    
(set jnew_1 (fn jnew_1 [_cacheType]
    (var this (table/setproto @{:jclass "PoolType" :f_cacheType nil} jproto))
    
        (set (this :f_cacheType) _cacheType)
    this))
    
(set jm_getCacheType (fn jm_getCacheType [this]
    (label jreturn
        (return jreturn (this :f_cacheType)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _POOL_TYPE "PoolType: ")
        (return jreturn (string _POOL_TYPE (:jm_toString (:jm_getCacheType this)))))))

(set jproto @{:jm_getCacheType jm_getCacheType :jm_toString jm_toString})


