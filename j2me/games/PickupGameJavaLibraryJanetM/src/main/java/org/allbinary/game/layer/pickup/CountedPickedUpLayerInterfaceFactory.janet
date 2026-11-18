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
# package org.allbinary.game.layer.pickup

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./PickedUpLayerInterfaceFactory :as PickedUpLayerInterfaceFactory)
(defn- PickedUpLayerTypeFactory/jm_getInstance [& args] (JR/call jfile "./PickedUpLayerTypeFactory" "jm_getInstance" args))
(defn- IconLayer/jstatic_NULL_ICON_LAYER [& args] (JR/call jfile "./IconLayer" "jstatic_NULL_ICON_LAYER" args))
(defn- CountedPickedUpLayerInterfaceFactoryPool/jm_getInstance [& args] (JR/call jfile "./CountedPickedUpLayerInterfaceFactoryPool" "jm_getInstance" args))

# Java class CountedPickedUpLayerInterfaceFactory
(var jproto nil)
(var jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY :jnone)
(var jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY nil)
(var jsetstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY nil)
(var jnew_3 nil)
(var jm_getNextInstance nil)
(var jm_getTotal nil)
(var jm_getId nil)

(set jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY (fn jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY []
  (when (= jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY :jnone) (set jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY (jnew_3 ((PickedUpLayerTypeFactory/jm_getInstance) :f_NONE) (IconLayer/jstatic_NULL_ICON_LAYER) (JR/className (NullAnimationFactory/jm_getFactoryInstance)))))
  jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY))
(set jsetstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY (fn jsetstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY [value] (set jcell_NULL_COUNTED_PICKUP_LAYER_FACTORY value)))

    
(set jnew_3 (fn jnew_3 [_pickeUpLayerType _iconLayer _animationInterface]
    (var this (table/setproto @{:jclass "CountedPickedUpLayerInterfaceFactory" :f_id 0} jproto))
    
        (JR/superInit this (PickedUpLayerInterfaceFactory/jnew_3 _pickeUpLayerType _iconLayer _animationInterface))
        (var _list (:jm_getList (CountedPickedUpLayerInterfaceFactoryPool/jm_getInstance)))
        (set (this :f_id) (:jm_size _list))
        (:jm_add _list this)
    this))
    
(set jm_getNextInstance (fn jm_getNextInstance [this _hashtable _x _y _z]
        (error (JR/newException "Exception" ((CommonStrings/jm_getInstance) :f_NOT_IMPLEMENTED)))))
    
(set jm_getTotal (fn jm_getTotal [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (this :f_id)))))

(set jproto (table/setproto @{:jm_getNextInstance jm_getNextInstance :jm_getTotal jm_getTotal :jm_getId jm_getId} PickedUpLayerInterfaceFactory/jproto))


