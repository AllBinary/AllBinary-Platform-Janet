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
# package org.allbinary.game.graphics.hud

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))

# Java class HudGraphicsPosition
(var jproto nil)
(var jcell_NULL_HUD_GRAPHICS_POSITION :jnone)
(var jstatic_NULL_HUD_GRAPHICS_POSITION nil)
(var jsetstatic_NULL_HUD_GRAPHICS_POSITION nil)
(var jnew_2 nil)
(var jm_getAnchor nil)
(var jm_setAnchor nil)
(var jm_getPoint nil)
(var jm_setPoint nil)

(set jstatic_NULL_HUD_GRAPHICS_POSITION (fn jstatic_NULL_HUD_GRAPHICS_POSITION []
  (when (= jcell_NULL_HUD_GRAPHICS_POSITION :jnone) (set jcell_NULL_HUD_GRAPHICS_POSITION (jnew_2 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) 9)))
  jcell_NULL_HUD_GRAPHICS_POSITION))
(set jsetstatic_NULL_HUD_GRAPHICS_POSITION (fn jsetstatic_NULL_HUD_GRAPHICS_POSITION [value] (set jcell_NULL_HUD_GRAPHICS_POSITION value)))

    
(set jnew_2 (fn jnew_2 [_point _anchor]
    (var this (table/setproto @{:jclass "HudGraphicsPosition" :f_anchor 0 :f_point nil} jproto))
    
    (put this :f_point ((PointFactory/jm_getInstance) :f_ZERO_ZERO))
        (:jm_setAnchor this _anchor)
        (:jm_setPoint this _point)
    this))
    
(set jm_getAnchor (fn jm_getAnchor [this]
    (label jreturn
        (return jreturn (this :f_anchor)))))
    
(set jm_setAnchor (fn jm_setAnchor [this _anchor]
        (set (this :f_anchor) _anchor)))
    
(set jm_getPoint (fn jm_getPoint [this]
    (label jreturn
        (return jreturn (this :f_point)))))
    
(set jm_setPoint (fn jm_setPoint [this _point]
        (set (this :f_point) _point)))

(set jproto @{:jm_getAnchor jm_getAnchor :jm_setAnchor jm_setAnchor :jm_getPoint jm_getPoint :jm_setPoint jm_setPoint})


