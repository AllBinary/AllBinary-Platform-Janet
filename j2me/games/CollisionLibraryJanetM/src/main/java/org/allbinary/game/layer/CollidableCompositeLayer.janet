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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ArtificialIntelligence/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/ai/ArtificialIntelligence" "jm_getInstance" args))
(defn- CollidableNeverCollideBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory" "jm_getInstance" args))
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- ViewPositionBase/jstatic_NULL_VIEW_POSITION [& args] (JR/call jfile "../../../../org/allbinary/view/ViewPositionBase" "jstatic_NULL_VIEW_POSITION" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(import ./AllBinaryGameLayer :as AllBinaryGameLayer)

# Java class CollidableCompositeLayer
(var jproto nil)
(var jcell_NULL_COLLIDABLE_COMPOSITE_LAYER :jnone)
(var jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER nil)
(var jsetstatic_NULL_COLLIDABLE_COMPOSITE_LAYER nil)
(var jnew_4 nil)
(var jm_getNullInstance nil)
(var jm_getArtificialIntelligenceInterface nil)
(var jm_getCollidableInferface nil)
(var jm_setCollidableInferface nil)
(var jm_implmentsCollidableInterface nil)
(var jm_toStringAppend nil)
(var jm_toString nil)

(set jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER (fn jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER []
  (when (= jcell_NULL_COLLIDABLE_COMPOSITE_LAYER :jnone) (set jcell_NULL_COLLIDABLE_COMPOSITE_LAYER ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_COLLIDABLE_COMPOSITE_LAYER))
(set jsetstatic_NULL_COLLIDABLE_COMPOSITE_LAYER (fn jsetstatic_NULL_COLLIDABLE_COMPOSITE_LAYER [value] (set jcell_NULL_COLLIDABLE_COMPOSITE_LAYER value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_COLLIDABLE_COMPOSITE_LAYER (jnew_4 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (RectangleFactory/jstatic_SINGLETON) (ViewPositionBase/jstatic_NULL_VIEW_POSITION) (CollidableNeverCollideBehaviorFactory/jm_getInstance)))))
        (return jreturn (jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER)))))
    
(set jnew_4 (fn jnew_4 [_name _layerInfo _viewPosition _collidableBaseBehaviorFactory]
    (var this (table/setproto @{:jclass "CollidableCompositeLayer" :f_collidableInferface nil} jproto))
    (put this :f_collidableInferface (:jm_createBehavior (CollidableNeverCollideBehaviorFactory/jm_getInstance)))
        (JR/superInit this (AllBinaryGameLayer/jnew_3 _name _layerInfo _viewPosition))
        (if (not= _collidableBaseBehaviorFactory (CollidableNeverCollideBehaviorFactory/jm_getInstance))
            (do
            (:jm_setCollidableInferface this (:jm_createBehavior _collidableBaseBehaviorFactory))))
    this))
    
(set jm_getArtificialIntelligenceInterface (fn jm_getArtificialIntelligenceInterface [this]
    (label jreturn
        (ForcedLogUtil/jm_log ((this :f_commonStrings) :f_NOT_IMPLEMENTED) this)
        (return jreturn (ArtificialIntelligence/jm_getInstance)))))
    
(set jm_getCollidableInferface (fn jm_getCollidableInferface [this]
    (label jreturn
        (return jreturn (this :f_collidableInferface)))))
    
(set jm_setCollidableInferface (fn jm_setCollidableInferface [this _collidableInferface]
        (set (this :f_collidableInferface) _collidableInferface)))
    
(set jm_implmentsCollidableInterface (fn jm_implmentsCollidableInterface [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_toStringAppend (fn jm_toStringAppend [this _stringBuffer]
        (var _commonSeps (CommonSeps/jm_getInstance))
        ((get AllBinaryGameLayer/jproto :jm_toStringAppend) this _stringBuffer)
        (:jm_append _stringBuffer (_commonSeps :f_NEW_LINE))
        (:jm_append _stringBuffer (:jm_toString (:jm_getCollidableInferface this)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_toStringAppend this _stringBuffer)
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_getArtificialIntelligenceInterface jm_getArtificialIntelligenceInterface :jm_getCollidableInferface jm_getCollidableInferface :jm_setCollidableInferface jm_setCollidableInferface :jm_implmentsCollidableInterface jm_implmentsCollidableInterface :jm_toStringAppend jm_toStringAppend :jm_toString jm_toString} AllBinaryGameLayer/jproto))


