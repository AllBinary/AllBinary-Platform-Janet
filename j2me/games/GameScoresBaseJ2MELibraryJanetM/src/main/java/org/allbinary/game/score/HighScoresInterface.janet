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

# Java class HighScoresInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getList nil)
(var jm_addHighScore nil)
(var jm_getTotal nil)
(var jm_isBestScore nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresInterface"} jproto))
    this))

    
(set jm_getList (fn jm_getList [this]
    (error (JR/newException "AbstractMethodError" "getList"))))
    
(set jm_addHighScore (fn jm_addHighScore [this _newHighScore]
    (error (JR/newException "AbstractMethodError" "addHighScore"))))
    
(set jm_getTotal (fn jm_getTotal [this]
    (error (JR/newException "AbstractMethodError" "getTotal"))))
    
(set jm_isBestScore (fn jm_isBestScore [this _newHighScore]
    (error (JR/newException "AbstractMethodError" "isBestScore"))))

(set jproto @{:jm_getList jm_getList :jm_addHighScore jm_addHighScore :jm_getTotal jm_getTotal :jm_isBestScore jm_isBestScore})


