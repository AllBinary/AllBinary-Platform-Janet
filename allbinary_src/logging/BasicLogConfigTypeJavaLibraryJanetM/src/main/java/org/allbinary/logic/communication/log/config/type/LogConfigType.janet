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
# package org.allbinary.logic.communication.log.config.type

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LogConfigType
(var jproto nil)
(var jnew_2 nil)
(var jm_getName nil)
(var jm_getDescription nil)
(var jm_setName nil)
(var jm_setDescription nil)

    
(set jnew_2 (fn jnew_2 [_name _description]
    (var this (table/setproto @{:jclass "LogConfigType" :f_name nil :f_description nil} jproto))
    
    
        (set (this :f_name) _name)
        (set (this :f_description) _description)
    this))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_getDescription (fn jm_getDescription [this]
    (label jreturn
        (return jreturn (this :f_description)))))
    
(set jm_setName (fn jm_setName [this _value]
        (set (this :f_name) _value)))
    
(set jm_setDescription (fn jm_setDescription [this _value]
        (set (this :f_description) _value)))

(set jproto @{:jm_getName jm_getName :jm_getDescription jm_getDescription :jm_setName jm_setName :jm_setDescription jm_setDescription})


