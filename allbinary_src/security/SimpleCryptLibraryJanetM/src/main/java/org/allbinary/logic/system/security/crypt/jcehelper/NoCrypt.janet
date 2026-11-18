# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.system.security.crypt.jcehelper

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NoCrypt
(var jproto nil)
(var jnew_0 nil)
(var jm_encrypt nil)
(var jm_decrypt nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoCrypt"} jproto))
    this))

    
(set jm_encrypt (fn jm_encrypt [this _array]
    (label jreturn
        (return jreturn _array))))
    
(set jm_decrypt (fn jm_decrypt [this _array]
    (label jreturn
        (return jreturn _array))))

(set jproto @{:jm_encrypt jm_encrypt :jm_decrypt jm_decrypt})


