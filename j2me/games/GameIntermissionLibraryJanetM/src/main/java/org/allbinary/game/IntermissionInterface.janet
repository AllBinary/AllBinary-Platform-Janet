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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class IntermissionInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getTimeDelayHelper nil)
(var jm_isEnabled nil)
(var jm_setEnabled nil)
(var jm_setListener nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IntermissionInterface"} jproto))
    this))

    
(set jm_getTimeDelayHelper (fn jm_getTimeDelayHelper [this]
    (error (JR/newException "AbstractMethodError" "getTimeDelayHelper"))))
    
(set jm_isEnabled (fn jm_isEnabled [this]
    (error (JR/newException "AbstractMethodError" "isEnabled"))))
    
(set jm_setEnabled (fn jm_setEnabled [this _value]
    (error (JR/newException "AbstractMethodError" "setEnabled"))))
    
(set jm_setListener (fn jm_setListener [this _enableListener]
    (error (JR/newException "AbstractMethodError" "setListener"))))

(set jproto @{:jm_getTimeDelayHelper jm_getTimeDelayHelper :jm_isEnabled jm_isEnabled :jm_setEnabled jm_setEnabled :jm_setListener jm_setListener})


