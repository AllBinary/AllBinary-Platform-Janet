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
# package org.allbinary.direction

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class DirectionalCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getDirectionalInterface nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DirectionalCompositeInterface"} jproto))
    this))

    
(set jm_getDirectionalInterface (fn jm_getDirectionalInterface [this]
    (error (JR/newException "AbstractMethodError" "getDirectionalInterface"))))

(set jproto @{:jm_getDirectionalInterface jm_getDirectionalInterface})


