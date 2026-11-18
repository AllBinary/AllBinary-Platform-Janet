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

# Java class IntermissionCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getStartIntermissionInterface nil)
(var jm_getEndLevelIntermissionInterface nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IntermissionCompositeInterface"} jproto))
    this))

    
(set jm_getStartIntermissionInterface (fn jm_getStartIntermissionInterface [this]
    (error (JR/newException "AbstractMethodError" "getStartIntermissionInterface"))))
    
(set jm_getEndLevelIntermissionInterface (fn jm_getEndLevelIntermissionInterface [this]
    (error (JR/newException "AbstractMethodError" "getEndLevelIntermissionInterface"))))

(set jproto @{:jm_getStartIntermissionInterface jm_getStartIntermissionInterface :jm_getEndLevelIntermissionInterface jm_getEndLevelIntermissionInterface})


