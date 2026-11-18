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
# package org.allbinary.thirdparty.store

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ThirdPartyStore
(var jproto nil)
(var jnew_1 nil)
(var jm_authorize nil)
(var jm_isAuthorized nil)
(var jm_setAuthorized nil)
(var jm_getName nil)

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "ThirdPartyStore" :f_authorized false :f_name nil} jproto))
    
    
        (set (this :f_name) _name)
    this))
    
(set jm_authorize (fn jm_authorize [this _clientInformationInterface]
    nil))
    
(set jm_isAuthorized (fn jm_isAuthorized [this]
    (label jreturn
        (return jreturn (this :f_authorized)))))
    
(set jm_setAuthorized (fn jm_setAuthorized [this _authorized]
        (set (this :f_authorized) _authorized)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_authorize jm_authorize :jm_isAuthorized jm_isAuthorized :jm_setAuthorized jm_setAuthorized :jm_getName jm_getName})


