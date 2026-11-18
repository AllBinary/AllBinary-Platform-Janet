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
# package org.allbinary.animation.compound

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/AnimationInterface :as AnimationInterface)

# Java class CompoundAnimationInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_nextAnimation nil)
(var jm_previousAnimation nil)
(var jm_setAnimation nil)
(var jm_getCurrentAnimation nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CompoundAnimationInterface"} jproto))
    this))

    
(set jm_nextAnimation (fn jm_nextAnimation [this]
    (error (JR/newException "AbstractMethodError" "nextAnimation"))))
    
(set jm_previousAnimation (fn jm_previousAnimation [this]
    (error (JR/newException "AbstractMethodError" "previousAnimation"))))
    
(set jm_setAnimation (fn jm_setAnimation [this _index]
    (error (JR/newException "AbstractMethodError" "setAnimation"))))
    
(set jm_getCurrentAnimation (fn jm_getCurrentAnimation [this]
    (error (JR/newException "AbstractMethodError" "getCurrentAnimation"))))

(set jproto @{:jm_nextAnimation jm_nextAnimation :jm_previousAnimation jm_previousAnimation :jm_setAnimation jm_setAnimation :jm_getCurrentAnimation jm_getCurrentAnimation})


