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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(import ../../../org/allbinary/game/resource/FeaturedResourceFactory :as FeaturedResourceFactory)
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- NullAnimationFactory/jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY [& args] (JR/call jfile "./NullAnimationFactory" "jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY" args))

# Java class FeaturedAnimationInterfaceFactoryInterfaceFactory
(var jproto nil)
(var jcell_INSTANCE :jnone)
(var jstatic_INSTANCE nil)
(var jsetstatic_INSTANCE nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getRectangle nil)
(var jm_getRectangleXY nil)
(var jm_getProcedural nil)
(var jm_get nil)
(var jm_getBasicAnimationInterfaceFactoryInstance nil)

(set jstatic_INSTANCE (fn jstatic_INSTANCE []
  (when (= jcell_INSTANCE :jnone) (set jcell_INSTANCE (jnew_0)))
  jcell_INSTANCE))
(set jsetstatic_INSTANCE (fn jsetstatic_INSTANCE [value] (set jcell_INSTANCE value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FeaturedAnimationInterfaceFactoryInterfaceFactory"} jproto))
    (JR/superInit this (FeaturedResourceFactory/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_INSTANCE)))))
    
(set jm_getRectangle (fn jm_getRectangle [this _resource]
    (label jreturn
        (return jreturn (:jm_getRectangleXY this _resource 0 0)))))
    
(set jm_getRectangleXY (fn jm_getRectangleXY [this _resource _x _y]
    (label jreturn
        (var _pointFactory (PointFactory/jm_getInstance))
        (var _list (:jm_getList this))
        (var _scale (JR/className (JR/className ((GameConfigurationCentral/jm_getInstance) :f_SCALE))))
        (var _size (JR/className (:jm_getList this)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _featureInterface ((_list :f_objectArray) _index))
            (if (:jm_isFeature _featureInterface)
                (do
                (var _rectangle (:jm_getRectangle _featureInterface _resource))
                (if (not= _rectangle (RectangleFactory/jstatic_SINGLETON))
                    (do
                    (return jreturn (Rectangle/jnew_3 (:jm_createXY _pointFactory _x _y) (brshift (JR/i32 (* (:jm_getWidth _rectangle) _scale)) 1) (brshift (JR/i32 (* (:jm_getHeight _rectangle) _scale)) 1))))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "No rectangle available for current feature selection or Resource: ") _resource)))))))
    
(set jm_getProcedural (fn jm_getProcedural [this _resource]
    (label jreturn
        (return jreturn (:jm_getBasicAnimationInterfaceFactoryInstance this _resource)))))
    
(set jm_get (fn jm_get [this _resource]
    (label jreturn
        (return jreturn (:jm_getBasicAnimationInterfaceFactoryInstance this _resource)))))
    
(set jm_getBasicAnimationInterfaceFactoryInstance (fn jm_getBasicAnimationInterfaceFactoryInstance [this _resource]
    (label jreturn
        (var _list (:jm_getList this))
        (var _resourceTypeAvailableList (BasicArrayListD/jnew_0))
        (var _size (JR/className (:jm_getList this)))
        (var _featureInterface nil)
        (var _animationInterfaceFactoryInterface nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _featureInterface ((_list :f_objectArray) _index))
            (if (:jm_isFeature _featureInterface)
                (do
                (:jm_add _resourceTypeAvailableList _featureInterface)
                (set _animationInterfaceFactoryInterface (:jm_getBasicAnimationInterfaceFactoryInstance _featureInterface _resource))
                (if (not= _animationInterfaceFactoryInterface (NullAnimationFactory/jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY))
                    (do
                    (return jreturn _animationInterfaceFactoryInterface))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (if (> (:jm_size _resourceTypeAvailableList) 0)
            (do
            (var _NO_ANIMATION_AVAILABLE_FROM "No animation available from: ")
            (var _FOR_FACTORIES " factories: ")
            (var _FOR_RESOURCE " for Resource: ")
            (var _HAS_KEY " has: ")
            (var _RESOURCES_LABEL " resources ")
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer _NO_ANIMATION_AVAILABLE_FROM)
            (:jm_appendint _stringBuffer (:jm_size _resourceTypeAvailableList))
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_FORWARD_SLASH))
            (:jm_appendint _stringBuffer _size)
            (:jm_append _stringBuffer _FOR_FACTORIES)
            (var _size2 (:jm_size _resourceTypeAvailableList))
            (do
                (var _index 0)
                (while (< _index _size2)
                    (do
                (:jm_append _stringBuffer (JR/toString (:jm_get _resourceTypeAvailableList _index)))
                (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_COMMA_SEP)))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (:jm_append _stringBuffer _FOR_RESOURCE)
            (:jm_append _stringBuffer _resource)
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_NEW_LINE))
                (set _featureInterface ((_list :f_objectArray) _index))
                (if (:jm_isFeature _featureInterface)
                    (do
                    (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) _featureInterface))
                    (:jm_append _stringBuffer _HAS_KEY)
                    (:jm_appendint _stringBuffer (JR/className (:jm_getHashtable _featureInterface)))
                    (:jm_append _stringBuffer _RESOURCES_LABEL))))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (error (JR/newException "Exception" (:jm_toString _stringBuffer))))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (set _featureInterface ((_list :f_objectArray) _index))
                (:jm_append _stringBuffer (:jm_toString _featureInterface))
                (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE)))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (var _result (:jm_toString _stringBuffer))
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append _stringBuffer "No feature resource type available for Resource: ") _resource) " Resource Factories Available: ") _result)))))))))

(set jproto (table/setproto @{:jm_getRectangle jm_getRectangle :jm_getRectangleXY jm_getRectangleXY :jm_getProcedural jm_getProcedural :jm_get jm_get :jm_getBasicAnimationInterfaceFactoryInstance jm_getBasicAnimationInterfaceFactoryInstance} FeaturedResourceFactory/jproto))


