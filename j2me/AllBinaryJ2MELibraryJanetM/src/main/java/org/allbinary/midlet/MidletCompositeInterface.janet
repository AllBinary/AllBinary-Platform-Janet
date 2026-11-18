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
# package org.allbinary.midlet

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MidletCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setMidlet nil)
(var jm_getMidlet nil)
(var jm_getDisplayable nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MidletCompositeInterface"} jproto))
    this))

    
(set jm_setMidlet (fn jm_setMidlet [this _midlet]
    (error (JR/newException "AbstractMethodError" "setMidlet"))))
    
(set jm_getMidlet (fn jm_getMidlet [this]
    (error (JR/newException "AbstractMethodError" "getMidlet"))))
    
(set jm_getDisplayable (fn jm_getDisplayable [this]
    (error (JR/newException "AbstractMethodError" "getDisplayable"))))

(set jproto @{:jm_setMidlet jm_setMidlet :jm_getMidlet jm_getMidlet :jm_getDisplayable jm_getDisplayable})


