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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class HighScoresBase
(var jproto nil)
(var jnew_0 nil)
(var jm_fetchHighScores nil)
(var jm_fetchHighScoresPreload nil)
(var jm_createHighScoresHelper nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresBase" :f_commonStrings nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    this))
    
(set jm_fetchHighScores (fn jm_fetchHighScores [this _gameInfo _highScoresResultsListener]
        (error (JR/newException "RuntimeException"))))
    
(set jm_fetchHighScoresPreload (fn jm_fetchHighScoresPreload [this _gameInfo _highScoresResultsListener _preload]
        (error (JR/newException "RuntimeException"))))
    
(set jm_createHighScoresHelper (fn jm_createHighScoresHelper [this]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_fetchHighScores jm_fetchHighScores :jm_fetchHighScoresPreload jm_fetchHighScoresPreload :jm_createHighScoresHelper jm_createHighScoresHelper})


