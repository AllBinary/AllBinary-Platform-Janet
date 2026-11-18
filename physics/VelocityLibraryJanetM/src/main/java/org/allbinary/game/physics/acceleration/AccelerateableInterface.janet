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
# package org.allbinary.game.physics.acceleration

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class AccelerateableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_accelerate nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AccelerateableInterface"} jproto))
    this))

    
(set jm_accelerate (fn jm_accelerate [this _accelerate]
    (error (JR/newException "AbstractMethodError" "accelerate"))))

(set jproto @{:jm_accelerate jm_accelerate})


