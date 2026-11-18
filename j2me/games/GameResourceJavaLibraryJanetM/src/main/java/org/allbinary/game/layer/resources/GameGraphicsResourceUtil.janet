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
# package org.allbinary.game.layer.resources

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GraphicsFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/GraphicsFeatureFactory" "jm_getInstance" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- OpenGLFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class GameGraphicsResourceUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getString nil)
(var jm_getStringForFeature nil)
(var jm_getName nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameGraphicsResourceUtil" :f_logUtil nil :f_SPRITE nil :f_QUARTER nil :f_name nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_SPRITE "_sprite")
    (put this :f_QUARTER "_quarter")
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (try
            (do
            (set (this :f_name) (:jm_getString this)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CONSTRUCTOR) _e))))
    this))
    
(set jm_getString (fn jm_getString [this]
    (label jreturn
        (var _graphicsFeatureFactory (GraphicsFeatureFactory/jm_getInstance))
        (var _graphicsFeature (_graphicsFeatureFactory :f_NONE))
        (var _features (Features/jm_getInstance))
        (if (:jm_isFeature _features (_graphicsFeatureFactory :f_IMAGE_TO_ARRAY_GRAPHICS))
            (do
            (set _graphicsFeature (_graphicsFeatureFactory :f_IMAGE_TO_ARRAY_GRAPHICS)))
            (if (:jm_isFeature _features (_graphicsFeatureFactory :f_SPRITE_FULL_GRAPHICS))
            (do
            (set _graphicsFeature (_graphicsFeatureFactory :f_SPRITE_FULL_GRAPHICS)))
            (if (:jm_isFeature _features (_graphicsFeatureFactory :f_SPRITE_QUARTER_ROTATION_GRAPHICS))
            (do
            (set _graphicsFeature (_graphicsFeatureFactory :f_SPRITE_QUARTER_ROTATION_GRAPHICS)))
            (if (:jm_isFeature _features (_graphicsFeatureFactory :f_IMAGE_ROTATION_ON_THE_FLY))
            (do
            (set _graphicsFeature (_graphicsFeatureFactory :f_IMAGE_ROTATION_ON_THE_FLY)))))))
        (return jreturn (:jm_getStringForFeature this _graphicsFeature)))))
    
(set jm_getStringForFeature (fn jm_getStringForFeature [this _graphicsFeature]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _graphicsFeatureFactory (GraphicsFeatureFactory/jm_getInstance))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (var _features (Features/jm_getInstance))
        (if (:jm_isFeature _features (_graphicsFeatureFactory :f_VECTOR_GRAPHICS))
            (do
            nil)
            (if (:jm_isFeature _features (_graphicsFeatureFactory :f_IMAGE_GRAPHICS))
            (do
            (if (or (= _graphicsFeature (_graphicsFeatureFactory :f_IMAGE_TO_ARRAY_GRAPHICS)) (= _graphicsFeature (_graphicsFeatureFactory :f_IMAGE_ROTATION_ON_THE_FLY)))
                (do
                nil)
                (if (= _graphicsFeature (_graphicsFeatureFactory :f_SPRITE_FULL_GRAPHICS))
                (do
                (:jm_append _stringBuffer (this :f_SPRITE)))
                (if (= _graphicsFeature (_graphicsFeatureFactory :f_SPRITE_QUARTER_ROTATION_GRAPHICS))
                (do
                (:jm_append _stringBuffer (this :f_QUARTER))
                (:jm_append _stringBuffer (this :f_SPRITE)))
                (do
                (error (JR/newException "Exception" "None/Unknown Sub Image Resource Type Specified")))))))
            (if (:jm_isAnyThreed (OpenGLFeatureUtil/jm_getInstance))
            (do
            (:jm_append _stringBuffer ((CanvasStrings/jm_getInstance) :f_OBJ_MODEL)))
            (do
            (error (JR/newException "Exception" "None/Unknown Main Image Resource Type Specified"))))))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_getString jm_getString :jm_getStringForFeature jm_getStringForFeature :jm_getName jm_getName})


