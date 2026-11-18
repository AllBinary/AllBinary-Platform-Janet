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
(import ../../../../../org/allbinary/thread/RunnableInterface :as RunnableInterface)

# Java class GameCanvasRunnableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getTitle nil)
(var jm_isInitialized nil)
(var jm_isPaused nil)
(var jm_unPause nil)
(var jm_pause nil)
(var jm_isHighScoreSubmitted nil)
(var jm_setHighScoreSubmitted nil)
(var jm_processGameOver nil)
(var jm_isGameOver nil)
(var jm_initCommands nil)
(var jm_getCurrentStateHashtable nil)
(var jm_getLoadStateHashtable nil)
(var jm_setLoadStateHashtable nil)
(var jm_getType nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameCanvasRunnableInterface"} jproto))
    this))

    
(set jm_getTitle (fn jm_getTitle [this]
    (error (JR/newException "AbstractMethodError" "getTitle"))))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (error (JR/newException "AbstractMethodError" "isInitialized"))))
    
(set jm_isPaused (fn jm_isPaused [this]
    (error (JR/newException "AbstractMethodError" "isPaused"))))
    
(set jm_unPause (fn jm_unPause [this]
    (error (JR/newException "AbstractMethodError" "unPause"))))
    
(set jm_pause (fn jm_pause [this]
    (error (JR/newException "AbstractMethodError" "pause"))))
    
(set jm_isHighScoreSubmitted (fn jm_isHighScoreSubmitted [this]
    (error (JR/newException "AbstractMethodError" "isHighScoreSubmitted"))))
    
(set jm_setHighScoreSubmitted (fn jm_setHighScoreSubmitted [this _highScoreSubmitted]
    (error (JR/newException "AbstractMethodError" "setHighScoreSubmitted"))))
    
(set jm_processGameOver (fn jm_processGameOver [this]
    (error (JR/newException "AbstractMethodError" "processGameOver"))))
    
(set jm_isGameOver (fn jm_isGameOver [this]
    (error (JR/newException "AbstractMethodError" "isGameOver"))))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
    (error (JR/newException "AbstractMethodError" "initCommands"))))
    
(set jm_getCurrentStateHashtable (fn jm_getCurrentStateHashtable [this]
    (error (JR/newException "AbstractMethodError" "getCurrentStateHashtable"))))
    
(set jm_getLoadStateHashtable (fn jm_getLoadStateHashtable [this]
    (error (JR/newException "AbstractMethodError" "getLoadStateHashtable"))))
    
(set jm_setLoadStateHashtable (fn jm_setLoadStateHashtable [this _hashtable]
    (error (JR/newException "AbstractMethodError" "setLoadStateHashtable"))))
    
(set jm_getType (fn jm_getType [this]
    (error (JR/newException "AbstractMethodError" "getType"))))

(set jproto @{:jm_getTitle jm_getTitle :jm_isInitialized jm_isInitialized :jm_isPaused jm_isPaused :jm_unPause jm_unPause :jm_pause jm_pause :jm_isHighScoreSubmitted jm_isHighScoreSubmitted :jm_setHighScoreSubmitted jm_setHighScoreSubmitted :jm_processGameOver jm_processGameOver :jm_isGameOver jm_isGameOver :jm_initCommands jm_initCommands :jm_getCurrentStateHashtable jm_getCurrentStateHashtable :jm_getLoadStateHashtable jm_getLoadStateHashtable :jm_setLoadStateHashtable jm_setLoadStateHashtable :jm_getType jm_getType})


