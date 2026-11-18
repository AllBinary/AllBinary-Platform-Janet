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
# package org.allbinary.string

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CommonPhoneStrings
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
    (var this (table/setproto @{:jclass "CommonPhoneStrings" :f_UP nil :f_DOWN nil :f_LEFT nil :f_RIGHT nil :f_ZERO nil :f_ONE nil :f_TWO nil :f_THREE nil :f_FOUR nil :f_FIVE nil :f_SIX nil :f_SEVEN nil :f_EIGHT nil :f_NINE nil :f_POUND nil :f_STAR nil :f_FIRE nil} jproto))
    (put this :f_UP "UP")
    (put this :f_DOWN "DOWN")
    (put this :f_LEFT "LEFT")
    (put this :f_RIGHT "RIGHT")
    (put this :f_ZERO "0")
    (put this :f_ONE "1")
    (put this :f_TWO "2")
    (put this :f_THREE "3")
    (put this :f_FOUR "4")
    (put this :f_FIVE "5")
    (put this :f_SIX "6")
    (put this :f_SEVEN "7")
    (put this :f_EIGHT "8")
    (put this :f_NINE "9")
    (put this :f_POUND "#")
    (put this :f_STAR "*")
    (put this :f_FIRE "FIRE")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


