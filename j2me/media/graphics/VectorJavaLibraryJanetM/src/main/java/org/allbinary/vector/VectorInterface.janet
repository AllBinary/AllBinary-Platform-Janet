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
# package org.allbinary.vector

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class VectorInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getPoints nil)
(var jm_setPoints nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VectorInterface"} jproto))
    this))

    
(set jm_getPoints (fn jm_getPoints [this _frame]
    (error (JR/newException "AbstractMethodError" "getPoints"))))
    
(set jm_setPoints (fn jm_setPoints [this _currentPoints]
    (error (JR/newException "AbstractMethodError" "setPoints"))))

(set jproto @{:jm_getPoints jm_getPoints :jm_setPoints jm_setPoints})


