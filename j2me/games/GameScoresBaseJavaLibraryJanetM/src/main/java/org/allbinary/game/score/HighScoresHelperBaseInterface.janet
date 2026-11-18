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
(import ./HighScoresResultsListener :as HighScoresResultsListener)

# Java class HighScoresHelperBaseInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setSelectedHighScores nil)
(var jm_getHighScoresArray nil)
(var jm_getSelectedHighScores nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresHelperBaseInterface"} jproto))
    this))

    
(set jm_setSelectedHighScores (fn jm_setSelectedHighScores [this _selectedHighScores]
    (error (JR/newException "AbstractMethodError" "setSelectedHighScores"))))
    
(set jm_getHighScoresArray (fn jm_getHighScoresArray [this]
    (error (JR/newException "AbstractMethodError" "getHighScoresArray"))))
    
(set jm_getSelectedHighScores (fn jm_getSelectedHighScores [this]
    (error (JR/newException "AbstractMethodError" "getSelectedHighScores"))))

(set jproto @{:jm_setSelectedHighScores jm_setSelectedHighScores :jm_getHighScoresArray jm_getHighScoresArray :jm_getSelectedHighScores jm_getSelectedHighScores})


