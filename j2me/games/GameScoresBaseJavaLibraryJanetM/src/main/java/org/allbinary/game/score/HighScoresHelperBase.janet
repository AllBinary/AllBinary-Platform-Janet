# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- LastFetchHighScoresFactory/jm_getInstance [& args] (JR/call jfile "./LastFetchHighScoresFactory" "jm_getInstance" args))
(defn- NullHighScoresSingletonFactory/jm_getInstance [& args] (JR/call jfile "./NullHighScoresSingletonFactory" "jm_getInstance" args))

# Java class HighScoresHelperBase
(var jproto nil)
(var jnew_0 nil)
(var jm_setHighScoresArray nil)
(var jm_getNextHighScores nil)
(var jm_isAnyHighScores nil)
(var jm_setSelectedHighScores nil)
(var jm_getSelectedHighScores nil)
(var jm_getHighScoresArray nil)
(var jm_selectHighScores nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresHelperBase" :f_logUtil nil :f_highScoresArrayP nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_highScoresArrayP ((LastFetchHighScoresFactory/jm_getInstance) :f_highScoresArray))
    this))

    
(set jm_setHighScoresArray (fn jm_setHighScoresArray [this _highScoresArrayP]
        (if (not (nil? _highScoresArrayP))
            (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) (_commonStrings :f_START)) (length _highScoresArrayP))) this "setHighScoresArray"))
            (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_putF (this :f_logUtil) (_commonStrings :f_START) this "setHighScoresArray")))
        (set (this :f_highScoresArrayP) _highScoresArrayP)))
    
(set jm_getNextHighScores (fn jm_getNextHighScores [this]
    (label jreturn
        (return jreturn (NullHighScoresSingletonFactory/jm_getInstance)))))
    
(set jm_isAnyHighScores (fn jm_isAnyHighScores [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_setSelectedHighScores (fn jm_setSelectedHighScores [this _selectedHighScores]
    nil))
    
(set jm_getSelectedHighScores (fn jm_getSelectedHighScores [this]
    (label jreturn
        (return jreturn (NullHighScoresSingletonFactory/jm_getInstance)))))
    
(set jm_getHighScoresArray (fn jm_getHighScoresArray [this]
    (label jreturn
        (return jreturn (this :f_highScoresArrayP)))))
    
(set jm_selectHighScores (fn jm_selectHighScores [this]
    nil))

(set jproto @{:jm_setHighScoresArray jm_setHighScoresArray :jm_getNextHighScores jm_getNextHighScores :jm_isAnyHighScores jm_isAnyHighScores :jm_setSelectedHighScores jm_setSelectedHighScores :jm_getSelectedHighScores jm_getSelectedHighScores :jm_getHighScoresArray jm_getHighScoresArray :jm_selectHighScores jm_selectHighScores})


