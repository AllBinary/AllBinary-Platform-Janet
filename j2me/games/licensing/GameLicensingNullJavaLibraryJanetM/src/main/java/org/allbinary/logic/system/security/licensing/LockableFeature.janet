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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LockableFeature
(var jproto nil)
(var jnew_1 nil)
(var jm_getName nil)

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "LockableFeature" :f_name nil} jproto))
    
        (set (this :f_name) _name)
    this))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_getName jm_getName})


