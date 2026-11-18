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
# package org.allbinary.game.resource

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ResourceLoadingLevel
(var jproto nil)
(var jnew_2 nil)
(var jm_getLevel nil)
(var jm_getName nil)

    
(set jnew_2 (fn jnew_2 [_name _level]
    (var this (table/setproto @{:jclass "ResourceLoadingLevel" :f_name nil :f_level 0} jproto))
    
    
        (set (this :f_name) _name)
        (set (this :f_level) _level)
    this))
    
(set jm_getLevel (fn jm_getLevel [this]
    (label jreturn
        (return jreturn (this :f_level)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_getLevel jm_getLevel :jm_getName jm_getName})


