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
# package org.allbinary.game.terrain

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))

# Java class BasicTerrainInfo
(var jproto nil)
(var jcell_NULL_BASIC_TERRAIN_INFO :jnone)
(var jstatic_NULL_BASIC_TERRAIN_INFO nil)
(var jsetstatic_NULL_BASIC_TERRAIN_INFO nil)
(var jnew_1 nil)
(var jm_getAngle nil)
(var jm_setAngle nil)

(set jstatic_NULL_BASIC_TERRAIN_INFO (fn jstatic_NULL_BASIC_TERRAIN_INFO []
  (when (= jcell_NULL_BASIC_TERRAIN_INFO :jnone) (set jcell_NULL_BASIC_TERRAIN_INFO (jnew_1 ((AngleFactory/jm_getInstance) :f_NOT_ANGLE))))
  jcell_NULL_BASIC_TERRAIN_INFO))
(set jsetstatic_NULL_BASIC_TERRAIN_INFO (fn jsetstatic_NULL_BASIC_TERRAIN_INFO [value] (set jcell_NULL_BASIC_TERRAIN_INFO value)))

    
(set jnew_1 (fn jnew_1 [_angle]
    (var this (table/setproto @{:jclass "BasicTerrainInfo" :f_angle nil} jproto))
    
        (set (this :f_angle) _angle)
    this))
    
(set jm_getAngle (fn jm_getAngle [this]
    (label jreturn
        (return jreturn (this :f_angle)))))
    
(set jm_setAngle (fn jm_setAngle [this _angle]
        (set (this :f_angle) _angle)))

(set jproto @{:jm_getAngle jm_getAngle :jm_setAngle jm_setAngle})


