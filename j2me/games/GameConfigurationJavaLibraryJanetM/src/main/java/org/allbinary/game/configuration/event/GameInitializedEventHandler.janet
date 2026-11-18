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
# package org.allbinary.game.configuration.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)

# Java class GameInitializedEventHandler
(var jproto nil)
(var jcell_gameKeyEventHandler :jnone)
(var jstatic_gameKeyEventHandler nil)
(var jsetstatic_gameKeyEventHandler nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_gameKeyEventHandler (fn jstatic_gameKeyEventHandler []
  (when (= jcell_gameKeyEventHandler :jnone) (set jcell_gameKeyEventHandler (jnew_0)))
  jcell_gameKeyEventHandler))
(set jsetstatic_gameKeyEventHandler (fn jsetstatic_gameKeyEventHandler [value] (set jcell_gameKeyEventHandler value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameInitializedEventHandler"} jproto))
    (JR/superInit this (BasicEventHandler/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_gameKeyEventHandler)))))
    
(set jm_process (fn jm_process [this _eventObject _eventListenerInterface]
        (var _gameInitializedListenerInterface _eventListenerInterface)
        (:jm_onGameInitialized _gameInitializedListenerInterface _eventObject)))

(set jproto (table/setproto @{:jm_process jm_process} BasicEventHandler/jproto))


