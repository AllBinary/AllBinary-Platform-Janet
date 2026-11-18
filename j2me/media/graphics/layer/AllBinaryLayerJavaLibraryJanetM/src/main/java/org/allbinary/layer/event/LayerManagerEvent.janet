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
# package org.allbinary.layer.event

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class LayerManagerEvent
(var jproto nil)
(var jnew_2 nil)
(var jm_getLayerInterface nil)
(var jm_setLayerInterface nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_layerManager _crud]
    (var this (table/setproto @{:jclass "LayerManagerEvent" :f_layerInterface nil :f_crud nil} jproto))
    (put this :f_layerInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
    
        (JR/superInit this (AllBinaryEventObject/jnew_1 _layerManager))
        (set (this :f_crud) _crud)
    this))
    
(set jm_getLayerInterface (fn jm_getLayerInterface [this]
    (label jreturn
        (return jreturn (this :f_layerInterface)))))
    
(set jm_setLayerInterface (fn jm_setLayerInterface [this _layerInterface]
        (set (this :f_layerInterface) _layerInterface)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "LayerManagerEvent: \n")
        (:jm_append _stringBuffer "LayerInterface: ")
        (:jm_append _stringBuffer (:jm_toString (:jm_getLayerInterface this)))
        (:jm_append _stringBuffer "\nCRUD: ")
        (:jm_append _stringBuffer (this :f_crud))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_getLayerInterface jm_getLayerInterface :jm_setLayerInterface jm_setLayerInterface :jm_toString jm_toString} AllBinaryEventObject/jproto))


