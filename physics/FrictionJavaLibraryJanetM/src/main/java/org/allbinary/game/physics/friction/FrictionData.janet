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
# package org.allbinary.game.physics.friction

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class FrictionData
(var jproto nil)
(var jcell_FRICTION_DENOMINATOR :jnone)
(var jstatic_FRICTION_DENOMINATOR nil)
(var jsetstatic_FRICTION_DENOMINATOR nil)
(var jnew_0 nil)
(var jm_getFrictionDenominator nil)

(set jstatic_FRICTION_DENOMINATOR (fn jstatic_FRICTION_DENOMINATOR []
  (when (= jcell_FRICTION_DENOMINATOR :jnone) (set jcell_FRICTION_DENOMINATOR 100))
  jcell_FRICTION_DENOMINATOR))
(set jsetstatic_FRICTION_DENOMINATOR (fn jsetstatic_FRICTION_DENOMINATOR [value] (set jcell_FRICTION_DENOMINATOR value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FrictionData"} jproto))
    this))
    
(set jm_getFrictionDenominator (fn jm_getFrictionDenominator []
    (label jreturn
        (return jreturn (jstatic_FRICTION_DENOMINATOR)))))

(set jproto @{})


