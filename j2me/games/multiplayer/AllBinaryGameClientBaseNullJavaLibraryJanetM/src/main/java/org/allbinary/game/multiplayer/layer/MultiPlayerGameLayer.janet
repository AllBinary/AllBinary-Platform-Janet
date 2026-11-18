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
# package org.allbinary.game.multiplayer.layer

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer :as CollidableDestroyableDamageableLayer)
(defn- MultiplayerBehavior/jstatic_NULL_MULTIPLAYER_BEHAVIOR [& args] (JR/call jfile "./MultiplayerBehavior" "jstatic_NULL_MULTIPLAYER_BEHAVIOR" args))

# Java class MultiPlayerGameLayer
(var jproto nil)
(var jnew_5 nil)
(var jm_getMultiplayerBehavior nil)
(var jm_setPingInfo nil)
(var jm_setFiring nil)
(var jm_getFiring nil)

    
(set jnew_5 (fn jnew_5 [_remoteInfo _groupInterface _name _layerInfo _viewPosition]
    (var this (table/setproto @{:jclass "MultiPlayerGameLayer"} jproto))
        (JR/superInit this (CollidableDestroyableDamageableLayer/jnew_4 _groupInterface _name _layerInfo _viewPosition))
    this))
    
(set jm_getMultiplayerBehavior (fn jm_getMultiplayerBehavior [this]
    (label jreturn
        (return jreturn (MultiplayerBehavior/jstatic_NULL_MULTIPLAYER_BEHAVIOR)))))
    
(set jm_setPingInfo (fn jm_setPingInfo [this _show]
    nil))
    
(set jm_setFiring (fn jm_setFiring [this _firing]
    nil))
    
(set jm_getFiring (fn jm_getFiring [this]
    (label jreturn
        (return jreturn 0))))

(set jproto (table/setproto @{:jm_getMultiplayerBehavior jm_getMultiplayerBehavior :jm_setPingInfo jm_setPingInfo :jm_setFiring jm_setFiring :jm_getFiring jm_getFiring} CollidableDestroyableDamageableLayer/jproto))


