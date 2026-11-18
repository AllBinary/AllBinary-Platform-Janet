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
# package org.allbinary.logic.system.security.crypt.jcehelper

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class BaseSecretComposite
(var jproto nil)
(var jcell_NULL_SECRET_COMPOSITE :jnone)
(var jstatic_NULL_SECRET_COMPOSITE nil)
(var jsetstatic_NULL_SECRET_COMPOSITE nil)
(var jnew_0 nil)
(var jm_encrypt nil)
(var jm_decrypt nil)

(set jstatic_NULL_SECRET_COMPOSITE (fn jstatic_NULL_SECRET_COMPOSITE []
  (when (= jcell_NULL_SECRET_COMPOSITE :jnone) (set jcell_NULL_SECRET_COMPOSITE (jnew_0)))
  jcell_NULL_SECRET_COMPOSITE))
(set jsetstatic_NULL_SECRET_COMPOSITE (fn jsetstatic_NULL_SECRET_COMPOSITE [value] (set jcell_NULL_SECRET_COMPOSITE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseSecretComposite"} jproto))
    this))

    
(set jm_encrypt (fn jm_encrypt [this _array]
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY)))))
    
(set jm_decrypt (fn jm_decrypt [this _array]
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY)))))

(set jproto @{:jm_encrypt jm_encrypt :jm_decrypt jm_decrypt})


