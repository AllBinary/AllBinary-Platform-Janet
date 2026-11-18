# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CustomGPoint/jnew_3 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/CustomGPoint" "jnew_3" args))

# Java class AnalogLocationInput
(var jproto nil)
(var jcell_NULL_ANALOG_LOCATION_INPUT :jnone)
(var jstatic_NULL_ANALOG_LOCATION_INPUT nil)
(var jsetstatic_NULL_ANALOG_LOCATION_INPUT nil)
(var jnew_1 nil)
(var jm_getPlayerId nil)
(var jm_getCustomGPoint nil)
(var jm_getRz nil)
(var jm_setRz nil)
(var jm_getRightTrigger nil)
(var jm_setRightTrigger nil)
(var jm_getLeftTrigger nil)
(var jm_setLeftTrigger nil)

(set jstatic_NULL_ANALOG_LOCATION_INPUT (fn jstatic_NULL_ANALOG_LOCATION_INPUT []
  (when (= jcell_NULL_ANALOG_LOCATION_INPUT :jnone) (set jcell_NULL_ANALOG_LOCATION_INPUT (jnew_1 (JR/i32 (- 1)))))
  jcell_NULL_ANALOG_LOCATION_INPUT))
(set jsetstatic_NULL_ANALOG_LOCATION_INPUT (fn jsetstatic_NULL_ANALOG_LOCATION_INPUT [value] (set jcell_NULL_ANALOG_LOCATION_INPUT value)))

    
(set jnew_1 (fn jnew_1 [_playerId]
    (var this (table/setproto @{:jclass "AnalogLocationInput" :f_playerId 0 :f_customGPoint nil :f_rz 0 :f_rightTrigger 0 :f_leftTrigger 0} jproto))
    
    
    
    
    
        (set (this :f_playerId) _playerId)
        (set (this :f_customGPoint) (CustomGPoint/jnew_3 0 0 0))
    this))
    
(set jm_getPlayerId (fn jm_getPlayerId [this]
    (label jreturn
        (return jreturn (this :f_playerId)))))
    
(set jm_getCustomGPoint (fn jm_getCustomGPoint [this]
    (label jreturn
        (return jreturn (this :f_customGPoint)))))
    
(set jm_getRz (fn jm_getRz [this]
    (label jreturn
        (return jreturn (this :f_rz)))))
    
(set jm_setRz (fn jm_setRz [this _rz]
        (set (this :f_rz) _rz)))
    
(set jm_getRightTrigger (fn jm_getRightTrigger [this]
    (label jreturn
        (return jreturn (this :f_rightTrigger)))))
    
(set jm_setRightTrigger (fn jm_setRightTrigger [this _rightTrigger]
        (set (this :f_rightTrigger) _rightTrigger)))
    
(set jm_getLeftTrigger (fn jm_getLeftTrigger [this]
    (label jreturn
        (return jreturn (this :f_leftTrigger)))))
    
(set jm_setLeftTrigger (fn jm_setLeftTrigger [this _leftTrigger]
        (set (this :f_leftTrigger) _leftTrigger)))

(set jproto @{:jm_getPlayerId jm_getPlayerId :jm_getCustomGPoint jm_getCustomGPoint :jm_getRz jm_getRz :jm_setRz jm_setRz :jm_getRightTrigger jm_getRightTrigger :jm_setRightTrigger jm_setRightTrigger :jm_getLeftTrigger jm_getLeftTrigger :jm_setLeftTrigger jm_setLeftTrigger})


