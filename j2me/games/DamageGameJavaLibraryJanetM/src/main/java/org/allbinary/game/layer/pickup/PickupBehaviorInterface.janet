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

# Java class PickupBehaviorInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_doPickup nil)
(var jm_doPickupLayer nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PickupBehaviorInterface"} jproto))
    this))

    
(set jm_doPickup (fn jm_doPickup [this _pickupProcessorInterface]
    (error (JR/newException "AbstractMethodError" "doPickup"))))
    
(set jm_doPickupLayer (fn jm_doPickupLayer [this _pickupLayerInterface]
    (error (JR/newException "AbstractMethodError" "doPickupLayer"))))

(set jproto @{:jm_doPickup jm_doPickup :jm_doPickupLayer jm_doPickupLayer})


