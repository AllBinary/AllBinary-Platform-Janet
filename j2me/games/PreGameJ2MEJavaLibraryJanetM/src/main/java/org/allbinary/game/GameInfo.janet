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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(import ../../../java/lang/Integer :as Integer)
(defn- GameTypeFactory/jm_getInstance [& args] (JR/call jfile "./GameTypeFactory" "jm_getInstance" args))
(defn- GameMode/jstatic_NONE [& args] (JR/call jfile "./GameMode" "jstatic_NONE" args))
(defn- PlayerTypesFactory/jm_getInstance [& args] (JR/call jfile "./PlayerTypesFactory" "jm_getInstance" args))
(defn- GameInfoData/jm_getInstance [& args] (JR/call jfile "./GameInfoData" "jm_getInstance" args))

# Java class GameInfo
(var jproto nil)
(var jcell_NONE :jnone)
(var jstatic_NONE nil)
(var jsetstatic_NONE nil)
(var jcell_LEVEL_NAME :jnone)
(var jstatic_LEVEL_NAME nil)
(var jsetstatic_LEVEL_NAME nil)
(var jnew_5 nil)
(var jm_getGameType nil)
(var jm_getGameMode nil)
(var jm_getPlayerType nil)
(var jm_getHighestLevel nil)
(var jm_setHighestLevel nil)
(var jm_getCurrentLevel nil)
(var jm_setCurrentLevel nil)
(var jm_nextGameLevel nil)
(var jm_previousGameLevel nil)
(var jm_isLastLevel nil)
(var jm_toHashtable nil)
(var jm_toString nil)

(set jstatic_NONE (fn jstatic_NONE []
  (when (= jcell_NONE :jnone) (set jcell_NONE (jnew_5 ((GameTypeFactory/jm_getInstance) :f_NONE) (GameMode/jstatic_NONE) ((PlayerTypesFactory/jm_getInstance) :f_PLAYER_TYPE_ONE) (JR/i32 (- 1)) (JR/i32 (- 1)))))
  jcell_NONE))
(set jsetstatic_NONE (fn jsetstatic_NONE [value] (set jcell_NONE value)))

(set jstatic_LEVEL_NAME (fn jstatic_LEVEL_NAME []
  (when (= jcell_LEVEL_NAME :jnone) (set jcell_LEVEL_NAME "LEVEL"))
  jcell_LEVEL_NAME))
(set jsetstatic_LEVEL_NAME (fn jsetstatic_LEVEL_NAME [value] (set jcell_LEVEL_NAME value)))

    
(set jnew_5 (fn jnew_5 [_gameType _gameMode _playerType _highestLevel _currentLevel]
    (var this (table/setproto @{:jclass "GameInfo" :f_logUtil nil :f_gameInfoData nil :f_gameType nil :f_gameMode nil :f_playerType nil :f_highestLevel 0 :f_currentLevel 0 :f_NEW_LEVEL nil :f_SET_CURRENT_LEVEL nil :f_NEXT_GAME_LEVEL nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_gameInfoData (GameInfoData/jm_getInstance))
    
    
    
    
    
    (put this :f_NEW_LEVEL "New Level: ")
    (put this :f_SET_CURRENT_LEVEL "setCurrentLevel")
    (put this :f_NEXT_GAME_LEVEL "nextGameLevel")
        (set (this :f_gameType) _gameType)
        (set (this :f_gameMode) _gameMode)
        (:jm_setHighestLevel this _highestLevel)
        (set (this :f_currentLevel) _currentLevel)
        (set (this :f_playerType) _playerType)
    this))
    
(set jm_getGameType (fn jm_getGameType [this]
    (label jreturn
        (return jreturn (this :f_gameType)))))
    
(set jm_getGameMode (fn jm_getGameMode [this]
    (label jreturn
        (return jreturn (this :f_gameMode)))))
    
(set jm_getPlayerType (fn jm_getPlayerType [this]
    (label jreturn
        (return jreturn (this :f_playerType)))))
    
(set jm_getHighestLevel (fn jm_getHighestLevel [this]
    (label jreturn
        (return jreturn (this :f_highestLevel)))))
    
(set jm_setHighestLevel (fn jm_setHighestLevel [this _highestLevel]
        (set (this :f_highestLevel) _highestLevel)))
    
(set jm_getCurrentLevel (fn jm_getCurrentLevel [this]
    (label jreturn
        (return jreturn (this :f_currentLevel)))))
    
(set jm_setCurrentLevel (fn jm_setCurrentLevel [this _currentLevel]
        (set (this :f_currentLevel) _currentLevel)
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) (this :f_NEW_LEVEL)) (:jm_getCurrentLevel this))) this (this :f_SET_CURRENT_LEVEL))))
    
