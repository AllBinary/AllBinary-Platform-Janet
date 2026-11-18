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
# package org.allbinary.game.part

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY [& args] (JR/call jfile "../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" "jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PrimitiveLongUtil/jm_createPowerOfTen [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveLongUtil" "jm_createPowerOfTen" args))

# Java class CountedLayerInterfaceFactoryPart
(var jproto nil)
(var jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY :jnone)
(var jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY nil)
(var jsetstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY nil)
(var jnew_2 nil)
(var jm_updateMeasurement nil)
(var jm_init nil)
(var jm_getInstance nil)
(var jm_getTotal nil)
(var jm_setTotal nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_getAnimationInterface nil)
(var jm_setAnimationInterface nil)
(var jm_getXOffset nil)
(var jm_setXOffset nil)
(var jm_getTotalString nil)
(var jm_getCountedPickedUpLayerInterfaceFactory nil)
(var jm_setCountedPickedUpLayerInterfaceFactory nil)

(set jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY (fn jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY []
  (when (= jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY :jnone) (set jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY (jnew_2 0 (CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))))
  jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY))
(set jsetstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY (fn jsetstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY [value] (set jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY value)))

    
(set jnew_2 (fn jnew_2 [_total _countedPickedUpLayerInterfaceFactory]
    (var this (table/setproto @{:jclass "CountedLayerInterfaceFactoryPart" :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_animationInterface nil :f_total 0 :f_totalString nil :f_xOffset 0 :f_countedPickedUpLayerInterfaceFactory nil :f_primitiveLongUtil nil} jproto))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    (put this :f_animationInterface (JR/className (NullAnimationFactory/jm_getFactoryInstance)))
    
    (put this :f_totalString ((NullUtil/jm_getInstance) :f_NULL_CHAR_ARRAY))
    
    (put this :f_countedPickedUpLayerInterfaceFactory (CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))
    
        (set (this :f_primitiveLongUtil) (PrimitiveLongUtil/jm_createPowerOfTen 1000))
        (:jm_init this _total _countedPickedUpLayerInterfaceFactory)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (:jm_setXOffset this (JR/i32 (+ (:jm_charsWidth _font (this :f_totalString) 0 (:jm_getCurrentTotalDigits (this :f_primitiveLongUtil))) (brshift (:jm_getSize _font) 1))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_init (fn jm_init [this _total _countedPickedUpLayerInterfaceFactory]
        (:jm_setCountedPickedUpLayerInterfaceFactory this _countedPickedUpLayerInterfaceFactory)
        (set (this :f_total) _total)))
    
(set jm_getInstance (fn jm_getInstance [this _hashtable _x _y _z]
    (label jreturn
        (if (> (this :f_total) 0)
            (do
            (:jm_setTotal this (JR/i32 (- (this :f_total) 1)))
            (return jreturn (:jm_getNextInstance (:jm_getCountedPickedUpLayerInterfaceFactory this) _hashtable _x _y _z)))
            (do
            (error (JR/newException "Exception" "No more left. Could use a listener to automatically remove")))))))
    
(set jm_getTotal (fn jm_getTotal [this]
    (label jreturn
        (return jreturn (this :f_total)))))
    
(set jm_setTotal (fn jm_setTotal [this _total]
        (set (this :f_total) _total)
        (set (this :f_totalString) (:jm_getCharArray (this :f_primitiveLongUtil) _total))
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))
    
(set jm_getAnimationInterface (fn jm_getAnimationInterface [this]
    (label jreturn
        (return jreturn (this :f_animationInterface)))))
    
(set jm_setAnimationInterface (fn jm_setAnimationInterface [this _animationInterface]
        (set (this :f_animationInterface) _animationInterface)))
    
(set jm_getXOffset (fn jm_getXOffset [this]
    (label jreturn
        (return jreturn (this :f_xOffset)))))
    
(set jm_setXOffset (fn jm_setXOffset [this _totalStringWidth]
        (set (this :f_xOffset) _totalStringWidth)))
    
(set jm_getTotalString (fn jm_getTotalString [this]
    (label jreturn
        (return jreturn (this :f_totalString)))))
    
(set jm_getCountedPickedUpLayerInterfaceFactory (fn jm_getCountedPickedUpLayerInterfaceFactory [this]
    (label jreturn
        (return jreturn (this :f_countedPickedUpLayerInterfaceFactory)))))
    
(set jm_setCountedPickedUpLayerInterfaceFactory (fn jm_setCountedPickedUpLayerInterfaceFactory [this _countedPickedUpLayerInterfaceFactory]
        (set (this :f_countedPickedUpLayerInterfaceFactory) _countedPickedUpLayerInterfaceFactory)))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement :jm_init jm_init :jm_getInstance jm_getInstance :jm_getTotal jm_getTotal :jm_setTotal jm_setTotal :jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_getAnimationInterface jm_getAnimationInterface :jm_setAnimationInterface jm_setAnimationInterface :jm_getXOffset jm_getXOffset :jm_setXOffset jm_setXOffset :jm_getTotalString jm_getTotalString :jm_getCountedPickedUpLayerInterfaceFactory jm_getCountedPickedUpLayerInterfaceFactory :jm_setCountedPickedUpLayerInterfaceFactory jm_setCountedPickedUpLayerInterfaceFactory})


