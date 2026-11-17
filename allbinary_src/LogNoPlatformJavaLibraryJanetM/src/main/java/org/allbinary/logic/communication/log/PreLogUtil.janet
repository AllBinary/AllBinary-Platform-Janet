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
# package org.allbinary.logic.communication.log

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

#NoPlatform
# Java class PreLogUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_put nil)
(var jm_putOE nil)
(var jm_putSE nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PreLogUtil"} jproto))
    this))
    
(set jm_put (fn jm_put [_specialMessage _anyType _functionName]
        (jm_putOE _specialMessage _anyType _functionName ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))
    
(set jm_putOE (fn jm_putOE [_specialMessage _anyType _functionName _exception]
        (error (JR/newException "RuntimeException"))))
    
(set jm_putSE (fn jm_putSE [_specialMessage _className _functionName _exception]
        (error (JR/newException "RuntimeException"))))

(set jproto @{})


