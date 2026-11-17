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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PositionStrings
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PositionStrings" :f_X nil :f_Y nil :f_X_LABEL nil :f_Y_LABEL nil :f_Z_LABEL nil :f_DX_LABEL nil :f_DY_LABEL nil :f_DZ_LABEL nil} jproto))
    (put this :f_X "x")
    (put this :f_Y "y")
    (put this :f_X_LABEL "x: ")
    (put this :f_Y_LABEL "y: ")
    (put this :f_Z_LABEL "z: ")
    (put this :f_DX_LABEL "dx: ")
    (put this :f_DY_LABEL "dy: ")
    (put this :f_DZ_LABEL "dz: ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


