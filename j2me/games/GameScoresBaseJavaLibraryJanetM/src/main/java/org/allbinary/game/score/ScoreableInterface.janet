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

# Java class ScoreableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getPoints nil)
(var jm_addPoints nil)
(var jm_removePoints nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ScoreableInterface"} jproto))
    this))

    
(set jm_getPoints (fn jm_getPoints [this]
    (error (JR/newException "AbstractMethodError" "getPoints"))))
    
(set jm_addPoints (fn jm_addPoints [this _points]
    (error (JR/newException "AbstractMethodError" "addPoints"))))
    
(set jm_removePoints (fn jm_removePoints [this _points]
    (error (JR/newException "AbstractMethodError" "removePoints"))))

(set jproto @{:jm_getPoints jm_getPoints :jm_addPoints jm_addPoints :jm_removePoints jm_removePoints})


