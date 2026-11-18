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
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- OpenGLImageCacheFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/opengles/OpenGLImageCacheFactory" "jm_getInstance" args))
(import ./TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory :as TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)

# Java class TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_isFeature nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory"} jproto))
        (JR/superInit this (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory/jnew_1 "OpenGL TouchButton Animations"))
    this))
    
(set jm_init (fn jm_init [this _level]
        ((get TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory/jproto :jm_initImageCache) this (OpenGLImageCacheFactory/jm_getInstance) _level)))
    
(set jm_isFeature (fn jm_isFeature [this]
    (label jreturn
        (if (:jm_isDefault (Features/jm_getInstance) ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_isFeature jm_isFeature} TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory/jproto))


