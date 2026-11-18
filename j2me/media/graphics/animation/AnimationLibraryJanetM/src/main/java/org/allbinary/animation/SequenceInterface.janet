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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class SequenceInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setSequence nil)
(var jm_getSequence nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SequenceInterface"} jproto))
    this))

    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    (error (JR/newException "AbstractMethodError" "setSequence"))))
    
(set jm_getSequence (fn jm_getSequence [this]
    (error (JR/newException "AbstractMethodError" "getSequence"))))

(set jproto @{:jm_setSequence jm_setSequence :jm_getSequence jm_getSequence})


