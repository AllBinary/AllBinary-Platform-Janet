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
# package org.allbinary.animation.resource

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAnimationFactory/jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY [& args] (JR/call jfile "../../../../org/allbinary/animation/NullAnimationFactory" "jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- RectangleFactory/jstatic_ARRAY_OF_ARRAYS [& args] (JR/call jfile "../../../../org/allbinary/graphics/RectangleFactory" "jstatic_ARRAY_OF_ARRAYS" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class BaseResourceAnimationInterfaceFactoryInterfaceFactory
(var jproto nil)
(var jnew_4 nil)
(var jm_getName nil)
(var jm_init nil)
(var jm_initImageCache nil)
(var jm_add nil)
(var jm_getBasicAnimationInterfaceFactoryInstance nil)
(var jm_getRectangle nil)
(var jm_addRectangle nil)
(var jm_getRectangleArrayOfArrays nil)
(var jm_addRectangleArrayOfArrays nil)
(var jm_isFeature nil)
(var jm_isLoadingLevel nil)
(var jm_toString nil)
(var jm_getHashtable nil)
(var jm_getRectangleHashtable nil)
(var jm_getRectangleArrayOfArraysHashtable nil)
(var jm_setInitialized nil)
(var jm_isInitialized nil)

    
(set jnew_4 (fn jnew_4 [_name _hashtable _rectangleHashtable _rectangleArrayHashtable]
    (var this (table/setproto @{:jclass "BaseResourceAnimationInterfaceFactoryInterfaceFactory" :f_logUtil nil :f_commonStrings nil :f_hashtable nil :f_rectangleHashtable nil :f_rectangleArrayOfArraysHashtable nil :f_name nil :f_initialized false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
    
    
        (set (this :f_hashtable) _hashtable)
        (set (this :f_rectangleHashtable) _rectangleHashtable)
        (set (this :f_rectangleArrayOfArraysHashtable) _rectangleArrayHashtable)
        (set (this :f_name) _name)
    this))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_init (fn jm_init [this _level]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Available List of Animations: ") (:jm_toString (this :f_hashtable)))) this (_commonStrings :f_INIT))
        (:jm_setInitialized this true)))
    
(set jm_initImageCache (fn jm_initImageCache [this _imageCache _level]
    nil))
    
(set jm_add (fn jm_add [this _resource _animationInterfaceFactoryInterface]
        (if (:jm_containsKey (this :f_hashtable) _resource)
            (do
            (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Resource Already Created: ") _resource))))))
        (:jm_put (this :f_hashtable) _resource _animationInterfaceFactoryInterface)))
    
(set jm_getBasicAnimationInterfaceFactoryInstance (fn jm_getBasicAnimationInterfaceFactoryInstance [this _resource]
    (label jreturn
        (var _basicAnimationInterfaceFactoryInterfaceCanBeNull (:jm_get (this :f_hashtable) _resource))
        (if (nil? _basicAnimationInterfaceFactoryInterfaceCanBeNull)
            (do
            (return jreturn (NullAnimationFactory/jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY))))
        (return jreturn _basicAnimationInterfaceFactoryInterfaceCanBeNull))))
    
(set jm_getRectangle (fn jm_getRectangle [this _resource]
    (label jreturn
        (var _rectangleCanBeNull (:jm_get (this :f_rectangleHashtable) _resource))
        (if (nil? _rectangleCanBeNull)
            (do
            (return jreturn (RectangleFactory/jstatic_SINGLETON))))
        (return jreturn _rectangleCanBeNull))))
    
(set jm_addRectangle (fn jm_addRectangle [this _resource _rectangle]
        (:jm_put (this :f_rectangleHashtable) _resource _rectangle)))
    
(set jm_getRectangleArrayOfArrays (fn jm_getRectangleArrayOfArrays [this _resource]
    (label jreturn
        (var _valueCanBeNull (:jm_get (this :f_rectangleArrayOfArraysHashtable) _resource))
        (if (not (nil? _valueCanBeNull))
            (do
            (var _rectangleArrayOfArrays _valueCanBeNull)
            (return jreturn _rectangleArrayOfArrays))
            (do
            (return jreturn (RectangleFactory/jstatic_ARRAY_OF_ARRAYS)))))))
    
(set jm_addRectangleArrayOfArrays (fn jm_addRectangleArrayOfArrays [this _resource _rectangleArrayOfArrays]
        (:jm_put (this :f_rectangleArrayOfArraysHashtable) _resource _rectangleArrayOfArrays)))
    
(set jm_isFeature (fn jm_isFeature [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_isLoadingLevel (fn jm_isLoadingLevel [this _level]
    (label jreturn
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (if (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_ALL)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) (JR/className this)) ((CommonSeps/jm_getInstance) :f_SEMICOLON)) ((CommonSeps/jm_getInstance) :f_SPACE)) (this :f_name)))))))
    
(set jm_getHashtable (fn jm_getHashtable [this]
    (label jreturn
        (return jreturn (this :f_hashtable)))))
    
(set jm_getRectangleHashtable (fn jm_getRectangleHashtable [this]
    (label jreturn
        (return jreturn (this :f_rectangleHashtable)))))
    
(set jm_getRectangleArrayOfArraysHashtable (fn jm_getRectangleArrayOfArraysHashtable [this]
    (label jreturn
        (return jreturn (this :f_rectangleArrayOfArraysHashtable)))))
    
(set jm_setInitialized (fn jm_setInitialized [this _initialized]
        (set (this :f_initialized) _initialized)))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (label jreturn
        (return jreturn (this :f_initialized)))))

(set jproto @{:jm_getName jm_getName :jm_init jm_init :jm_initImageCache jm_initImageCache :jm_add jm_add :jm_getBasicAnimationInterfaceFactoryInstance jm_getBasicAnimationInterfaceFactoryInstance :jm_getRectangle jm_getRectangle :jm_addRectangle jm_addRectangle :jm_getRectangleArrayOfArrays jm_getRectangleArrayOfArrays :jm_addRectangleArrayOfArrays jm_addRectangleArrayOfArrays :jm_isFeature jm_isFeature :jm_isLoadingLevel jm_isLoadingLevel :jm_toString jm_toString :jm_getHashtable jm_getHashtable :jm_getRectangleHashtable jm_getRectangleHashtable :jm_getRectangleArrayOfArraysHashtable jm_getRectangleArrayOfArraysHashtable :jm_setInitialized jm_setInitialized :jm_isInitialized jm_isInitialized})


