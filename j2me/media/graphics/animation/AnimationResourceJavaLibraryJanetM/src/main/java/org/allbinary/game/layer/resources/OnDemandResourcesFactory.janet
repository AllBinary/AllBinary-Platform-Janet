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
# package org.allbinary.game.layer.resources

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- OnDemandResources/jstatic_NULL_ON_DEMAND_RESOURCES [& args] (JR/call jfile "./OnDemandResources" "jstatic_NULL_ON_DEMAND_RESOURCES" args))

# Java class OnDemandResourcesFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_size nil)
(var jm_remove nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OnDemandResourcesFactory"} jproto))
    this))

    
(set jm_size (fn jm_size [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_remove (fn jm_remove [this _layerId]
    (label jreturn
        (return jreturn (OnDemandResources/jstatic_NULL_ON_DEMAND_RESOURCES)))))

(set jproto @{:jm_size jm_size :jm_remove jm_remove})


