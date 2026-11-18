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
# package org.allbinary.game.combat.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DestroyedLayerProcessor/jm_init [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor" "jm_init" args))
(defn- DestroyedLayerProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor" "jm_getInstance" args))
(defn- DestroyEventCircularStaticPool/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool" "jm_getInstance" args))
(defn- DestroyedEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler" "jm_getInstance" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas :as AllBinaryGameCanvas)
(defn- DropLayerProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/drop/DropLayerProcessor" "jm_getInstance" args))
(defn- GroupLayerManagerListener/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener" "jm_getInstance" args))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))

# Java class CombatGameCanvas
(var jproto nil)
(var jcell_basicLayerProcessor :jnone)
(var jstatic_basicLayerProcessor nil)
(var jsetstatic_basicLayerProcessor nil)
(var jnew_5 nil)
(var jm_CombatGameCanvas_init nil)
(var jm_initApp nil)
(var jm_initConfigurablePortion nil)
(var jm_processPlayingGame nil)
(var jm_cleanupGame nil)
(var jm_cleanupManager nil)

(set jstatic_basicLayerProcessor (fn jstatic_basicLayerProcessor []
  (when (= jcell_basicLayerProcessor :jnone) (set jcell_basicLayerProcessor (array/new-filled 0 nil)))
  jcell_basicLayerProcessor))
(set jsetstatic_basicLayerProcessor (fn jsetstatic_basicLayerProcessor [value] (set jcell_basicLayerProcessor value)))

    
(set jnew_5 (fn jnew_5 [_cmdListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered]
    (var this (table/setproto @{:jclass "CombatGameCanvas"} jproto))
        (JR/superInit this (AllBinaryGameCanvas/jnew_5 _cmdListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered))
    this))
    
(set jm_CombatGameCanvas_init (fn jm_CombatGameCanvas_init [this]
        (:jm_init (DestroyEventCircularStaticPool/jm_getInstance) this)
        (:jm_addNormalPortion (ProgressCanvasFactory/jm_getInstance) 50 "Destroy Events")))
    
(set jm_initApp (fn jm_initApp [this _abeClientInformation]
        (:jm_CombatGameCanvas_init this)
        ((get AllBinaryGameCanvas/jproto :jm_initApp) this _abeClientInformation)))
    
(set jm_initConfigurablePortion (fn jm_initConfigurablePortion [this _portion]
        (DestroyedLayerProcessor/jm_init)
        (:jm_addNormalPortion (ProgressCanvasFactory/jm_getInstance) _portion "Basic Processors")
        (var _features (Features/jm_getInstance))
        (var _gameFeatureFactory (GameFeatureFactory/jm_getInstance))
        (if (and (:jm_isFeature _features (_gameFeatureFactory :f_DROPPED_ITEMS)) (:jm_isFeature _features (_gameFeatureFactory :f_DROPPED_ITEMS_FROM_DEATH)))
            (do
            (set jcell_basicLayerProcessor (array/new-filled 2 nil))
            (set ((jstatic_basicLayerProcessor) 0) (DestroyedLayerProcessor/jm_getInstance))
            (set ((jstatic_basicLayerProcessor) 1) (DropLayerProcessor/jm_getInstance)))
            (do
            (set jcell_basicLayerProcessor (array/new-filled 1 nil))
            (set ((jstatic_basicLayerProcessor) 0) (DestroyedLayerProcessor/jm_getInstance))))))
    
(set jm_processPlayingGame (fn jm_processPlayingGame [this]
        ((get AllBinaryGameCanvas/jproto :jm_processPlayingGame) this)
        (do
            (var _index (length (jstatic_basicLayerProcessor)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (JR/className ((jstatic_basicLayerProcessor) _index)))))))
    
(set jm_cleanupGame (fn jm_cleanupGame [this]
        ((get AllBinaryGameCanvas/jproto :jm_cleanupGame) this)
        (do
            (var _index (length (jstatic_basicLayerProcessor)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (JR/className (JR/className ((jstatic_basicLayerProcessor) _index))))))
        (:jm_clear (GroupLayerManagerListener/jm_getInstance))
        (:jm_log (GroupLayerManagerListener/jm_getInstance))
        (:jm_removeAllListeners (DestroyedEventHandler/jm_getInstance))
        (:jm_cleanupManager this)))
    
(set jm_cleanupManager (fn jm_cleanupManager [this]
        (:jm_cleanup (this :f_gameLayerManager))))

(set jproto (table/setproto @{:jm_CombatGameCanvas_init jm_CombatGameCanvas_init :jm_initApp jm_initApp :jm_initConfigurablePortion jm_initConfigurablePortion :jm_processPlayingGame jm_processPlayingGame :jm_cleanupGame jm_cleanupGame :jm_cleanupManager jm_cleanupManager} AllBinaryGameCanvas/jproto))


