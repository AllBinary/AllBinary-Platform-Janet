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
# package org.allbinary.game.input.mapping.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../org/allbinary/logic/util/event/EventListenerInterface :as EventListenerInterface)

# Java class InputMappingEventListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onInputMappingEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InputMappingEventListenerInterface"} jproto))
    this))

    
(set jm_onInputMappingEvent (fn jm_onInputMappingEvent [this _inputMappingEvent]
    (error (JR/newException "AbstractMethodError" "onInputMappingEvent"))))

(set jproto @{:jm_onInputMappingEvent jm_onInputMappingEvent})


