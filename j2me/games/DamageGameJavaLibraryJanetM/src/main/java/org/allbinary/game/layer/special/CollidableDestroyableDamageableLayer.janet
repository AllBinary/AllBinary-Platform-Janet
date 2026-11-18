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
# package org.allbinary.game.layer.special

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CollidableNeverCollideBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory" "jm_getInstance" args))
(defn- BasicGroupFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/identification/BasicGroupFactory" "jm_getInstance" args))
(defn- AllBinaryGameLayerManager/jm_getNullInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" "jm_getNullInstance" args))
(import ../../../../../org/allbinary/game/layer/CollidableCompositeLayer :as CollidableCompositeLayer)
(defn- PickupBehavior/jm_getNullInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/pickup/PickupBehavior" "jm_getNullInstance" args))
(defn- PartInterfaceUtil/jm_getZeroArray [& args] (JR/call jfile "../../../../../org/allbinary/game/part/PartInterfaceUtil" "jm_getZeroArray" args))
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- PositionStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/PositionStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- ViewPositionBase/jstatic_NULL_VIEW_POSITION [& args] (JR/call jfile "../../../../../org/allbinary/view/ViewPositionBase" "jstatic_NULL_VIEW_POSITION" args))

# Java class CollidableDestroyableDamageableLayer
(var jproto nil)
(var jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER :jnone)
(var jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER nil)
(var jsetstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER nil)
(var jcell_READYFOREXPLOSION :jnone)
(var jstatic_READYFOREXPLOSION nil)
(var jsetstatic_READYFOREXPLOSION nil)
(var jnew_4 nil)
(var jm_getNullInstance nil)
(var jm_initPosition nil)
(var jm_initPositionXYZ nil)
(var jm_paint nil)
(var jm_damage nil)
(var jm_getDamage nil)
(var jm_isDestroyed nil)
(var jm_getGroupInterface nil)
(var jm_setGroupInterface nil)
(var jm_setAllBinaryGameLayerManager nil)
(var jm_isReadyForExplosion nil)
(var jm_setReadyForExplosion nil)
(var jm_getInitWidth nil)
(var jm_getInitHeight nil)
(var jm_getInitX nil)
(var jm_getInitY nil)
(var jm_up nil)
(var jm_down nil)
(var jm_right nil)
(var jm_left nil)
(var jm_strafeLeft nil)
(var jm_strafeRight nil)
(var jm_fire nil)
(var jm_special1 nil)
(var jm_special2 nil)
(var jm_special3 nil)
(var jm_special4 nil)
(var jm_special5 nil)
(var jm_upAnalog nil)
(var jm_downAnalog nil)
(var jm_rightAnalog nil)
(var jm_leftAnalog nil)
(var jm_rightTrigger nil)
(var jm_leftTrigger nil)
(var jm_onDestroyed nil)
(var jm_getPickupBehavior nil)
(var jm_setPickupBehavior nil)
(var jm_addPart nil)
(var jm_setPartInterfaceArray nil)
(var jm_getPartInterfaceArray nil)
(var jm_toStringAppend nil)
(var jm_toString nil)

(set jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (fn jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER []
  (when (= jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER :jnone) (set jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER))
(set jsetstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (fn jsetstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER [value] (set jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER value)))

(set jstatic_READYFOREXPLOSION (fn jstatic_READYFOREXPLOSION []
  (when (= jcell_READYFOREXPLOSION :jnone) (set jcell_READYFOREXPLOSION "ReadyForExplosion: "))
  jcell_READYFOREXPLOSION))
(set jsetstatic_READYFOREXPLOSION (fn jsetstatic_READYFOREXPLOSION [value] (set jcell_READYFOREXPLOSION value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (jnew_4 ((BasicGroupFactory/jm_getInstance) :f_NONE_ARRAY) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (RectangleFactory/jstatic_SINGLETON) (ViewPositionBase/jstatic_NULL_VIEW_POSITION)))))
        (return jreturn (jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)))))
    
(set jnew_4 (fn jnew_4 [_groupInterface _name _layerInfo _viewPosition]
    (var this (table/setproto @{:jclass "CollidableDestroyableDamageableLayer" :f_groupInterface nil :f_readyForExplosion false :f_initWidth 0 :f_initHeight 0 :f_initX 0 :f_initY 0 :f_initZ 0 :f_partInterfaceArrayP nil :f_pickupBehavior nil :f_allBinaryGameLayerManagerP nil :f_isDraggable false :f_isDragged false :f_isDropped false} jproto))
    
    
    
    
    
    
    
    (put this :f_partInterfaceArrayP (PartInterfaceUtil/jm_getZeroArray))
    
    (put this :f_allBinaryGameLayerManagerP (AllBinaryGameLayerManager/jm_getNullInstance))
    (put this :f_isDraggable false)
    (put this :f_isDragged false)
    (put this :f_isDropped false)
        (JR/superInit this (CollidableCompositeLayer/jnew_4 _name _layerInfo _viewPosition (CollidableNeverCollideBehaviorFactory/jm_getInstance)))
        (set (this :f_initWidth) (:jm_getWidth _layerInfo))
        (set (this :f_initHeight) (:jm_getHeight _layerInfo))
        (set (this :f_groupInterface) _groupInterface)
        (set (this :f_pickupBehavior) (PickupBehavior/jm_getNullInstance))
    this))
    
(set jm_initPosition (fn jm_initPosition [this]
        (:jm_setPosition this (this :f_initX) (this :f_initY) (this :f_initZ))))
    
(set jm_initPositionXYZ (fn jm_initPositionXYZ [this _x _y _z]
        (set (this :f_initX) _x)
        (set (this :f_initY) _y)
        (set (this :f_initZ) _z)))
    
(set jm_paint (fn jm_paint [this _graphics]
        ((get CollidableCompositeLayer/jproto :jm_paint) this _graphics)))
    
(set jm_damage (fn jm_damage [this _damage _damageType]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_getDamage (fn jm_getDamage [this _damageType]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_isDestroyed (fn jm_isDestroyed [this]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_getGroupInterface (fn jm_getGroupInterface [this]
    (label jreturn
        (return jreturn (this :f_groupInterface)))))
    
(set jm_setGroupInterface (fn jm_setGroupInterface [this _teamInterface]
        (set (this :f_groupInterface) _teamInterface)))
    
(set jm_setAllBinaryGameLayerManager (fn jm_setAllBinaryGameLayerManager [this _allBinaryGameLayerManager]
        (set (this :f_allBinaryGameLayerManagerP) _allBinaryGameLayerManager)
        (if (nil? (this :f_allBinaryGameLayerManagerP))
            (do
            (error (JR/newException "RuntimeException"))))))
    
(set jm_isReadyForExplosion (fn jm_isReadyForExplosion [this]
    (label jreturn
        (return jreturn (this :f_readyForExplosion)))))
    
(set jm_setReadyForExplosion (fn jm_setReadyForExplosion [this _isReadyForExplosion]
        (set (this :f_readyForExplosion) _isReadyForExplosion)))
    
(set jm_getInitWidth (fn jm_getInitWidth [this]
    (label jreturn
        (return jreturn (this :f_initWidth)))))
    
(set jm_getInitHeight (fn jm_getInitHeight [this]
    (label jreturn
        (return jreturn (this :f_initHeight)))))
    
(set jm_getInitX (fn jm_getInitX [this]
    (label jreturn
        (return jreturn (this :f_initX)))))
    
(set jm_getInitY (fn jm_getInitY [this]
    (label jreturn
        (return jreturn (this :f_initY)))))
    
(set jm_up (fn jm_up [this]
    nil))
    
(set jm_down (fn jm_down [this]
    nil))
    
(set jm_right (fn jm_right [this]
    nil))
    
(set jm_left (fn jm_left [this]
    nil))
    
(set jm_strafeLeft (fn jm_strafeLeft [this]
    nil))
    
(set jm_strafeRight (fn jm_strafeRight [this]
    nil))
    
(set jm_fire (fn jm_fire [this _layerManager _gameKeyEvent]
    nil))
    
(set jm_special1 (fn jm_special1 [this _layerManager _gameKeyEvent]
    nil))
    
(set jm_special2 (fn jm_special2 [this _layerManager _gameKeyEvent]
    nil))
    
(set jm_special3 (fn jm_special3 [this _layerManager _gameKeyEvent]
    nil))
    
(set jm_special4 (fn jm_special4 [this _layerManager _gameKeyEvent]
    nil))
    
(set jm_special5 (fn jm_special5 [this _layerManager _gameKeyEvent]
    nil))
    
(set jm_upAnalog (fn jm_upAnalog [this _yAnalogValue]
    nil))
    
(set jm_downAnalog (fn jm_downAnalog [this _yAnalogValue]
    nil))
    
(set jm_rightAnalog (fn jm_rightAnalog [this _xAnalogValue]
    nil))
    
(set jm_leftAnalog (fn jm_leftAnalog [this _xAnalogValue]
    nil))
    
(set jm_rightTrigger (fn jm_rightTrigger [this _layerManager _gameKeyEvent _xAnalogValue]
    nil))
    
(set jm_leftTrigger (fn jm_leftTrigger [this _layerManager _gameKeyEvent _xAnalogValue]
    nil))
    
(set jm_onDestroyed (fn jm_onDestroyed [this _destroyedEvent]
    nil))
    
(set jm_getPickupBehavior (fn jm_getPickupBehavior [this]
    (label jreturn
        (return jreturn (this :f_pickupBehavior)))))
    
(set jm_setPickupBehavior (fn jm_setPickupBehavior [this _pickupBehavior]
        (set (this :f_pickupBehavior) _pickupBehavior)))
    
(set jm_addPart (fn jm_addPart [this _pickedUpLayerInterfaceFactoryInterface]
    nil))
    
(set jm_setPartInterfaceArray (fn jm_setPartInterfaceArray [this _partInterfaceArray]
        (set (this :f_partInterfaceArrayP) _partInterfaceArray)))
    
(set jm_getPartInterfaceArray (fn jm_getPartInterfaceArray [this]
    (label jreturn
        (return jreturn (this :f_partInterfaceArrayP)))))
    
(set jm_toStringAppend (fn jm_toStringAppend [this _stringBuffer]
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _positionStrings (PositionStrings/jm_getInstance))
        ((get CollidableCompositeLayer/jproto :jm_toStringAppend) this _stringBuffer)
        (:jm_append _stringBuffer (_commonSeps :f_NEW_LINE))
        (var _groupInterfaceArray (:jm_getGroupInterface this))
        (var _size (length _groupInterfaceArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_append _stringBuffer (JR/toString (_groupInterfaceArray _index)))
            (:jm_append _stringBuffer (_commonSeps :f_COMMA)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _pickupBehavior (:jm_getPickupBehavior this))
        (if (not (nil? _pickupBehavior))
            (do
            (:jm_append _stringBuffer (_commonSeps :f_NEW_LINE))
            (:jm_append _stringBuffer (:jm_toString _pickupBehavior))))
        (:jm_append _stringBuffer (_commonSeps :f_NEW_LINE))
        (:jm_append _stringBuffer (jstatic_READYFOREXPLOSION))
        (:jm_appendboolean _stringBuffer (this :f_readyForExplosion))
        (:jm_append _stringBuffer (_commonSeps :f_NEW_LINE))
        (:jm_append _stringBuffer ((this :f_commonStrings) :f_INIT))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_X_LABEL))
        (:jm_appendint _stringBuffer (this :f_initX))
        (:jm_append _stringBuffer (_positionStrings :f_Y_LABEL))
        (:jm_appendint _stringBuffer (this :f_initX))
        (:jm_append _stringBuffer (_positionStrings :f_Z_LABEL))
        (:jm_appendint _stringBuffer (this :f_initZ))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_toStringAppend this _stringBuffer)
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_initPosition jm_initPosition :jm_initPositionXYZ jm_initPositionXYZ :jm_paint jm_paint :jm_damage jm_damage :jm_getDamage jm_getDamage :jm_isDestroyed jm_isDestroyed :jm_getGroupInterface jm_getGroupInterface :jm_setGroupInterface jm_setGroupInterface :jm_setAllBinaryGameLayerManager jm_setAllBinaryGameLayerManager :jm_isReadyForExplosion jm_isReadyForExplosion :jm_setReadyForExplosion jm_setReadyForExplosion :jm_getInitWidth jm_getInitWidth :jm_getInitHeight jm_getInitHeight :jm_getInitX jm_getInitX :jm_getInitY jm_getInitY :jm_up jm_up :jm_down jm_down :jm_right jm_right :jm_left jm_left :jm_strafeLeft jm_strafeLeft :jm_strafeRight jm_strafeRight :jm_fire jm_fire :jm_special1 jm_special1 :jm_special2 jm_special2 :jm_special3 jm_special3 :jm_special4 jm_special4 :jm_special5 jm_special5 :jm_upAnalog jm_upAnalog :jm_downAnalog jm_downAnalog :jm_rightAnalog jm_rightAnalog :jm_leftAnalog jm_leftAnalog :jm_rightTrigger jm_rightTrigger :jm_leftTrigger jm_leftTrigger :jm_onDestroyed jm_onDestroyed :jm_getPickupBehavior jm_getPickupBehavior :jm_setPickupBehavior jm_setPickupBehavior :jm_addPart jm_addPart :jm_setPartInterfaceArray jm_setPartInterfaceArray :jm_getPartInterfaceArray jm_getPartInterfaceArray :jm_toStringAppend jm_toStringAppend :jm_toString jm_toString} CollidableCompositeLayer/jproto))


