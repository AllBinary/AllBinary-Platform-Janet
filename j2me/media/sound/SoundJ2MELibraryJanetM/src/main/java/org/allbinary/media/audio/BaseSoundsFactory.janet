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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BaseSoundsFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getSoundInterfaceArray nil)
(var jm_setInitialized nil)
(var jm_isInitialized nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseSoundsFactory" :f_initialized false} jproto))
    
    this))

    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_getSoundInterfaceArray (fn jm_getSoundInterfaceArray [this]
    (label jreturn
        (return jreturn (array/new-filled 0 nil)))))
    
(set jm_setInitialized (fn jm_setInitialized [this _initialized]
        (set (this :f_initialized) _initialized)))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (label jreturn
        (return jreturn (this :f_initialized)))))

(set jproto @{:jm_init jm_init :jm_getSoundInterfaceArray jm_getSoundInterfaceArray :jm_setInitialized jm_setInitialized :jm_isInitialized jm_isInitialized})


