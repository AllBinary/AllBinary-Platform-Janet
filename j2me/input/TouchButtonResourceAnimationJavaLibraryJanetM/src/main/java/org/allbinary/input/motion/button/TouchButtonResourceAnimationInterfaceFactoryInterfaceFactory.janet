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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnimationBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/AnimationBehaviorFactory" "jm_getInstance" args))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- OneRowSpriteIndexedAnimationFactory/jm_createFactory [& args] (JR/call jfile "../../../../../org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory" "jm_createFactory" args))
(import ../../../../../org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory :as BaseResourceAnimationInterfaceFactoryInterfaceFactory)
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- ImageCacheFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/ImageCacheFactory" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- OperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" "jm_getInstance" args))
(defn- ImageCompleteUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/media/image/ImageCompleteUtil" "jm_getInstance" args))
(defn- TouchButtonBlankResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonBlankResource" "jm_getInstance" args))
(defn- TouchButtonGenericActionResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonGenericActionResource" "jm_getInstance" args))
(defn- TouchButtonStartResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonStartResource" "jm_getInstance" args))
(defn- TouchButtonUpResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonUpResource" "jm_getInstance" args))
(defn- TouchButtonDownResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonDownResource" "jm_getInstance" args))
(defn- TouchButtonTurnLeftResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonTurnLeftResource" "jm_getInstance" args))
(defn- TouchButtonTurnRightResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonTurnRightResource" "jm_getInstance" args))
(defn- TouchButtonStrafeLeftResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonStrafeLeftResource" "jm_getInstance" args))
(defn- TouchButtonStrafeRightResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonStrafeRightResource" "jm_getInstance" args))

# Java class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_createFactory nil)
(var jm_init nil)
(var jm_initImageCache nil)
(var jm_isLoadingLevel nil)
(var jm_isFeature nil)

    
(set jm_createFactory (fn jm_createFactory []
    (label jreturn
        (return jreturn (jnew_1 "TouchButton Animations")))))
    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"} jproto))
        (JR/superInit this (BaseResourceAnimationInterfaceFactoryInterfaceFactory/jnew_4 _name (:jm_createHashtable (StdUtil/jm_getInstance)) (:jm_createHashtable (StdUtil/jm_getInstance)) (:jm_createHashtable (StdUtil/jm_getInstance))))
    this))
    
(set jm_init (fn jm_init [this _level]
        (:jm_initImageCache this (ImageCacheFactory/jm_getInstance) _level)))
    
(set jm_initImageCache (fn jm_initImageCache [this _imageCache _level]
    (label jreturn
        (if (:jm_isInitialized this)
            (do
            (return jreturn)))
        (var _portion 140)
        (var _loadingString (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (:jm_toString this)) " Loading: ")))
        (var _index 0)
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (var _touchButtonBlankResource (TouchButtonBlankResource/jm_getInstance))
        (var _touchButtonGenericActionResource (TouchButtonGenericActionResource/jm_getInstance))
        (var _touchButtonStartResource (TouchButtonStartResource/jm_getInstance))
        (var _touchButtonUpResource (TouchButtonUpResource/jm_getInstance))
        (var _touchButtonDownResource (TouchButtonDownResource/jm_getInstance))
        (var _touchButtonTurnLeftResource (TouchButtonTurnLeftResource/jm_getInstance))
        (var _touchButtonTurnRightResource (TouchButtonTurnRightResource/jm_getInstance))
        (var _touchButtonStrafeLeftResource (TouchButtonStrafeLeftResource/jm_getInstance))
        (var _touchButtonStrafeRightResource (TouchButtonStrafeRightResource/jm_getInstance))
        (var _touchButtonBlankResourceImage (:jm_getWithKey _imageCache (_touchButtonBlankResource :f_RESOURCE)))
        (var _touchButtonGenericActionResourceImage (:jm_getWithKey _imageCache (_touchButtonGenericActionResource :f_RESOURCE)))
        (var _touchButtonStartResourceImage (:jm_getWithKey _imageCache (_touchButtonStartResource :f_RESOURCE)))
        (var _touchButtonUpResourceImage (:jm_getWithKey _imageCache (_touchButtonUpResource :f_RESOURCE)))
        (var _touchButtonDownResourceImage (:jm_getWithKey _imageCache (_touchButtonDownResource :f_RESOURCE)))
        (var _touchButtonTurnLeftResourceImage (:jm_getWithKey _imageCache (_touchButtonTurnLeftResource :f_RESOURCE)))
        (var _touchButtonTurnRightResourceImage (:jm_getWithKey _imageCache (_touchButtonTurnRightResource :f_RESOURCE)))
        (var _touchButtonStrafeLeftResourceImage (:jm_getWithKey _imageCache (_touchButtonStrafeLeftResource :f_RESOURCE)))
        (var _touchButtonStrafeRightResourceImage (:jm_getWithKey _imageCache (_touchButtonStrafeRightResource :f_RESOURCE)))
        (var _nullAnimationFactory (NullAnimationFactory/jm_getFactoryInstance))
        (if (JR/className (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance)))
            (do
            (:jm_getWithKey _imageCache ((TouchButtonStartResource/jm_getInstance) :f_HINT))))
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (var _imageCompleteUtil (ImageCompleteUtil/jm_getInstance))
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonBlankResourceImage (_touchButtonBlankResource :f_RESOURCE))
        (:jm_add this (_touchButtonBlankResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonBlankResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonBlankResource :f_HINT) _nullAnimationFactory)
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonGenericActionResourceImage (_touchButtonGenericActionResource :f_RESOURCE))
        (:jm_add this (_touchButtonGenericActionResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonGenericActionResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonGenericActionResource :f_HINT) _nullAnimationFactory)
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonStartResourceImage (_touchButtonStartResource :f_RESOURCE))
        (:jm_add this (_touchButtonStartResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonStartResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonUpResourceImage (_touchButtonUpResource :f_RESOURCE))
        (:jm_add this (_touchButtonUpResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonUpResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonUpResource :f_HINT) _nullAnimationFactory)
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonDownResourceImage (_touchButtonDownResource :f_RESOURCE))
        (:jm_add this (_touchButtonDownResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonDownResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonDownResource :f_HINT) _nullAnimationFactory)
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonTurnLeftResourceImage (_touchButtonTurnLeftResource :f_RESOURCE))
        (:jm_add this (_touchButtonTurnLeftResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonTurnLeftResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonTurnLeftResource :f_HINT) _nullAnimationFactory)
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonTurnRightResourceImage (_touchButtonTurnRightResource :f_RESOURCE))
        (:jm_add this (_touchButtonTurnRightResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonTurnRightResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonTurnRightResource :f_HINT) _nullAnimationFactory)
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonStrafeLeftResourceImage (_touchButtonStrafeLeftResource :f_RESOURCE))
        (:jm_add this (_touchButtonStrafeLeftResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonStrafeLeftResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonStrafeLeftResource :f_HINT) _nullAnimationFactory)
        (:jm_addPortion _progressCanvas _portion _loadingString (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold))
        (:jm_waitForImage _imageCompleteUtil _touchButtonStrafeRightResourceImage (_touchButtonStrafeRightResource :f_RESOURCE))
        (:jm_add this (_touchButtonStrafeRightResource :f_RESOURCE) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonStrafeRightResourceImage (AnimationBehaviorFactory/jm_getInstance)))
        (:jm_add this (_touchButtonStrafeRightResource :f_HINT) _nullAnimationFactory)
        (if (JR/className (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance)))
            (do
            (var _touchButtonStartHintResource (:jm_getWithKey _imageCache ((TouchButtonStartResource/jm_getInstance) :f_HINT)))
            (:jm_add this (_touchButtonStartResource :f_HINT) (OneRowSpriteIndexedAnimationFactory/jm_createFactory _touchButtonStartHintResource (AnimationBehaviorFactory/jm_getInstance))))
            (do
            (:jm_add this (_touchButtonStartResource :f_HINT) _nullAnimationFactory)))
        ((get BaseResourceAnimationInterfaceFactoryInterfaceFactory/jproto :jm_init) this _level))))
    
(set jm_isLoadingLevel (fn jm_isLoadingLevel [this _level]
    (label jreturn
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (if (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_TOUCH)))
            (do
            (return jreturn true))
            (do
            (return jreturn ((get BaseResourceAnimationInterfaceFactoryInterfaceFactory/jproto :jm_isLoadingLevel) this _level)))))))
    
(set jm_isFeature (fn jm_isFeature [this]
    (label jreturn
        (if (not (:jm_isDefault (Features/jm_getInstance) ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_initImageCache jm_initImageCache :jm_isLoadingLevel jm_isLoadingLevel :jm_isFeature jm_isFeature} BaseResourceAnimationInterfaceFactoryInterfaceFactory/jproto))


