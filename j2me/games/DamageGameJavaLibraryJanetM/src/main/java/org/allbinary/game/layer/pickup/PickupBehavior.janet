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
(defn- CollidableCompositeLayer/jm_getNullInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" "jm_getNullInstance" args))
(defn- CountedLayerInterfaceFactoryPart/jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY [& args] (JR/call jfile "../../../../../org/allbinary/game/part/CountedLayerInterfaceFactoryPart" "jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- PickedUpLayerTypeFactory/jm_getInstance [& args] (JR/call jfile "./PickedUpLayerTypeFactory" "jm_getInstance" args))

# Java class PickupBehavior
(var jproto nil)
(var jcell_NULL_PICKUP_BEHAVIOR :jnone)
(var jstatic_NULL_PICKUP_BEHAVIOR nil)
(var jsetstatic_NULL_PICKUP_BEHAVIOR nil)
(var jnew_2 nil)
(var jm_getNullInstance nil)
(var jm_doPickup nil)
(var jm_doPickupLayer nil)
(var jm_add nil)
(var jm_addAt nil)
(var jm_getFirstAvailableCountedLayerInterfaceFactory nil)
(var jm_getCountedLayerInterfaceFactoryForSlot nil)
(var jm_getCountedIndex nil)

(set jstatic_NULL_PICKUP_BEHAVIOR (fn jstatic_NULL_PICKUP_BEHAVIOR []
  (when (= jcell_NULL_PICKUP_BEHAVIOR :jnone) (set jcell_NULL_PICKUP_BEHAVIOR ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_PICKUP_BEHAVIOR))
(set jsetstatic_NULL_PICKUP_BEHAVIOR (fn jsetstatic_NULL_PICKUP_BEHAVIOR [value] (set jcell_NULL_PICKUP_BEHAVIOR value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_NULL_PICKUP_BEHAVIOR) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_PICKUP_BEHAVIOR (jnew_2 (CollidableCompositeLayer/jm_getNullInstance) 0))))
        (return jreturn (jstatic_NULL_PICKUP_BEHAVIOR)))))
    
(set jnew_2 (fn jnew_2 [_ownerLayerInterface _countedIndex]
    (var this (table/setproto @{:jclass "PickupBehavior" :f_logUtil nil :f_countedIndex 0 :f_ownerLayerInterface nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
        (set (this :f_ownerLayerInterface) _ownerLayerInterface)
        (set (this :f_countedIndex) _countedIndex)
    this))
    
(set jm_doPickup (fn jm_doPickup [this _pickupProcessorInterface]
        (try
            (do
            (var _healthInterfaceCompositeInterface (this :f_ownerLayerInterface))
            (if (JR/className (:jm_getHealthInterface _healthInterfaceCompositeInterface))
                (do
                (:jm_process _pickupProcessorInterface (this :f_ownerLayerInterface)))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "doPickup" _e))))))
    
(set jm_doPickupLayer (fn jm_doPickupLayer [this _pickupLayerInterface]
        (try
            (do
            (var _pickedUpLayerInterfaceFactoryInterface (:jm_getPickedUpLayerInterfaceFactoryInterface _pickupLayerInterface))
            (var _pickedUpLayerType (:jm_getPickedUpLayerType _pickedUpLayerInterfaceFactoryInterface))
            (var _pickedUpLayerTypeFactory (PickedUpLayerTypeFactory/jm_getInstance))
            (if (or (or (or (= _pickedUpLayerType (_pickedUpLayerTypeFactory :f_BEAM)) (= _pickedUpLayerType (_pickedUpLayerTypeFactory :f_MINE))) (= _pickedUpLayerType (_pickedUpLayerTypeFactory :f_PROJECTILE))) (= _pickedUpLayerType (_pickedUpLayerTypeFactory :f_ENHANCEMENT)))
                (do
                (:jm_add this _pickedUpLayerInterfaceFactoryInterface))
                (if (= (:jm_getPickedUpLayerType _pickedUpLayerInterfaceFactoryInterface) (_pickedUpLayerTypeFactory :f_PART))
                (do
                (var _collidableDestroyableDamageableLayer (this :f_ownerLayerInterface))
                (:jm_addPart _collidableDestroyableDamageableLayer _pickedUpLayerInterfaceFactoryInterface))
                (if (= _pickedUpLayerType (_pickedUpLayerTypeFactory :f_NONE))
                (do
                nil)
                (do
                (var _pickupProcessorInterface _pickedUpLayerInterfaceFactoryInterface)
                (:jm_doPickup this _pickupProcessorInterface)))))
            (:jm_setPickedUp _pickupLayerInterface))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_putOE (_commonStrings :f_EXCEPTION) this "doPickup" _e))))))
    
