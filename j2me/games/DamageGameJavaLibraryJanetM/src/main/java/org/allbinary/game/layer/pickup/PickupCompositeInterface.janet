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
# package org.allbinary.game.layer.pickup

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PickupCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getPickupBehavior nil)
(var jm_setPickupBehavior nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PickupCompositeInterface"} jproto))
    this))

    
(set jm_getPickupBehavior (fn jm_getPickupBehavior [this]
    (error (JR/newException "AbstractMethodError" "getPickupBehavior"))))
    
(set jm_setPickupBehavior (fn jm_setPickupBehavior [this _pickupBehavior]
    (error (JR/newException "AbstractMethodError" "setPickupBehavior"))))

(set jproto @{:jm_getPickupBehavior jm_getPickupBehavior :jm_setPickupBehavior jm_setPickupBehavior})


