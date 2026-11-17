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
# package org.allbinary.logic.math

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class PrimitiveIntUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_getArrayInstance nil)
(var jm_getTwoDimensionalArrayInstance nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PrimitiveIntUtil"} jproto))
    this))
    
(set jm_getArrayInstance (fn jm_getArrayInstance []
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY)))))
    
(set jm_getTwoDimensionalArrayInstance (fn jm_getTwoDimensionalArrayInstance []
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY)))))

(set jproto @{})


