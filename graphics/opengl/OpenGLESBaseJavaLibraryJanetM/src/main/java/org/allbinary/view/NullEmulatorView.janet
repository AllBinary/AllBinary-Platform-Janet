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
# package org.allbinary.view

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullEmulatorView
(var jproto nil)
(var jcell_NULL_EMULATOR_VIEW :jnone)
(var jstatic_NULL_EMULATOR_VIEW nil)
(var jsetstatic_NULL_EMULATOR_VIEW nil)
(var jnew_0 nil)
(var jm_setMidlet nil)
(var jm_onEmulatorInitComplete nil)
(var jm_onSetDisplayable nil)

(set jstatic_NULL_EMULATOR_VIEW (fn jstatic_NULL_EMULATOR_VIEW []
  (when (= jcell_NULL_EMULATOR_VIEW :jnone) (set jcell_NULL_EMULATOR_VIEW (jnew_0)))
  jcell_NULL_EMULATOR_VIEW))
(set jsetstatic_NULL_EMULATOR_VIEW (fn jsetstatic_NULL_EMULATOR_VIEW [value] (set jcell_NULL_EMULATOR_VIEW value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullEmulatorView"} jproto))
    this))

    
(set jm_setMidlet (fn jm_setMidlet [this _midlet]
    nil))
    
(set jm_onEmulatorInitComplete (fn jm_onEmulatorInitComplete [this _midletActivity]
    nil))
    
(set jm_onSetDisplayable (fn jm_onSetDisplayable [this _displayable]
    nil))

(set jproto @{:jm_setMidlet jm_setMidlet :jm_onEmulatorInitComplete jm_onEmulatorInitComplete :jm_onSetDisplayable jm_onSetDisplayable})


