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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/business/advertisement/GameAdStateBase :as GameAdStateBase)
(defn- VirtualKeyboardEventHandler/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/input/event/VirtualKeyboardEventHandler" "jm_getInstance" args))

# Java class GameAdState
(var jproto nil)
(var jnew_1 nil)
(var jm_onVirtualKeyboardEvent nil)
(var jm_onEvent nil)

    
(set jnew_1 (fn jnew_1 [_adConfiguration]
    (var this (table/setproto @{:jclass "GameAdState"} jproto))
        (JR/superInit this (GameAdStateBase/jnew_1 _adConfiguration))
        (:jm_addListenerInterface (VirtualKeyboardEventHandler/jm_getInstance) this)
    this))
    
(set jm_onVirtualKeyboardEvent (fn jm_onVirtualKeyboardEvent [this _virtualKeyboardEvent]
    nil))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        ((get GameAdStateBase/jproto :jm_onEvent) this _eventObject)))

(set jproto (table/setproto @{:jm_onVirtualKeyboardEvent jm_onVirtualKeyboardEvent :jm_onEvent jm_onEvent} GameAdStateBase/jproto))


