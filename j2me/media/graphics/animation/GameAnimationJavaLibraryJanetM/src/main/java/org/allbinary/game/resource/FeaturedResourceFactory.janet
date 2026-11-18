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
# package org.allbinary.game.resource

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GraphicsFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GraphicsFeatureFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "./ResourceLoadingLevelFactory" "jm_getInstance" args))

# Java class FeaturedResourceFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_clear nil)
(var jm_add nil)
(var jm_getList nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FeaturedResourceFactory" :f_logUtil nil :f_list nil :f_commonStrings nil :f_ANIMATION_FEATURES nil :f_IMAGE_LABEL nil :f_IMAGE_GRAPHICS_ARRAY nil :f_IMAGE_GRAPHICS_ROTATION nil :f_SPRITE_QUARTER nil :f_SPRITE_FULL nil :f_IS_LOADING_LEVEL_LABEL nil :f_IS_FEATURE nil :f_GAME_FEATURE_CONTROLLED nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_list (BasicArrayListD/jnew_0))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_ANIMATION_FEATURES "Animation Features: Vector: ")
    (put this :f_IMAGE_LABEL " Image: ")
    (put this :f_IMAGE_GRAPHICS_ARRAY "Image Array: ")
    (put this :f_IMAGE_GRAPHICS_ROTATION "Image Rotate: ")
    (put this :f_SPRITE_QUARTER " Sprite Quarter: ")
    (put this :f_SPRITE_FULL " Sprite Full: ")
    (put this :f_IS_LOADING_LEVEL_LABEL " isLoadingLevel ")
    (put this :f_IS_FEATURE " isFeature: ")
    (put this :f_GAME_FEATURE_CONTROLLED "GameFeatureControlledInterface: ")
    this))
    
(set jm_init (fn jm_init [this _level]
        (var _size (:jm_size (this :f_list)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _featureInterface (((this :f_list) :f_objectArray) _index))
            (var _isLoadingLevel (:jm_isLoadingLevel _featureInterface _level))
            (var _isFeature (:jm_isFeature _featureInterface))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendboolean (:jm_append (:jm_appendboolean (:jm_append (:jm_append (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_GAME_FEATURE_CONTROLLED)) (:jm_toString _featureInterface)) (this :f_IS_LOADING_LEVEL_LABEL)) (:jm_getLevelString (ResourceLoadingLevelFactory/jm_getInstance) _level)) ((CommonSeps/jm_getInstance) :f_COLON_SEP)) _isLoadingLevel) (this :f_IS_FEATURE)) _isFeature)) this ((this :f_commonStrings) :f_INIT))
            (if (and _isLoadingLevel _isFeature)
                (do
                (:jm_init _featureInterface _level))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _features (Features/jm_getInstance))
        (var _graphicsFeatureFactory (GraphicsFeatureFactory/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (this :f_ANIMATION_FEATURES))
        (:jm_appendboolean _stringBuffer (:jm_isFeature _features (_graphicsFeatureFactory :f_VECTOR_GRAPHICS)))
        (:jm_append _stringBuffer (this :f_IMAGE_LABEL))
        (:jm_appendboolean _stringBuffer (:jm_isFeature _features (_graphicsFeatureFactory :f_IMAGE_GRAPHICS)))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this ((this :f_commonStrings) :f_INIT))
        (if (:jm_isFeature _features (_graphicsFeatureFactory :f_IMAGE_GRAPHICS))
            (do
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (:jm_append _stringBuffer (this :f_IMAGE_GRAPHICS_ARRAY))
            (:jm_appendboolean _stringBuffer (:jm_isFeature _features (_graphicsFeatureFactory :f_IMAGE_TO_ARRAY_GRAPHICS)))
            (:jm_append _stringBuffer (this :f_IMAGE_GRAPHICS_ROTATION))
            (:jm_appendboolean _stringBuffer (:jm_isFeature _features (_graphicsFeatureFactory :f_IMAGE_TO_ARRAY_GRAPHICS)))
            (:jm_append _stringBuffer (this :f_SPRITE_QUARTER))
            (:jm_appendboolean _stringBuffer (:jm_isFeature _features (_graphicsFeatureFactory :f_SPRITE_QUARTER_ROTATION_GRAPHICS)))
            (:jm_append _stringBuffer (this :f_SPRITE_FULL))
            (:jm_appendboolean _stringBuffer (:jm_isFeature _features (_graphicsFeatureFactory :f_SPRITE_FULL_GRAPHICS)))
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this ((this :f_commonStrings) :f_INIT))))))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_list))))
    
(set jm_add (fn jm_add [this _featureInterface]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START_LABEL)) (:jm_toString_1 (StringUtil/jm_getInstance) _featureInterface))) this ((this :f_commonStrings) :f_ADD))
        (:jm_add (this :f_list) _featureInterface)))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_list)))))

(set jproto @{:jm_init jm_init :jm_clear jm_clear :jm_add jm_add :jm_getList jm_getList})


