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
# package org.allbinary.media

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(import ./AllBinaryVibrationME :as AllBinaryVibrationME)
(defn- AllBinaryNoVibration/jstatic_NO_VIBRATION [& args] (JR/call jfile "./AllBinaryNoVibration" "jstatic_NO_VIBRATION" args))

# Java class AllBinaryVibration
(var jproto nil)
(var jcell_VIBRATION :jnone)
(var jstatic_VIBRATION nil)
(var jsetstatic_VIBRATION nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_vibrate nil)

(set jstatic_VIBRATION (fn jstatic_VIBRATION []
  (when (= jcell_VIBRATION :jnone) (set jcell_VIBRATION (AllBinaryNoVibration/jstatic_NO_VIBRATION)))
  jcell_VIBRATION))
(set jsetstatic_VIBRATION (fn jsetstatic_VIBRATION [value] (set jcell_VIBRATION value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryVibration"} jproto))
    (JR/superInit this (AllBinaryVibrationME/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_VIBRATION)))))
    
(set jm_init (fn jm_init []
        (if (= (JR/className (JR/className ((GameConfigurationCentral/jm_getInstance) :f_VIBRATION))) 0)
            (do
            (set jcell_VIBRATION (AllBinaryNoVibration/jstatic_NO_VIBRATION)))
            (do
            (set jcell_VIBRATION (jnew_0))))))
    
(set jm_vibrate (fn jm_vibrate [this _duration _type _volume]
    nil))

(set jproto (table/setproto @{:jm_vibrate jm_vibrate} AllBinaryVibrationME/jproto))


