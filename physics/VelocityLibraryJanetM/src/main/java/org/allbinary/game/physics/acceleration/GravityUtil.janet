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

# Java class GravityUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GravityUtil" :f_GAME_GRAVITY_VELOCITY 0 :f_MAX_GAME_VELOCITY 0} jproto))
    (put this :f_GAME_GRAVITY_VELOCITY 1800)
    (put this :f_MAX_GAME_VELOCITY 18000)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_process (fn jm_process [this _velocityProperties _customGravity]
        (JR/className (:jm_getVelocityYBasicDecimalP _velocityProperties))))

(set jproto @{:jm_process jm_process})


