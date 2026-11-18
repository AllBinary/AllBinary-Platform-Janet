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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameInfo/jstatic_NONE [& args] (JR/call jfile "../../../../org/allbinary/game/GameInfo" "jstatic_NONE" args))
(defn- NullPlayerGameInputComposite/jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE [& args] (JR/call jfile "../../../../org/allbinary/game/input/NullPlayerGameInputComposite" "jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE" args))
(defn- ItemColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/ItemColorFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(import ../../../../org/allbinary/layer/AllBinaryLayerManager :as AllBinaryLayerManager)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class AllBinaryGameLayerManager
(var jproto nil)
(var jcell_NULL_ALLBINARY_LAYER_MANAGER :jnone)
(var jstatic_NULL_ALLBINARY_LAYER_MANAGER nil)
(var jsetstatic_NULL_ALLBINARY_LAYER_MANAGER nil)
(var jcell_ID :jnone)
(var jstatic_ID nil)
(var jsetstatic_ID nil)
(var jnew_3 nil)
(var jm_getNullInstance nil)
(var jm_getLayerManager nil)
(var jm_init nil)
(var jm_getBackgroundBasicColor nil)
(var jm_setBackgroundBasicColor nil)
(var jm_getForegroundBasicColor nil)
(var jm_setForegroundBasicColor nil)
(var jm_getGameInfo nil)
(var jm_setGameInfo nil)
(var jm_setLayerProcessorList nil)
(var jm_setPlayerGameInputCompositeInterface nil)
(var jm_getPlayerGameInputCompositeInterface nil)

(set jstatic_NULL_ALLBINARY_LAYER_MANAGER (fn jstatic_NULL_ALLBINARY_LAYER_MANAGER []
  (when (= jcell_NULL_ALLBINARY_LAYER_MANAGER :jnone) (set jcell_NULL_ALLBINARY_LAYER_MANAGER ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_ALLBINARY_LAYER_MANAGER))
(set jsetstatic_NULL_ALLBINARY_LAYER_MANAGER (fn jsetstatic_NULL_ALLBINARY_LAYER_MANAGER [value] (set jcell_NULL_ALLBINARY_LAYER_MANAGER value)))

(set jstatic_ID (fn jstatic_ID []
  (when (= jcell_ID :jnone) (set jcell_ID (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 22)))
  jcell_ID))
(set jsetstatic_ID (fn jsetstatic_ID [value] (set jcell_ID value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_NULL_ALLBINARY_LAYER_MANAGER) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_ALLBINARY_LAYER_MANAGER (jnew_3 ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE) (GameInfo/jstatic_NONE)))))
        (return jreturn (jstatic_NULL_ALLBINARY_LAYER_MANAGER)))))
    
(set jnew_3 (fn jnew_3 [_backgroundBasicColor _foregroundBasicColor _gameInfo]
    (var this (table/setproto @{:jclass "AllBinaryGameLayerManager" :f_backgroundBasicColor nil :f_foregroundBasicColor nil :f_gameInfo nil :f_playerGameInputCompositeInterface nil} jproto))
    
    
    
    (put this :f_playerGameInputCompositeInterface (NullPlayerGameInputComposite/jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE))
    (JR/superInit this (AllBinaryLayerManager/jnew_0))
        (set (this :f_backgroundBasicColor) _backgroundBasicColor)
        (set (this :f_foregroundBasicColor) _foregroundBasicColor)
        (var _itemColorFactory (ItemColorFactory/jm_getInstance))
        (set (_itemColorFactory :f_INVERT_PAINT) (:jm_intValue (this :f_backgroundBasicColor)))
        (set (_itemColorFactory :f_PAINT) (:jm_intValue (this :f_foregroundBasicColor)))
        (set (this :f_gameInfo) _gameInfo)
    this))
    
(set jm_getLayerManager (fn jm_getLayerManager [this]
    (label jreturn
        (return jreturn this))))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_getBackgroundBasicColor (fn jm_getBackgroundBasicColor [this]
    (label jreturn
        (return jreturn (this :f_backgroundBasicColor)))))
    
(set jm_setBackgroundBasicColor (fn jm_setBackgroundBasicColor [this _backgroundBasicColor]
        (set (this :f_backgroundBasicColor) _backgroundBasicColor)
        (set ((ItemColorFactory/jm_getInstance) :f_INVERT_PAINT) (:jm_intValue (this :f_backgroundBasicColor)))))
    
(set jm_getForegroundBasicColor (fn jm_getForegroundBasicColor [this]
    (label jreturn
        (return jreturn (this :f_foregroundBasicColor)))))
    
(set jm_setForegroundBasicColor (fn jm_setForegroundBasicColor [this _foregroundBasicColor]
        (set (this :f_foregroundBasicColor) _foregroundBasicColor)
        (set ((ItemColorFactory/jm_getInstance) :f_PAINT) (:jm_intValue (this :f_foregroundBasicColor)))))
    
(set jm_getGameInfo (fn jm_getGameInfo [this]
    (label jreturn
        (return jreturn (this :f_gameInfo)))))
    
(set jm_setGameInfo (fn jm_setGameInfo [this _gameInfo]
        (set (this :f_gameInfo) _gameInfo)))
    
(set jm_setLayerProcessorList (fn jm_setLayerProcessorList [this _list]
        (var _layerProcessorInterfaceArray (array/new-filled (:jm_size _list) nil))
        (var _size (length _layerProcessorInterfaceArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set (_layerProcessorInterfaceArray _index) ((_list :f_objectArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_setLayerProcessorArray this _layerProcessorInterfaceArray)))
    
(set jm_setPlayerGameInputCompositeInterface (fn jm_setPlayerGameInputCompositeInterface [this _playerGameInputCompositeInterface]
        (set (this :f_playerGameInputCompositeInterface) _playerGameInputCompositeInterface)))
    
(set jm_getPlayerGameInputCompositeInterface (fn jm_getPlayerGameInputCompositeInterface [this]
    (label jreturn
        (return jreturn (this :f_playerGameInputCompositeInterface)))))

(set jproto (table/setproto @{:jm_getLayerManager jm_getLayerManager :jm_init jm_init :jm_getBackgroundBasicColor jm_getBackgroundBasicColor :jm_setBackgroundBasicColor jm_setBackgroundBasicColor :jm_getForegroundBasicColor jm_getForegroundBasicColor :jm_setForegroundBasicColor jm_setForegroundBasicColor :jm_getGameInfo jm_getGameInfo :jm_setGameInfo jm_setGameInfo :jm_setLayerProcessorList jm_setLayerProcessorList :jm_setPlayerGameInputCompositeInterface jm_setPlayerGameInputCompositeInterface :jm_getPlayerGameInputCompositeInterface jm_getPlayerGameInputCompositeInterface} AllBinaryLayerManager/jproto))


