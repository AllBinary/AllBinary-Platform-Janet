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
# package org.allbinary.game.combat.destroy.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullGameCanvas/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/displayable/canvas/NullGameCanvas" "jm_getInstance" args))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)
(defn- DestroyedEventHandler/jm_getInstance [& args] (JR/call jfile "./DestroyedEventHandler" "jm_getInstance" args))

# Java class DestroyedEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_getAllBinaryGameCanvas nil)
(var jm_getLayerInterface nil)
(var jm_setAllBinaryGameCanvas nil)
(var jm_setLayerInterfaceForCircularStaticPool nil)
(var jm_toString nil)

    
(set jnew_1 (fn jnew_1 [_combatGameCanvas]
    (var this (table/setproto @{:jclass "DestroyedEvent" :f_allBinaryGameCanvas nil :f_allBinaryLayerInterface nil} jproto))
    (put this :f_allBinaryGameCanvas (NullGameCanvas/jm_getInstance))
    (put this :f_allBinaryLayerInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
        (JR/superInit this (AllBinaryEventObject/jnew_1 (DestroyedEventHandler/jm_getInstance)))
        (:jm_setAllBinaryGameCanvas this _combatGameCanvas)
    this))
    
(set jm_getAllBinaryGameCanvas (fn jm_getAllBinaryGameCanvas [this]
    (label jreturn
        (return jreturn (this :f_allBinaryGameCanvas)))))
    
(set jm_getLayerInterface (fn jm_getLayerInterface [this]
    (label jreturn
        (return jreturn (this :f_allBinaryLayerInterface)))))
    
(set jm_setAllBinaryGameCanvas (fn jm_setAllBinaryGameCanvas [this _allBinaryGameCanvas]
        (set (this :f_allBinaryGameCanvas) _allBinaryGameCanvas)))
    
(set jm_setLayerInterfaceForCircularStaticPool (fn jm_setLayerInterfaceForCircularStaticPool [this _allBinaryLayerInterface]
        (set (this :f_allBinaryLayerInterface) _allBinaryLayerInterface)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "DestroyedEvent: \n")
        (:jm_append _stringBuffer "AllBinaryLayerInterface: ")
        (:jm_append _stringBuffer (:jm_toString (this :f_allBinaryLayerInterface)))
        (:jm_append _stringBuffer "\nAllBinaryGameCanvas: ")
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getAllBinaryGameCanvas this)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_getAllBinaryGameCanvas jm_getAllBinaryGameCanvas :jm_getLayerInterface jm_getLayerInterface :jm_setAllBinaryGameCanvas jm_setAllBinaryGameCanvas :jm_setLayerInterfaceForCircularStaticPool jm_setLayerInterfaceForCircularStaticPool :jm_toString jm_toString} AllBinaryEventObject/jproto))


