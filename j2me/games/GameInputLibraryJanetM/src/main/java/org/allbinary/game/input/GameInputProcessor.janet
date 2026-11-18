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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/lang/Integer :as Integer)

# Java class GameInputProcessor
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_processEvent nil)
(var jm_processReleasedEvent nil)
(var jm_processAnalog nil)
(var jm_process nil)
(var jm_processReleased nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameInputProcessor"} jproto))
    this))
    
(set jm_processEvent (fn jm_processEvent [this _allbinaryLayerManager _gameKeyEvent]
    nil))
    
(set jm_processReleasedEvent (fn jm_processReleasedEvent [this _allbinaryLayerManager _gameKeyEvent]
    nil))
    
(set jm_processAnalog (fn jm_processAnalog [this _allbinaryLayerManager _gameKeyEvent _analogValue]
    nil))
    
(set jm_process (fn jm_process [this _allbinaryLayerManager _keyAsInteger]
    nil))
    
(set jm_processReleased (fn jm_processReleased [this _allbinaryLayerManager _keyAsInteger]
    nil))

(set jproto @{:jm_processEvent jm_processEvent :jm_processReleasedEvent jm_processReleasedEvent :jm_processAnalog jm_processAnalog :jm_process jm_process :jm_processReleased jm_processReleased})


