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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/input/PlayerGameInput :as PlayerGameInput)
(defn- GameKeyEvent/jstatic_NONE [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEvent" "jstatic_NONE" args))
(defn- GameKeyEventUtil/jm_getKey [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEventUtil" "jm_getKey" args))
(defn- SpecialGameInputFactory/jstatic_NO_SPECIAL_GAME_INPUT [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/special/SpecialGameInputFactory" "jstatic_NO_SPECIAL_GAME_INPUT" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class CheatGameInputProcessor
(var jproto nil)
(var jcell_inputProcessor :jnone)
(var jstatic_inputProcessor nil)
(var jsetstatic_inputProcessor nil)
(var jnew_1 nil)
(var jm_update nil)

(set jstatic_inputProcessor (fn jstatic_inputProcessor []
  (when (= jcell_inputProcessor :jnone) (set jcell_inputProcessor (SpecialGameInputFactory/jstatic_NO_SPECIAL_GAME_INPUT)))
  jcell_inputProcessor))
(set jsetstatic_inputProcessor (fn jsetstatic_inputProcessor [value] (set jcell_inputProcessor value)))

    
(set jnew_1 (fn jnew_1 [_gameCanvas]
    (var this (table/setproto @{:jclass "CheatGameInputProcessor" :f_PROCESS_GAME nil :f_gameCanvas nil :f_gameKeyFactory nil} jproto))
    (put this :f_PROCESS_GAME "processGame")
    
    (put this :f_gameKeyFactory (GameKeyFactory/jm_getInstance))
        (JR/superInit this (PlayerGameInput/jnew_3 (BasicArrayListD/jnew_0) (BasicArrayListD/jnew_0) (JR/i32 (- 1))))
        (set (this :f_gameCanvas) _gameCanvas)
    this))
    
(set jm_update (fn jm_update [this]
        (try
            (do
            (var _gameLayerManager (:jm_getLayerManager (this :f_gameCanvas)))
            (var _list (:jm_getGameKeyEventList this))
            (var _size (:jm_size _list))
            (do
                (var _index 0)
                (var jbreak false)
                (while (and (not jbreak) (< _index _size))
                    (label jcontinue
                (var _anyType ((_list :f_objectArray) _index))
                (var _key (GameKeyEventUtil/jm_getKey _anyType))
                (if (= _key (JR/className ((this :f_gameKeyFactory) :f_LEVEL_DOWN)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue)))
                    (if (= _key (JR/className ((this :f_gameKeyFactory) :f_LEVEL_UP)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue)))))
                (if (= _key (JR/className ((this :f_gameKeyFactory) :f_LEFT)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue)))
                    (if (= _key (JR/className ((this :f_gameKeyFactory) :f_RIGHT)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue)))
                    (if (= _key (JR/className ((this :f_gameKeyFactory) :f_UP)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue)))
                    (if (= _key (JR/className ((this :f_gameKeyFactory) :f_DOWN)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue)))
                    (if (= _key (JR/className ((this :f_gameKeyFactory) :f_KEY_NUM1)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue)))
                    (if (= _key (JR/className ((this :f_gameKeyFactory) :f_KEY_NUM3)))
                    (do
                    (JR/className (jstatic_inputProcessor))
                    (do (set jbreak true) (return jcontinue))))))))))
                    (unless jbreak (set _index (JR/i32 (+ _index 1))))))
            (:jm_clear _list))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))

(set jproto (table/setproto @{:jm_update jm_update} PlayerGameInput/jproto))


