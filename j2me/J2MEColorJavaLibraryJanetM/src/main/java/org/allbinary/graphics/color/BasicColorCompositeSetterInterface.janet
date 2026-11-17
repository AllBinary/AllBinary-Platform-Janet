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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BasicColorCompositeSetterInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setBasicColorP nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicColorCompositeSetterInterface"} jproto))
    this))

    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
    (error (JR/newException "AbstractMethodError" "setBasicColorP"))))

(set jproto @{:jm_setBasicColorP jm_setBasicColorP})


