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
(import ../../../../../org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory :as BaseResourceAnimationInterfaceFactoryInterfaceFactory)
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- ImageCacheFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/ImageCacheFactory" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))

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


