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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "./BasicColorFactory" "jm_getInstance" args))

# Java class ColorTemperatureUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getBasicColor nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ColorTemperatureUtil" :f_basicColorFactory nil} jproto))
    (put this :f_basicColorFactory (BasicColorFactory/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getBasicColor (fn jm_getBasicColor [this _thirdTemp]
    (label jreturn
        (var _basicColor ((this :f_basicColorFactory) :f_RED))
        (if (> _thirdTemp 3700)
            (do
            (set _basicColor ((this :f_basicColorFactory) :f_PURPLE)))
            (if (> _thirdTemp 3200)
            (do
            (set _basicColor ((this :f_basicColorFactory) :f_BLUE)))
            (if (> _thirdTemp 2700)
            (do
            (set _basicColor ((this :f_basicColorFactory) :f_PUCE)))
            (if (> _thirdTemp 2200)
            (do
            (set _basicColor ((this :f_basicColorFactory) :f_WHITE)))
            (if (> _thirdTemp 1700)
            (do
            (set _basicColor ((this :f_basicColorFactory) :f_GREEN)))
            (if (> _thirdTemp 1200)
            (do
            (set _basicColor ((this :f_basicColorFactory) :f_YELLOW)))
            (if (> _thirdTemp 700)
            (do
            (set _basicColor ((this :f_basicColorFactory) :f_ORANGE))))))))))
        (return jreturn _basicColor))))

(set jproto @{:jm_getBasicColor jm_getBasicColor})


