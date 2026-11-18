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
# package org.allbinary.game.ag.layer.pickup

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- RemoteInfo/jstatic_REMOTE_INFO [& args] (JR/call jfile "../../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" "jstatic_REMOTE_INFO" args))
(defn- FallingPickupLayer/jnew_1 [& args] (JR/call jfile "./FallingPickupLayer" "jnew_1" args))

# Java class FallingPickupLayerFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FallingPickupLayerFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (FallingPickupLayer/jnew_1 (RemoteInfo/jstatic_REMOTE_INFO))))))

(set jproto @{:jm_getInstance jm_getInstance})


