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
# package org.allbinary.game.terrain

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- TerrainEvent/jnew_1 [& args] (JR/call jfile "./TerrainEvent" "jnew_1" args))

# Java class TerrainEventFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TerrainEventFactory"} jproto))
    this))
    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (TerrainEvent/jnew_1 ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))))

(set jproto @{:jm_getInstance jm_getInstance})


