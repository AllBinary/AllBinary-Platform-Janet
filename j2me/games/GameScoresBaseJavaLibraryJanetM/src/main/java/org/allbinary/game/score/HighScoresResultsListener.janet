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

# Java class HighScoresResultsListener
(var jproto nil)
(var jnew_0 nil)
(var jm_setHighScoresArray nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresResultsListener"} jproto))
    this))

    
(set jm_setHighScoresArray (fn jm_setHighScoresArray [this _highScoresArrayP]
    (error (JR/newException "AbstractMethodError" "setHighScoresArray"))))

(set jproto @{:jm_setHighScoresArray jm_setHighScoresArray})


