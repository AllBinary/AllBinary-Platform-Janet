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
# package org.allbinary.game.ag.layer.hud.basic.score

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../../org/allbinary/game/ag/layer/hud/basic/NumberStringHud :as NumberStringHud)
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))

# Java class ScoreHudWidget
(var jproto nil)
(var jnew_5 nil)
(var jm_getInstance nil)
(var jm_updateMeasurement nil)

    
(set jm_getInstance (fn jm_getInstance [_maxscore _location _direction]
    (label jreturn
        (return jreturn (jnew_5 _maxscore _location _direction 2 ((BasicColorFactory/jm_getInstance) :f_GREY))))))
    
(set jnew_5 (fn jnew_5 [_maxscore _location _direction _bufferZone _basicColor]
    (var this (table/setproto @{:jclass "ScoreHudWidget"} jproto))
        (JR/superInit this (NumberStringHud/jnew_6 "Pts " _maxscore _location _direction _bufferZone _basicColor))
        (set (this :f_updateMaxHeight) 14)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_updateMaxWidth) (JR/i32 (* (:jm_getSize _font) 5)))
        ((get NumberStringHud/jproto :jm_updateMeasurement) this _graphics)))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement} NumberStringHud/jproto))


