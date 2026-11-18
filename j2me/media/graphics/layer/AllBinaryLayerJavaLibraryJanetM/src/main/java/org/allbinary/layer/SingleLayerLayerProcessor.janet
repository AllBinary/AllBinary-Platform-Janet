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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./LayerProcessor :as LayerProcessor)
(defn- SingleLayerLayerManager/jnew_0 [& args] (JR/call jfile "./SingleLayerLayerManager" "jnew_0" args))

# Java class SingleLayerLayerProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SingleLayerLayerProcessor"} jproto))
        (JR/superInit this (LayerProcessor/jnew_1 (SingleLayerLayerManager/jnew_0)))
    this))
    
(set jm_process (fn jm_process [this _allBinaryLayerManager]
        (var _layerManager (:jm_getLayerManager this))
        (:jm_processAt this _allBinaryLayerManager (:jm_getLayerAt _layerManager 0) 0)))

(set jproto (table/setproto @{:jm_process jm_process} LayerProcessor/jproto))


