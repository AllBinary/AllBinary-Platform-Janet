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
(import ./AllBinaryVibrationME :as AllBinaryVibrationME)

# Java class AllBinaryNoVibration
(var jproto nil)
(var jcell_NO_VIBRATION :jnone)
(var jstatic_NO_VIBRATION nil)
(var jsetstatic_NO_VIBRATION nil)
(var jnew_0 nil)
(var jm_vibrate nil)

(set jstatic_NO_VIBRATION (fn jstatic_NO_VIBRATION []
  (when (= jcell_NO_VIBRATION :jnone) (set jcell_NO_VIBRATION (jnew_0)))
  jcell_NO_VIBRATION))
(set jsetstatic_NO_VIBRATION (fn jsetstatic_NO_VIBRATION [value] (set jcell_NO_VIBRATION value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryNoVibration"} jproto))
    (JR/superInit this (AllBinaryVibrationME/jnew_0))
    this))

    
(set jm_vibrate (fn jm_vibrate [this _duration _type _volume]
    nil))

(set jproto (table/setproto @{:jm_vibrate jm_vibrate} AllBinaryVibrationME/jproto))


