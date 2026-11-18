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
(import ./AnimationInterface :as AnimationInterface)

# Java class SequentialAnimationInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getSize nil)
(var jm_previousFrame nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SequentialAnimationInterface"} jproto))
    this))

    
(set jm_getSize (fn jm_getSize [this]
    (error (JR/newException "AbstractMethodError" "getSize"))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
    (error (JR/newException "AbstractMethodError" "previousFrame"))))

(set jproto @{:jm_getSize jm_getSize :jm_previousFrame jm_previousFrame})


