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
# package org.allbinary.game.midlet

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DemoGameMidletState/jnew_0 [& args] (JR/call jfile "./DemoGameMidletState" "jnew_0" args))

# Java class DemoGameMidletStateFactory
(var jproto nil)
(var jcell_STATE :jnone)
(var jstatic_STATE nil)
(var jsetstatic_STATE nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_STATE (fn jstatic_STATE []
  (when (= jcell_STATE :jnone) (set jcell_STATE (jnew_0)))
  jcell_STATE))
(set jsetstatic_STATE (fn jsetstatic_STATE [value] (set jcell_STATE value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DemoGameMidletStateFactory" :f_NONE nil :f_START_DEMO nil :f_START_GAME nil :f_START_INPUT_MAPPING nil} jproto))
    (put this :f_NONE (DemoGameMidletState/jnew_0))
    (put this :f_START_DEMO (DemoGameMidletState/jnew_0))
    (put this :f_START_GAME (DemoGameMidletState/jnew_0))
    (put this :f_START_INPUT_MAPPING (DemoGameMidletState/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_STATE)))))

(set jproto @{})


