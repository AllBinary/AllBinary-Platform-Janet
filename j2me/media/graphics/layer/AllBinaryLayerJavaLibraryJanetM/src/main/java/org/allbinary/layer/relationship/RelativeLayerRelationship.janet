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
(import ../../../../org/allbinary/graphics/RelativeRelationship :as RelativeRelationship)
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))

# Java class RelativeLayerRelationship
(var jproto nil)
(var jnew_3 nil)
(var jm_getX nil)
(var jm_getY nil)
(var jm_getZ nil)

    
(set jnew_3 (fn jnew_3 [_layer _point _typesAllowedList]
    (var this (table/setproto @{:jclass "RelativeLayerRelationship" :f_layer nil} jproto))
    (put this :f_layer (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
        (JR/superInit this (RelativeRelationship/jnew_2 _point _typesAllowedList))
        (set (this :f_layer) _layer)
    this))
    
(set jm_getX (fn jm_getX [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getXP (this :f_layer)) ((get RelativeRelationship/jproto :jm_getX) this)))))))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getYP (this :f_layer)) ((get RelativeRelationship/jproto :jm_getY) this)))))))
    
(set jm_getZ (fn jm_getZ [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getZP (this :f_layer)) ((get RelativeRelationship/jproto :jm_getZ) this)))))))

(set jproto (table/setproto @{:jm_getX jm_getX :jm_getY jm_getY :jm_getZ jm_getZ} RelativeRelationship/jproto))


