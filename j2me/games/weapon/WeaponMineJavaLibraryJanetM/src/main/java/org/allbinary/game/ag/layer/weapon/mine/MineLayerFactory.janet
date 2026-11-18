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
# package org.allbinary.game.ag.layer.weapon.mine

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MineLayer/jnew_1 [& args] (JR/call jfile "./MineLayer" "jnew_1" args))

# Java class MineLayerFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstance nil)

    
(set jnew_1 (fn jnew_1 [_viewPositionFactoryInterface]
    (var this (table/setproto @{:jclass "MineLayerFactory" :f_viewPositionFactoryInterface nil} jproto))
    
        (set (this :f_viewPositionFactoryInterface) _viewPositionFactoryInterface)
    this))
    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (MineLayer/jnew_1 (:jm_getInstance (this :f_viewPositionFactoryInterface)))))))

(set jproto @{:jm_getInstance jm_getInstance})


