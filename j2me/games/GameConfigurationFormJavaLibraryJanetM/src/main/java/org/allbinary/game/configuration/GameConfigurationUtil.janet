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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- GameConfigurationSingleton/jm_getInstance [& args] (JR/call jfile "./GameConfigurationSingleton" "jm_getInstance" args))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "./GameConfigurationCentral" "jm_getInstance" args))

# Java class GameConfigurationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_change nil)
(var jm_update nil)
(var jm_setDefault nil)
(var jm_updateChallange nil)
(var jm_updateCompetitionValue nil)
(var jm_getCompetitionValue nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameConfigurationUtil" :f_logUtil nil :f_commonStrings nil :f_GAUGE_UPDATE nil :f_FROM nil :f_TO nil :f_COMPETITION_VALUE 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_GAUGE_UPDATE "Gauge Update: ")
    (put this :f_FROM " from: ")
    (put this :f_TO " to: ")
    (put this :f_COMPETITION_VALUE 1)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_change (fn jm_change [this _gameOptionsForm _gauge]
        (:jm_update this _gauge)
        (var _gameConfigurationSingleton (GameConfigurationSingleton/jm_getInstance))
        (var _gameConfiguration (:jm_getInstanceByName _gameConfigurationSingleton (:jm_getLabel _gauge)))
        (:jm_updateChallange this _gameOptionsForm _gameConfiguration)))
    
(set jm_update (fn jm_update [this _gauge]
        (var _gameConfigurationSingleton (GameConfigurationSingleton/jm_getInstance))
        (var _gameConfiguration (:jm_getInstanceByName _gameConfigurationSingleton (:jm_getLabel _gauge)))
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (var _value (:jm_getAt _smallIntegerSingletonFactory (JR/i32 (+ (:jm_getValue _gauge) (JR/className (:jm_getMinValue _gameConfiguration))))))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (this :f_GAUGE_UPDATE))
        (:jm_append _stringBuffer (:jm_getName _gameConfiguration))
        (:jm_append _stringBuffer (this :f_FROM))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue _gameConfiguration)))
        (:jm_append _stringBuffer (this :f_TO))
        (:jm_appendint _stringBuffer (:jm_intValue _value))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this ((this :f_commonStrings) :f_UPDATE))
        (:jm_setValue _gameConfiguration _value)))
    
(set jm_setDefault (fn jm_setDefault [this _gauge]
        (var _gameConfigurationSingleton (GameConfigurationSingleton/jm_getInstance))
        (var _gameConfiguration (:jm_getInstanceByName _gameConfigurationSingleton (:jm_getLabel _gauge)))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Gauge Default: ")
        (:jm_append _stringBuffer (:jm_getName _gameConfiguration))
        (:jm_append _stringBuffer (this :f_TO))
        (:jm_appendint _stringBuffer (JR/className (:jm_getDefaultValue _gameConfiguration)))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this "setDefault")
        (:jm_setValue _gauge (JR/i32 (- (JR/className (:jm_getDefaultValue _gameConfiguration)) (JR/className (:jm_getMinValue _gameConfiguration)))))
        (:jm_setValue _gameConfiguration (:jm_getDefaultValue _gameConfiguration))))
    
(set jm_updateChallange (fn jm_updateChallange [this _gameOptionsForm _gameConfiguration]
        (var _gameConfigurationSingleton (GameConfigurationSingleton/jm_getInstance))
        (var _gameConfigurationCentral (GameConfigurationCentral/jm_getInstance))
        (if (= _gameConfiguration (_gameConfigurationCentral :f_CHALLENGE_LEVEL))
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this "updateChallange")
            (JR/className (_gameConfigurationCentral :f_COLLIDE_DAMAGE))
            (JR/className (_gameConfigurationCentral :f_ATTACK_CHALLENGE_LEVEL))
            (JR/className (_gameConfigurationCentral :f_DURABILITY_CHALLENGE_LEVEL))
            (JR/className (_gameConfigurationCentral :f_SPEED_CHALLENGE_LEVEL))
            (var _size (:jm_size _gameOptionsForm))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (var _item (:jm_get _gameOptionsForm _index))
                (if (= (JR/className _item) "GameConfigurationGauge")
                    (do
                    (var _gauge _item)
                    (var _name (:jm_getLabel _item))
                    (var _nextGameConfiguration (:jm_getInstanceByName _gameConfigurationSingleton _name))
                    (if (= _nextGameConfiguration (_gameConfigurationCentral :f_COLLIDE_DAMAGE))
                        (do
                        (:jm_setValue _gauge (JR/i32 (- (JR/className (JR/className (_gameConfigurationCentral :f_COLLIDE_DAMAGE))) (JR/className (:jm_getMinValue _gameConfiguration))))))
                        (if (= _nextGameConfiguration (_gameConfigurationCentral :f_DURABILITY_CHALLENGE_LEVEL))
                        (do
                        (:jm_setValue _gauge (JR/i32 (- (JR/className (JR/className (_gameConfigurationCentral :f_DURABILITY_CHALLENGE_LEVEL))) (JR/className (:jm_getMinValue _gameConfiguration))))))
                        (if (= _nextGameConfiguration (_gameConfigurationCentral :f_ATTACK_CHALLENGE_LEVEL))
                        (do
                        (:jm_setValue _gauge (JR/i32 (- (JR/className (JR/className (_gameConfigurationCentral :f_ATTACK_CHALLENGE_LEVEL))) (JR/className (:jm_getMinValue _gameConfiguration))))))
                        (if (= _nextGameConfiguration (_gameConfigurationCentral :f_SPEED_CHALLENGE_LEVEL))
                        (do
                        (:jm_setValue _gauge (JR/i32 (- (JR/className (JR/className (_gameConfigurationCentral :f_SPEED_CHALLENGE_LEVEL))) (JR/className (:jm_getMinValue _gameConfiguration)))))))))))))
                    (do (set _index (JR/i32 (+ _index 1))))))))))
    
(set jm_updateCompetitionValue (fn jm_updateCompetitionValue [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this "updateCompetitionValue")
        (var _gameConfigurationCentral (GameConfigurationCentral/jm_getInstance))
        (set (this :f_COMPETITION_VALUE) (JR/i32 (+ (JR/i32 (+ (JR/i32 (+ (JR/className (JR/className (_gameConfigurationCentral :f_COLLIDE_DAMAGE))) (JR/className (JR/className (_gameConfigurationCentral :f_ATTACK_CHALLENGE_LEVEL))))) (JR/className (JR/className (_gameConfigurationCentral :f_DURABILITY_CHALLENGE_LEVEL))))) (JR/className (JR/className (_gameConfigurationCentral :f_SPEED_CHALLENGE_LEVEL))))))
        (set (this :f_COMPETITION_VALUE) (brshift (this :f_COMPETITION_VALUE) 2))))
    
(set jm_getCompetitionValue (fn jm_getCompetitionValue [this]
    (label jreturn
        (return jreturn (this :f_COMPETITION_VALUE)))))

(set jproto @{:jm_change jm_change :jm_update jm_update :jm_setDefault jm_setDefault :jm_updateChallange jm_updateChallange :jm_updateCompetitionValue jm_updateCompetitionValue :jm_getCompetitionValue jm_getCompetitionValue})


