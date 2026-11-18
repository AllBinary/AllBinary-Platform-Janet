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
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameFeatureChoiceGroups/jm_getMultipleInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" "jm_getMultipleInstance" args))
(defn- GameFeatureChoiceGroups/jm_getExclusiveInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" "jm_getExclusiveInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "./OpenGLFeatureFactory" "jm_getInstance" args))

# Java class OpenGLOptions
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLOptions"} jproto))
    this))

    
(set jm_init (fn jm_init [this]
        (var _openGLFeatureFactory (OpenGLFeatureFactory/jm_getInstance))
        (if (:jm_isFeature (Features/jm_getInstance) (_openGLFeatureFactory :f_OPENGL_OPTIONS))
            (do
            (var _openGLMultipleList (BasicArrayListD/jnew_0))
            (:jm_add _openGLMultipleList (_openGLFeatureFactory :f_OPENGL))
            (JR/className (GameFeatureChoiceGroups/jm_getMultipleInstance))
            (var _openGLVersionSelectorMultipleList (BasicArrayListD/jnew_0))
            (:jm_add _openGLVersionSelectorMultipleList (_openGLFeatureFactory :f_OPENGL_AUTO_SELECT))
            (:jm_add _openGLVersionSelectorMultipleList (_openGLFeatureFactory :f_OPENGL_MINIMUM))
            (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance))
            (var _openGLImageColorMultipleList (BasicArrayListD/jnew_0))
            (:jm_add _openGLImageColorMultipleList (_openGLFeatureFactory :f_IMAGE_COLOR_DEPTH_4444))
            (:jm_add _openGLImageColorMultipleList (_openGLFeatureFactory :f_IMAGE_COLOR_DEPTH_8888))
            (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance))))))

(set jproto @{:jm_init jm_init})


