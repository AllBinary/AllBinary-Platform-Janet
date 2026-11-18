# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
(import ./VelocityBehaviorBase :as VelocityBehaviorBase)

# Java class NoDragVelocityBehavior
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoDragVelocityBehavior"} jproto))
    (JR/superInit this (VelocityBehaviorBase/jnew_0))
    this))


(set jproto (table/setproto @{} VelocityBehaviorBase/jproto))


