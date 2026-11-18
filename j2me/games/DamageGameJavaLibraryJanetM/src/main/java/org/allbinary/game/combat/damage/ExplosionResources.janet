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
# package org.allbinary.game.combat.damage

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ExplosionResources
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ExplosionResources" :f_EXPLOSION_90_RESOURCE nil :f_EXPLOSION_60_RESOURCE nil :f_HALF_EXPLOSION_RESOURCE nil :f_THIRD_EXPLOSION_RESOURCE nil} jproto))
    (put this :f_EXPLOSION_90_RESOURCE "/explosion_sprite_90_by_90.png")
    (put this :f_EXPLOSION_60_RESOURCE "/explosion_sprite_60_by_60.png")
    (put this :f_HALF_EXPLOSION_RESOURCE "/explosion_sprite_30_by_30.png")
    (put this :f_THIRD_EXPLOSION_RESOURCE "/explosion_sprite_15_by_15.png")
    this))

(set jproto @{})


