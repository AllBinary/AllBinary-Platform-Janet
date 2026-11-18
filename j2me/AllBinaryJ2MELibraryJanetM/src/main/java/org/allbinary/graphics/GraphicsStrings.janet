# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GraphicsStrings
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

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GraphicsStrings" :f_ANIMATION nil :f_ANGLE nil :f_MOVEMENT_ANGLE nil :f_ROTATION nil :f_OPACITY nil :f_HTML nil :f_WIDTH nil :f_HEIGHT nil} jproto))
    (put this :f_ANIMATION "animation")
    (put this :f_ANGLE "angle")
    (put this :f_MOVEMENT_ANGLE "movement_angle")
    (put this :f_ROTATION "rotation")
    (put this :f_OPACITY "opacity")
    (put this :f_HTML "HTML")
    (put this :f_WIDTH "width")
    (put this :f_HEIGHT "height")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


