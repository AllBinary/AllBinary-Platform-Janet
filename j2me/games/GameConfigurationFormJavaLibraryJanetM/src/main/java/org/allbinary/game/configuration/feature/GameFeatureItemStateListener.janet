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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameConfigurationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- GameFeatureFactory/jm_getInstance [& args] (JR/call jfile "./GameFeatureFactory" "jm_getInstance" args))
(defn- GameFeatureUtil/jm_getInstance [& args] (JR/call jfile "./GameFeatureUtil" "jm_getInstance" args))

# Java class GameFeatureItemStateListener
(var jproto nil)
(var jcell_toggleList :jnone)
(var jstatic_toggleList nil)
(var jsetstatic_toggleList nil)
(var jnew_1 nil)
(var jm_add nil)
(var jm_itemStateChanged nil)

(set jstatic_toggleList (fn jstatic_toggleList []
  (when (= jcell_toggleList :jnone) (set jcell_toggleList (BasicArrayListD/jnew_0)))
  jcell_toggleList))
(set jsetstatic_toggleList (fn jsetstatic_toggleList [value] (set jcell_toggleList value)))

    
(set jnew_1 (fn jnew_1 [_gameOptionsForm]
    (var this (table/setproto @{:jclass "GameFeatureItemStateListener" :f_logUtil nil :f_gameOptionsForm nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
        (set (this :f_gameOptionsForm) _gameOptionsForm)
        (var _gameFeatureFactory (GameFeatureFactory/jm_getInstance))
        (jm_add (_gameFeatureFactory :f_ARTIFICIAL_INTELLEGENCE_PROCESSOR))
        (jm_add (_gameFeatureFactory :f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR))
        (jm_add (_gameFeatureFactory :f_DAMAGE_FLOATERS))
        (jm_add (_gameFeatureFactory :f_DROPPED_ITEMS))
        (jm_add (_gameFeatureFactory :f_GAME_INPUT_LAYER_PROCESSOR))
        (jm_add (_gameFeatureFactory :f_HEALTH_BARS))
        (jm_add (_gameFeatureFactory :f_SOUND))
        (jm_add (_gameFeatureFactory :f_TICKABLE_LAYER_PROCESSOR))
    this))
    
(set jm_add (fn jm_add [_gameFeature]
        (if (not (JR/className (jstatic_toggleList)))
            (do
            (JR/className (jstatic_toggleList))))))
    
(set jm_itemStateChanged (fn jm_itemStateChanged [this _item]
        (try
            (do
            (var _itemLabel (:jm_getLabel _item))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_ITEM_LABEL)) _itemLabel)) this "itemStateChanged")
            (if (= (JR/className _item) "GameConfigurationGauge")
                (do
                (:jm_change (GameConfigurationUtil/jm_getInstance) (this :f_gameOptionsForm) _item))
                (if (= (JR/className _item) "ChoiceGroup")
                (do
                (var _gameFeatureUtil (GameFeatureUtil/jm_getInstance))
                (if (:jm_isExclusive _gameFeatureUtil _itemLabel)
                    (do
                    (:jm_updateExclusiveForChoiceGroup _gameFeatureUtil _item))
                    (do
                    (:jm_updateMultiple _gameFeatureUtil _item)))))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "itemStateChanged" _e))))))

(set jproto @{:jm_itemStateChanged jm_itemStateChanged})


