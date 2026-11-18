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
# package org.allbinary.layer.relationship

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ./RelativeLayerRelationship :as RelativeLayerRelationship)

# Java class MiddleRelativeLayerRelationship
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_layer]
    (var this (table/setproto @{:jclass "MiddleRelativeLayerRelationship"} jproto))
        (JR/superInit this (RelativeLayerRelationship/jnew_3 _layer (:jm_createXY (PointFactory/jm_getInstance) (:jm_getHalfWidth _layer) (:jm_getHalfHeight _layer)) (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance))))
    this))

(set jproto (table/setproto @{} RelativeLayerRelationship/jproto))


