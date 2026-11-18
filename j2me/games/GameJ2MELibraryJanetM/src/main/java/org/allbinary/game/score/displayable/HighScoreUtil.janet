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
# package org.allbinary.game.score.displayable

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Command/jnew_4 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Command" "jnew_4" args))
(defn- Command/jstatic_SCREEN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Command" "jstatic_SCREEN" args))
(defn- HighScoreNamePersistanceSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/HighScoreNamePersistanceSingleton" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class HighScoreUtil
(var jproto nil)
(var jcell_SUBMIT_TEXTBOX_COMMAND :jnone)
(var jstatic_SUBMIT_TEXTBOX_COMMAND nil)
(var jsetstatic_SUBMIT_TEXTBOX_COMMAND nil)
(var jnew_7 nil)
(var jm_setHighScoresArray nil)
(var jm_update nil)
(var jm_saveHighScore nil)
(var jm_submit nil)

(set jstatic_SUBMIT_TEXTBOX_COMMAND (fn jstatic_SUBMIT_TEXTBOX_COMMAND []
  (when (= jcell_SUBMIT_TEXTBOX_COMMAND :jnone) (set jcell_SUBMIT_TEXTBOX_COMMAND (Command/jnew_4 "Submit" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1)))
  jcell_SUBMIT_TEXTBOX_COMMAND))
(set jsetstatic_SUBMIT_TEXTBOX_COMMAND (fn jsetstatic_SUBMIT_TEXTBOX_COMMAND [value] (set jcell_SUBMIT_TEXTBOX_COMMAND value)))

    
(set jnew_7 (fn jnew_7 [_highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore]
    (var this (table/setproto @{:jclass "HighScoreUtil" :f_logUtil nil :f_commonStrings nil :f_highScoresFactoryInterface nil :f_highScoresArray nil :f_highScore nil :f_abeClientInformation nil :f_gameInfo nil :f_highScoresHelper nil :f_firstTime false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
    
    
    
    (put this :f_firstTime true)
        (set (this :f_highScoresFactoryInterface) _highScoresFactoryInterface)
        (set (this :f_highScoresHelper) _highScoresHelper)
        (set (this :f_highScoresArray) (:jm_getHighScoresArray (this :f_highScoresHelper)))
        (set (this :f_highScore) _highScore)
        (set (this :f_abeClientInformation) _abeClientInformation)
        (set (this :f_gameInfo) _gameInfo)
    this))
    
(set jm_setHighScoresArray (fn jm_setHighScoresArray [this _highScoresArray]
        (set (this :f_highScoresArray) _highScoresArray)
        (set (this :f_firstTime) false)
        (:jm_saveHighScore this)))
    
(set jm_update (fn jm_update [this _name]
        (:jm_save (HighScoreNamePersistanceSingleton/jm_getInstance) (this :f_abeClientInformation) (this :f_gameInfo) _name)
        (:jm_setName (this :f_highScore) _name)))
    
(set jm_saveHighScore (fn jm_saveHighScore [this]
    (label jreturn
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_commonStrings) :f_START)) (:jm_toString_1 (StringUtil/jm_getInstance) (this :f_highScore)))) this "saveHighScore")
        (var _size (length (this :f_highScoresArray)))
        (if (and (this :f_firstTime) (= _size 0))
            (do
            (:jm_putF (this :f_logUtil) "Games canvas did not give us any HighScores" this "saveHighScore")
            (:jm_fetchHighScores (this :f_highScoresFactoryInterface) (this :f_gameInfo) this)
            (return jreturn)))
        (var _highScores nil)
        (var _highScoresAsString nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _highScores ((this :f_highScoresArray) _index))
            (:jm_addHighScore _highScores (this :f_highScore))
            (set _highScoresAsString (:jm_toString _highScores))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Added/Adding Score: ") _highScoresAsString)) this "saveHighScore"))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_setHighScoresArray (this :f_highScoresHelper) (this :f_highScoresArray)))))
    
(set jm_submit (fn jm_submit [this _myCanvas]
        (var _commandListener (:jm_getCustomCommandListener _myCanvas))
        (:jm_commandAction _commandListener (jstatic_SUBMIT_TEXTBOX_COMMAND) _myCanvas)))

(set jproto @{:jm_setHighScoresArray jm_setHighScoresArray :jm_update jm_update :jm_saveHighScore jm_saveHighScore :jm_submit jm_submit})


