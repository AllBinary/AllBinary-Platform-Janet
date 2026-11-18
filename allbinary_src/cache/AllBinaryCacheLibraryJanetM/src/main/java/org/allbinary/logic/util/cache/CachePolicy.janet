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
# package org.allbinary.logic.util.cache

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CachePolicy
(var jproto nil)
(var jnew_3 nil)
(var jm_getMaxTime nil)
(var jm_setMaxTime nil)
(var jm_getMaxSize nil)
(var jm_setMaxSize nil)
(var jm_getName nil)

    
(set jnew_3 (fn jnew_3 [_name _maxTime _maxSize]
    (var this (table/setproto @{:jclass "CachePolicy" :f_name nil :f_maxTime 0 :f_maxSize 0} jproto))
    
    
    
        (set (this :f_name) _name)
        (:jm_setMaxTime this _maxTime)
        (:jm_setMaxSize this _maxSize)
    this))
    
(set jm_getMaxTime (fn jm_getMaxTime [this]
    (label jreturn
        (return jreturn (this :f_maxTime)))))
    
(set jm_setMaxTime (fn jm_setMaxTime [this _maxTime]
        (set (this :f_maxTime) _maxTime)))
    
(set jm_getMaxSize (fn jm_getMaxSize [this]
    (label jreturn
        (return jreturn (this :f_maxSize)))))
    
(set jm_setMaxSize (fn jm_setMaxSize [this _maxSize]
        (set (this :f_maxSize) _maxSize)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_getMaxTime jm_getMaxTime :jm_setMaxTime jm_setMaxTime :jm_getMaxSize jm_getMaxSize :jm_setMaxSize jm_setMaxSize :jm_getName jm_getName})


