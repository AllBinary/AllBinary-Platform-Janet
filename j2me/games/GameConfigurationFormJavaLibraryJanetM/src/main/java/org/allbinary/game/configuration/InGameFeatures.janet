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
# package org.allbinary.game.configuration

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameFeatureChoiceGroups/jm_getExclusiveInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" "jm_getExclusiveInstance" args))
(defn- InGameFeatureChoiceGroups/jm_getExclusiveInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups" "jm_getExclusiveInstance" args))
(defn- SensorFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" "jm_getInstance" args))
(defn- TouchFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory" "jm_getInstance" args))
(import ../../../../org/allbinary/init/Init :as Init)
(defn- OrientationData/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/gyro/OrientationData" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class InGameFeatures
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_addToInGameMenu nil)
(var jm_isAny nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InGameFeatures"} jproto))
    (JR/superInit this (Init/jnew_0))
    this))

    
(set jm_init (fn jm_init [this]
        (var _LABEL "Screen Buttons")
        (var _orientationData (OrientationData/jm_getInstance))
        (var _exclusiveOrientationSensorVector (JR/className (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance))))
        (var _inGameFeatureChoiceGroups (InGameFeatureChoiceGroups/jm_getExclusiveInstance))
        (if (not (nil? _exclusiveOrientationSensorVector))
            (do
            (var _inGameExclusiveOrientationSensorVectorCanBeNull (JR/className (:jm_get _inGameFeatureChoiceGroups)))
            (if (nil? _inGameExclusiveOrientationSensorVectorCanBeNull)
                (do
                (:jm_addToInGameMenu this))
                (do
                (var _inGameExclusiveOrientationSensorVector _inGameExclusiveOrientationSensorVectorCanBeNull)
                (if (= (:jm_size _inGameExclusiveOrientationSensorVector) 0)
                    (do
                    (:jm_addToInGameMenu this)))))))
        (var _features (Features/jm_getInstance))
        (if (or (or (:jm_isFeature _features ((TouchFeatureFactory/jm_getInstance) :f_SHOW_SCREEN_BUTTONS)) (:jm_isFeature _features ((TouchFeatureFactory/jm_getInstance) :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))) (:jm_isFeature _features ((TouchFeatureFactory/jm_getInstance) :f_HIDE_SCREEN_BUTTONS)))
            (do
            (var _exclusiveScreenButtonsVector (BasicArrayListD/jnew_0))
            (var _touchFeatureFactory (TouchFeatureFactory/jm_getInstance))
            (:jm_add _exclusiveScreenButtonsVector (_touchFeatureFactory :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))
            (:jm_add _exclusiveScreenButtonsVector (_touchFeatureFactory :f_SHOW_SCREEN_BUTTONS))
            (:jm_add _exclusiveScreenButtonsVector (_touchFeatureFactory :f_HIDE_SCREEN_BUTTONS))
            (:jm_add _inGameFeatureChoiceGroups _LABEL _exclusiveScreenButtonsVector)))))
    
(set jm_addToInGameMenu (fn jm_addToInGameMenu [this]
        (var _orientationData (OrientationData/jm_getInstance))
        (var _inGameExclusiveOrientationSensorVector (BasicArrayListD/jnew_0))
        (:jm_add _inGameExclusiveOrientationSensorVector ((SensorFeatureFactory/jm_getInstance) :f_ORIENTATION_SENSORS))
        (:jm_add _inGameExclusiveOrientationSensorVector ((SensorFeatureFactory/jm_getInstance) :f_NO_ORIENTATION))
        (JR/className (InGameFeatureChoiceGroups/jm_getExclusiveInstance))))
    
(set jm_isAny (fn jm_isAny [this]
    (label jreturn
        (var _features (Features/jm_getInstance))
        (var _touchFeatureFactory (TouchFeatureFactory/jm_getInstance))
        (if (or (or (:jm_isFeature _features (_touchFeatureFactory :f_SHOW_SCREEN_BUTTONS)) (:jm_isFeature _features (_touchFeatureFactory :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))) (:jm_isFeature _features (_touchFeatureFactory :f_HIDE_SCREEN_BUTTONS)))
            (do
            (return jreturn true)))
        (var _exclusiveOrientationSensorVector (JR/className (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance))))
        (if (not (nil? _exclusiveOrientationSensorVector))
            (do
            (return jreturn true)))
        (return jreturn false))))

(set jproto (table/setproto @{:jm_init jm_init :jm_addToInGameMenu jm_addToInGameMenu :jm_isAny jm_isAny} Init/jproto))


