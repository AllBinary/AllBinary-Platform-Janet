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
# package org.allbinary.game.identification

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GroupInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getGroupName nil)
(var jm_getGroupId nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GroupInterface"} jproto))
    this))

    
(set jm_getGroupName (fn jm_getGroupName [this]
    (error (JR/newException "AbstractMethodError" "getGroupName"))))
    
(set jm_getGroupId (fn jm_getGroupId [this]
    (error (JR/newException "AbstractMethodError" "getGroupId"))))

(set jproto @{:jm_getGroupName jm_getGroupName :jm_getGroupId jm_getGroupId})


