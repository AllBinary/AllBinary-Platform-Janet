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

# Java class BasicHudFactory
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

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicHudFactory" :f_DIRECTION_EXCEPTION nil :f_VERTICAL 0 :f_HORIZONTAL 0 :f_BOTTOMLEFT 0 :f_BOTTOMRIGHT 0 :f_TOPLEFT 0 :f_TOPRIGHT 0 :f_BOTTOMCENTER 0 :f_TOPCENTER 0 :f_ABSOLUTE 0} jproto))
    (put this :f_DIRECTION_EXCEPTION "Only Horizontal Direction is Allowed Currently")
    (put this :f_VERTICAL 0)
    (put this :f_HORIZONTAL 1)
    (put this :f_BOTTOMLEFT 0)
    (put this :f_BOTTOMRIGHT 1)
    (put this :f_TOPLEFT 2)
    (put this :f_TOPRIGHT 3)
    (put this :f_BOTTOMCENTER 4)
    (put this :f_TOPCENTER 5)
    (put this :f_ABSOLUTE 6)
    this))

(set jproto @{})


