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
# package org.allbinary.game.physics

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- FrictionData/jm_getFrictionDenominator [& args] (JR/call jfile "../../../../org/allbinary/game/physics/friction/FrictionData" "jm_getFrictionDenominator" args))
(defn- DragVelocityBehavior/jstatic_instance [& args] (JR/call jfile "../../../../org/allbinary/game/physics/velocity/DragVelocityBehavior" "jstatic_instance" args))

# Java class FrictionProperties
(var jproto nil)
(var jnew_0 nil)
(var jm_friction nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FrictionProperties"} jproto))
    this))
    
(set jm_friction (fn jm_friction [this _velocityProperties _nominator]
        (JR/className (DragVelocityBehavior/jstatic_instance))))

(set jproto @{:jm_friction jm_friction})


