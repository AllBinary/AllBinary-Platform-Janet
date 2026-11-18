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
# package org.allbinary.game.physics.velocity

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class VelocityInterfaceCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getVelocityProperties nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VelocityInterfaceCompositeInterface"} jproto))
    this))

    
(set jm_getVelocityProperties (fn jm_getVelocityProperties [this]
    (error (JR/newException "AbstractMethodError" "getVelocityProperties"))))

(set jproto @{:jm_getVelocityProperties jm_getVelocityProperties})