(set jm_nextGameLevel (fn jm_nextGameLevel [this]
        (if (< (:jm_getCurrentLevel this) (:jm_getHighestLevel this))
            (do
            (set (this :f_currentLevel) (JR/i32 (+ (this :f_currentLevel) 1)))))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_NEXT)) ((CommonSeps/jm_getInstance) :f_SPACE)) (this :f_NEW_LEVEL)) (:jm_getCurrentLevel this))) this (this :f_NEXT_GAME_LEVEL))))
    
(set jm_previousGameLevel (fn jm_previousGameLevel [this]
        (if (> (:jm_getCurrentLevel this) 1)
            (do
            (set (this :f_currentLevel) (JR/i32 (- (this :f_currentLevel) 1)))))))
    
(set jm_isLastLevel (fn jm_isLastLevel [this]
    (label jreturn
        (if (>= (:jm_getCurrentLevel this) (:jm_getHighestLevel this))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_toHashtable (fn jm_toHashtable [this]
    (label jreturn
        (var _hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
        (:jm_put _hashtable ((this :f_gameInfoData) :f_GAME_TYPE) (:jm_toString (:jm_getGameType this)))
        (:jm_put _hashtable ((this :f_gameInfoData) :f_GAME_MODE) (:jm_toString (this :f_gameMode)))
        (:jm_put _hashtable ((this :f_gameInfoData) :f_PLAYER_TYPE) (:jm_toString (this :f_playerType)))
        (:jm_put _hashtable ((this :f_gameInfoData) :f_HIGHEST_LEVEL) (JR/str (:jm_getHighestLevel this)))
        (:jm_put _hashtable ((this :f_gameInfoData) :f_CURRENT_LEVEL) (JR/str (this :f_currentLevel)))
        (return jreturn _hashtable))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (:jm_append _stringBuffer ((this :f_gameInfoData) :f_GAME_TYPE))
        (:jm_append _stringBuffer (_commonSeps :f_EQUALS))
        (:jm_append _stringBuffer (:jm_toString (:jm_getGameType this)))
        (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP))
        (:jm_append _stringBuffer ((this :f_gameInfoData) :f_GAME_MODE))
        (:jm_append _stringBuffer (_commonSeps :f_EQUALS))
        (:jm_append _stringBuffer (:jm_toString (this :f_gameMode)))
        (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP))
        (:jm_append _stringBuffer ((this :f_gameInfoData) :f_PLAYER_TYPE))
        (:jm_append _stringBuffer (_commonSeps :f_EQUALS))
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (this :f_playerType)))
        (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP))
        (:jm_append _stringBuffer ((this :f_gameInfoData) :f_HIGHEST_LEVEL))
        (:jm_append _stringBuffer (_commonSeps :f_EQUALS))
        (:jm_appendint _stringBuffer (:jm_getHighestLevel this))
        (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP))
        (:jm_append _stringBuffer ((this :f_gameInfoData) :f_CURRENT_LEVEL))
        (:jm_append _stringBuffer (_commonSeps :f_EQUALS))
        (:jm_appendint _stringBuffer (this :f_currentLevel))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getGameType jm_getGameType :jm_getGameMode jm_getGameMode :jm_getPlayerType jm_getPlayerType :jm_getHighestLevel jm_getHighestLevel :jm_setHighestLevel jm_setHighestLevel :jm_getCurrentLevel jm_getCurrentLevel :jm_setCurrentLevel jm_setCurrentLevel :jm_nextGameLevel jm_nextGameLevel :jm_previousGameLevel jm_previousGameLevel :jm_isLastLevel jm_isLastLevel :jm_toHashtable jm_toHashtable :jm_toString jm_toString})


