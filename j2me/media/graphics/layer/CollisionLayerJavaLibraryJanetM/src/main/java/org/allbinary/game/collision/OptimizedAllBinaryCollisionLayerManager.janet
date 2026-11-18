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
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/layer/LayerManager :as LayerManager)
(defn- LayerManagerNoDebug/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/layer/LayerManagerNoDebug" "jm_getInstance" args))

# Java class OptimizedAllBinaryCollisionLayerManager
(var jproto nil)
(var jnew_0 nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OptimizedAllBinaryCollisionLayerManager"} jproto))
        (JR/superInit this (LayerManager/jnew_1 (LayerManagerNoDebug/jm_getInstance)))
    this))

(set jproto (table/setproto @{} LayerManager/jproto))


