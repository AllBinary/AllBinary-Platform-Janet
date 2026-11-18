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
# package org.allbinary.game.tracking

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)
(defn- TrackingEventHandler/jm_getInstance [& args] (JR/call jfile "./TrackingEventHandler" "jm_getInstance" args))

# Java class TrackingEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_init nil)
(var jm_getLayerInterface nil)
(var jm_setLayerInterface nil)
(var jm_setLayerInterfaceForCircularStaticPool nil)
(var jm_toString nil)

    
(set jnew_1 (fn jnew_1 [_allBinaryLayerInterface]
    (var this (table/setproto @{:jclass "TrackingEvent" :f_layerInterface nil} jproto))
    (put this :f_layerInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
        (JR/superInit this (AllBinaryEventObject/jnew_1 _allBinaryLayerInterface))
        (if (not= _allBinaryLayerInterface (TrackingEventHandler/jm_getInstance))
            (do
            (:jm_setLayerInterface this _allBinaryLayerInterface)))
    this))
    
(set jm_init (fn jm_init [this _anyType]
        (:jm_setSource this _anyType)))
    
(set jm_getLayerInterface (fn jm_getLayerInterface [this]
    (label jreturn
        (return jreturn (this :f_layerInterface)))))
    
(set jm_setLayerInterface (fn jm_setLayerInterface [this _layerInterface]
        (set (this :f_layerInterface) _layerInterface)))
    
(set jm_setLayerInterfaceForCircularStaticPool (fn jm_setLayerInterfaceForCircularStaticPool [this _layerInterface]
        (set (this :f_layerInterface) _layerInterface)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "TrackingEvent: \n")
        (:jm_append _stringBuffer "LayerInterface: ")
        (:jm_append _stringBuffer (:jm_toString (this :f_layerInterface)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_getLayerInterface jm_getLayerInterface :jm_setLayerInterface jm_setLayerInterface :jm_setLayerInterfaceForCircularStaticPool jm_setLayerInterfaceForCircularStaticPool :jm_toString jm_toString} AllBinaryEventObject/jproto))


