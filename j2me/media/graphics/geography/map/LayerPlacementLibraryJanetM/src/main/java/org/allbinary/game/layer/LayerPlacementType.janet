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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LayerPlacementType
(var jproto nil)
(var jnew_1 nil)
(var jm_getType nil)
(var jm_setType nil)

    
(set jnew_1 (fn jnew_1 [_type]
    (var this (table/setproto @{:jclass "LayerPlacementType" :f_type 0} jproto))
    
        (set (this :f_type) _type)
    this))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (this :f_type)))))
    
(set jm_setType (fn jm_setType [this _type]
        (set (this :f_type) _type)))

(set jproto @{:jm_getType jm_getType :jm_setType jm_setType})


