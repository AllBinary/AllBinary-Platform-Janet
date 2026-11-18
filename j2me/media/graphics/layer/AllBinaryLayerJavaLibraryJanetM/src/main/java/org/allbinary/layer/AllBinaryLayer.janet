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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicGroupFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/identification/BasicGroupFactory" "jm_getInstance" args))
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- OpenGLFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" "jm_getInstance" args))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- PositionStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/PositionStrings" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- ViewPositionBase/jstatic_NULL_VIEW_POSITION [& args] (JR/call jfile "../../../org/allbinary/view/ViewPositionBase" "jstatic_NULL_VIEW_POSITION" args))
(defn- ViewPositionEvent/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/view/event/ViewPositionEvent" "jnew_1" args))
(import ../../../java/lang/Integer :as Integer)
(import ./Layer :as Layer)

# Java class AllBinaryLayer
(var jproto nil)
(var jcell_NULL_ALLBINARY_LAYER :jnone)
(var jstatic_NULL_ALLBINARY_LAYER nil)
(var jsetstatic_NULL_ALLBINARY_LAYER nil)
(var jcell_TYPE :jnone)
(var jstatic_TYPE nil)
(var jsetstatic_TYPE nil)
(var jnew_3 nil)
(var jm_setPosition nil)
(var jm_moveDXYZ nil)
(var jm_getXP nil)
(var jm_getYP nil)
(var jm_getZP nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_setVisible nil)
(var jm_isVisible nil)
(var jm_paint nil)
(var jm_onChangeEvent nil)
(var jm_paintThreed nil)
(var jm_getX2 nil)
(var jm_getY2 nil)
(var jm_getZ2 nil)
(var jm_getName nil)
(var jm_setHalfWidth nil)
(var jm_getHalfWidth nil)
(var jm_setHalfHeight nil)
(var jm_getHalfHeight nil)
(var jm_getHalfDepth nil)
(var jm_getViewPosition nil)
(var jm_setViewPosition nil)
(var jm_getGroupInterface nil)
(var jm_implmentsTickableInterface nil)
(var jm_implmentsGameInputInterface nil)
(var jm_implmentsArtificialIntelligenceCompositeInterface nil)
(var jm_implmentsCollidableInterface nil)
(var jm_implementsThreedInterface nil)
(var jm_getType nil)
(var jm_getMultiPlayerType nil)
(var jm_toStringAppend nil)
(var jm_toString nil)

(set jstatic_NULL_ALLBINARY_LAYER (fn jstatic_NULL_ALLBINARY_LAYER []
  (when (= jcell_NULL_ALLBINARY_LAYER :jnone) (set jcell_NULL_ALLBINARY_LAYER (jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (RectangleFactory/jstatic_SINGLETON) (ViewPositionBase/jstatic_NULL_VIEW_POSITION))))
  jcell_NULL_ALLBINARY_LAYER))
(set jsetstatic_NULL_ALLBINARY_LAYER (fn jsetstatic_NULL_ALLBINARY_LAYER [value] (set jcell_NULL_ALLBINARY_LAYER value)))

(set jstatic_TYPE (fn jstatic_TYPE []
  (when (= jcell_TYPE :jnone) (set jcell_TYPE "Type: "))
  jcell_TYPE))
(set jsetstatic_TYPE (fn jsetstatic_TYPE [value] (set jcell_TYPE value)))

    
(set jnew_3 (fn jnew_3 [_name _rectangle _viewPosition]
    (var this (table/setproto @{:jclass "AllBinaryLayer" :f_viewPositionEvent nil :f_halfWidth 0 :f_halfHeight 0 :f_name nil :f_viewPosition nil} jproto))
    (put this :f_viewPositionEvent (ViewPositionEvent/jnew_1 this))
    
    
    
    (put this :f_viewPosition (ViewPositionBase/jstatic_NULL_VIEW_POSITION))
        (JR/superInit this (Layer/jnew_2 (:jm_getWidth _rectangle) (:jm_getHeight _rectangle)))
        (var _localName nil)
        (set _localName (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) _name) ((CommonSeps/jm_getInstance) :f_COLON)) (Integer/jm_toHexString (:jm_hashCode_1 (TsUtil/jm_getInstance) this)))))
        (set (this :f_name) _localName)
        (var _point (:jm_getPoint _rectangle))
        (:jm_setPosition this (:jm_getX _point) (:jm_getY _point) (:jm_getZ _point))
        (:jm_setHalfWidth this (brshift (:jm_getWidth this) 1))
        (:jm_setHalfHeight this (brshift (:jm_getHeight this) 1))
        (set (this :f_viewPosition) _viewPosition)
        (:jm_setAllbinaryLayer (this :f_viewPosition) this)
    this))
    
(set jm_setPosition (fn jm_setPosition [this _x _y _z]
        ((get Layer/jproto :jm_setPosition) this _x _y _z)))
    
(set jm_moveDXYZ (fn jm_moveDXYZ [this _dx _dy _dz]
        ((get Layer/jproto :jm_moveDXYZ) this _dx _dy _dz)))
    
(set jm_getXP (fn jm_getXP [this]
    (label jreturn
        (return jreturn ((get Layer/jproto :jm_getXP) this)))))
    
(set jm_getYP (fn jm_getYP [this]
    (label jreturn
        (return jreturn ((get Layer/jproto :jm_getYP) this)))))
    
