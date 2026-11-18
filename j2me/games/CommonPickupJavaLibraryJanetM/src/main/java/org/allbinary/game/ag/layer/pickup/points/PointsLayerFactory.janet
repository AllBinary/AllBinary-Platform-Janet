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
# package org.allbinary.game.ag.layer.pickup.points

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointsLayer/jnew_1 [& args] (JR/call jfile "./PointsLayer" "jnew_1" args))

# Java class PointsLayerFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstance nil)

    
(set jnew_1 (fn jnew_1 [_points]
    (var this (table/setproto @{:jclass "PointsLayerFactory" :f_points 0} jproto))
    
        (set (this :f_points) _points)
    this))
    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (PointsLayer/jnew_1 (this :f_points))))))

(set jproto @{:jm_getInstance jm_getInstance})


