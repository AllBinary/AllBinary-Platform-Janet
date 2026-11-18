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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)
(defn- BasicTerrainInfo/jstatic_NULL_BASIC_TERRAIN_INFO [& args] (JR/call jfile "./BasicTerrainInfo" "jstatic_NULL_BASIC_TERRAIN_INFO" args))

# Java class TerrainEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_toString nil)
(var jm_getBasicTerrainInfo nil)
(var jm_setBasicTerrainInfo nil)
(var jm_setBasicTerrainInfoForCircularStaticPool nil)

    
(set jnew_1 (fn jnew_1 [_basicTerrainInfo]
    (var this (table/setproto @{:jclass "TerrainEvent" :f_basicTerrainInfo nil} jproto))
    (put this :f_basicTerrainInfo (BasicTerrainInfo/jstatic_NULL_BASIC_TERRAIN_INFO))
        (JR/superInit this (AllBinaryEventObject/jnew_1 _basicTerrainInfo))
        (:jm_setBasicTerrainInfo this (this :f_basicTerrainInfo))
    this))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "TerrainEvent: \n")
        (:jm_append _stringBuffer "LayerInterface: ")
        (:jm_append _stringBuffer (:jm_toString (this :f_basicTerrainInfo)))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getBasicTerrainInfo (fn jm_getBasicTerrainInfo [this]
    (label jreturn
        (return jreturn (this :f_basicTerrainInfo)))))
    
(set jm_setBasicTerrainInfo (fn jm_setBasicTerrainInfo [this _basicTerrainInfo]
        (set (this :f_basicTerrainInfo) _basicTerrainInfo)))
    
(set jm_setBasicTerrainInfoForCircularStaticPool (fn jm_setBasicTerrainInfoForCircularStaticPool [this _basicTerrainInfo]
        (set (this :f_basicTerrainInfo) _basicTerrainInfo)))

(set jproto (table/setproto @{:jm_toString jm_toString :jm_getBasicTerrainInfo jm_getBasicTerrainInfo :jm_setBasicTerrainInfo jm_setBasicTerrainInfo :jm_setBasicTerrainInfoForCircularStaticPool jm_setBasicTerrainInfoForCircularStaticPool} AllBinaryEventObject/jproto))