(set jm_add (fn jm_add [this _countedPickedUpLayerInterfaceFactoryInterface]
        (var _partIndex (JR/i32 (+ (:jm_getId _countedPickedUpLayerInterfaceFactoryInterface) (this :f_countedIndex))))
        (:jm_addAt this _countedPickedUpLayerInterfaceFactoryInterface _partIndex)))
    
(set jm_addAt (fn jm_addAt [this _countedPickedUpLayerInterfaceFactoryInterface _partIndex]
        (var _collidableDestroyableDamageableLayer (this :f_ownerLayerInterface))
        (var _countedLayerInterfaceFactory ((:jm_getPartInterfaceArray _collidableDestroyableDamageableLayer) _partIndex))
        (:jm_setTotal _countedLayerInterfaceFactory (JR/i32 (+ (:jm_getTotal _countedLayerInterfaceFactory) (:jm_getTotal _countedPickedUpLayerInterfaceFactoryInterface))))))
    
(set jm_getFirstAvailableCountedLayerInterfaceFactory (fn jm_getFirstAvailableCountedLayerInterfaceFactory [this _pickedUpLayerTypeArray]
    (label jreturn
        (var _collidableDestroyableDamageableLayer (this :f_ownerLayerInterface))
        (var _partInterfaceArray (:jm_getPartInterfaceArray _collidableDestroyableDamageableLayer))
        (var _size (length _partInterfaceArray))
        (var _nextCountedLayerInterfaceFactory nil)
        (var _countedPickedUpLayerInterfaceFactory nil)
        (do
            (var _index (this :f_countedIndex))
            (while (< _index _size)
                (do
            (set _nextCountedLayerInterfaceFactory ((:jm_getPartInterfaceArray _collidableDestroyableDamageableLayer) _index))
            (set _countedPickedUpLayerInterfaceFactory (:jm_getCountedPickedUpLayerInterfaceFactory _nextCountedLayerInterfaceFactory))
            (do
                (var _index2 (length _pickedUpLayerTypeArray))
                (while (>= (set _index2 (JR/i32 (- _index2 1))) 0)
                    (do
                (if (= (:jm_getPickedUpLayerType _countedPickedUpLayerInterfaceFactory) (_pickedUpLayerTypeArray _index2))
                    (do
                    (if (> (:jm_getTotal _nextCountedLayerInterfaceFactory) 0)
                        (do
                        (return jreturn _nextCountedLayerInterfaceFactory)))))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (CountedLayerInterfaceFactoryPart/jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)))))
    
(set jm_getCountedLayerInterfaceFactoryForSlot (fn jm_getCountedLayerInterfaceFactoryForSlot [this _slotIndex]
    (label jreturn
        (var _currentSlot 0)
        (var _collidableDestroyableDamageableLayer (this :f_ownerLayerInterface))
        (var _partInterfaceArray (:jm_getPartInterfaceArray _collidableDestroyableDamageableLayer))
        (var _size (length _partInterfaceArray))
        (var _nextCountedLayerInterfaceFactory nil)
        (do
            (var _index (this :f_countedIndex))
            (while (< _index _size)
                (do
            (set _nextCountedLayerInterfaceFactory ((:jm_getPartInterfaceArray _collidableDestroyableDamageableLayer) _index))
            (if (> (:jm_getTotal _nextCountedLayerInterfaceFactory) 0)
                (do
                (if (= _currentSlot _slotIndex)
                    (do
                    (return jreturn _nextCountedLayerInterfaceFactory))
                    (do
                    (set _currentSlot (JR/i32 (+ _currentSlot 1))))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (CountedLayerInterfaceFactoryPart/jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY)))))
    
(set jm_getCountedIndex (fn jm_getCountedIndex [this]
    (label jreturn
        (return jreturn (this :f_countedIndex)))))

(set jproto @{:jm_doPickup jm_doPickup :jm_doPickupLayer jm_doPickupLayer :jm_add jm_add :jm_addAt jm_addAt :jm_getFirstAvailableCountedLayerInterfaceFactory jm_getFirstAvailableCountedLayerInterfaceFactory :jm_getCountedLayerInterfaceFactoryForSlot jm_getCountedLayerInterfaceFactoryForSlot :jm_getCountedIndex jm_getCountedIndex})