(set jm_getZP (fn jm_getZP [this]
    (label jreturn
        (return jreturn ((get Layer/jproto :jm_getZP) this)))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn ((get Layer/jproto :jm_getWidth) this)))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn ((get Layer/jproto :jm_getHeight) this)))))
    
(set jm_setVisible (fn jm_setVisible [this _visible]
        ((get Layer/jproto :jm_setVisible) this _visible)))
    
(set jm_isVisible (fn jm_isVisible [this]
    (label jreturn
        (return jreturn ((get Layer/jproto :jm_isVisible) this)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        ((get Layer/jproto :jm_paint) this _graphics)))
    
(set jm_onChangeEvent (fn jm_onChangeEvent [this _layerManagerEvent]
    nil))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))
    
(set jm_getX2 (fn jm_getX2 [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getXP this) (:jm_getWidth this)))))))
    
(set jm_getY2 (fn jm_getY2 [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getYP this) (:jm_getHeight this)))))))
    
(set jm_getZ2 (fn jm_getZ2 [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getZP this) (:jm_getDepth this)))))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_setHalfWidth (fn jm_setHalfWidth [this _halfWidth]
        (set (this :f_halfWidth) _halfWidth)))
    
(set jm_getHalfWidth (fn jm_getHalfWidth [this]
    (label jreturn
        (return jreturn (this :f_halfWidth)))))
    
(set jm_setHalfHeight (fn jm_setHalfHeight [this _halfHeight]
        (set (this :f_halfHeight) _halfHeight)))
    
(set jm_getHalfHeight (fn jm_getHalfHeight [this]
    (label jreturn
        (return jreturn (this :f_halfHeight)))))
    
(set jm_getHalfDepth (fn jm_getHalfDepth [this]
    (label jreturn
        (return jreturn (JR/idiv (:jm_getDepth this) 2)))))
    
(set jm_getViewPosition (fn jm_getViewPosition [this]
    (label jreturn
        (return jreturn (this :f_viewPosition)))))
    
(set jm_setViewPosition (fn jm_setViewPosition [this _viewPosition]
        (set (this :f_viewPosition) _viewPosition)))
    
(set jm_getGroupInterface (fn jm_getGroupInterface [this]
    (label jreturn
        (return jreturn ((BasicGroupFactory/jm_getInstance) :f_NONE_ARRAY)))))
    
(set jm_implmentsTickableInterface (fn jm_implmentsTickableInterface [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_implmentsGameInputInterface (fn jm_implmentsGameInputInterface [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_implmentsArtificialIntelligenceCompositeInterface (fn jm_implmentsArtificialIntelligenceCompositeInterface [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_implmentsCollidableInterface (fn jm_implmentsCollidableInterface [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_implementsThreedInterface (fn jm_implementsThreedInterface [this]
    (label jreturn
        (return jreturn (:jm_isAnyThreed (OpenGLFeatureUtil/jm_getInstance))))))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_getMultiPlayerType (fn jm_getMultiPlayerType [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_toStringAppend (fn jm_toStringAppend [this _stringBuffer]
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _positionStrings (PositionStrings/jm_getInstance))
        (var _commonLabels (CommonLabels/jm_getInstance))
        (:jm_append _stringBuffer (:jm_getName this))
        (:jm_append _stringBuffer (_commonSeps :f_COLON))
        (:jm_append _stringBuffer (jstatic_TYPE))
        (:jm_appendint _stringBuffer (:jm_getType this))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_X_LABEL))
        (:jm_appendint _stringBuffer (:jm_getXP this))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Y_LABEL))
        (:jm_appendint _stringBuffer (:jm_getYP this))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Z_LABEL))
        (:jm_appendint _stringBuffer (:jm_getZP this))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_commonLabels :f_WIDTH_LABEL))
        (:jm_appendint _stringBuffer (:jm_getWidth this))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_commonLabels :f_HEIGHT_LABEL))
        (:jm_appendint _stringBuffer (:jm_getHeight this))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_toStringAppend this _stringBuffer)
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_setPosition jm_setPosition :jm_moveDXYZ jm_moveDXYZ :jm_getXP jm_getXP :jm_getYP jm_getYP :jm_getZP jm_getZP :jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_setVisible jm_setVisible :jm_isVisible jm_isVisible :jm_paint jm_paint :jm_onChangeEvent jm_onChangeEvent :jm_paintThreed jm_paintThreed :jm_getX2 jm_getX2 :jm_getY2 jm_getY2 :jm_getZ2 jm_getZ2 :jm_getName jm_getName :jm_setHalfWidth jm_setHalfWidth :jm_getHalfWidth jm_getHalfWidth :jm_setHalfHeight jm_setHalfHeight :jm_getHalfHeight jm_getHalfHeight :jm_getHalfDepth jm_getHalfDepth :jm_getViewPosition jm_getViewPosition :jm_setViewPosition jm_setViewPosition :jm_getGroupInterface jm_getGroupInterface :jm_implmentsTickableInterface jm_implmentsTickableInterface :jm_implmentsGameInputInterface jm_implmentsGameInputInterface :jm_implmentsArtificialIntelligenceCompositeInterface jm_implmentsArtificialIntelligenceCompositeInterface :jm_implmentsCollidableInterface jm_implmentsCollidableInterface :jm_implementsThreedInterface jm_implementsThreedInterface :jm_getType jm_getType :jm_getMultiPlayerType jm_getMultiPlayerType :jm_toStringAppend jm_toStringAppend :jm_toString jm_toString} Layer/jproto))


