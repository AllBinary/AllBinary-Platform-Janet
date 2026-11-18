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
# package org.allbinary.game.resource

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/game/configuration/feature/GameFeatureControlledInterface :as GameFeatureControlledInterface)

# Java class ResourceRelativeRelationshipFactoryInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getResourceRelativeRelationshipList nil)
(var jm_addResourceRelativeRelationship nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ResourceRelativeRelationshipFactoryInterface"} jproto))
    this))

    
(set jm_getResourceRelativeRelationshipList (fn jm_getResourceRelativeRelationshipList [this _resource]
    (error (JR/newException "AbstractMethodError" "getResourceRelativeRelationshipList"))))
    
(set jm_addResourceRelativeRelationship (fn jm_addResourceRelativeRelationship [this _resource _relativeRelationship]
    (error (JR/newException "AbstractMethodError" "addResourceRelativeRelationship"))))

(set jproto @{:jm_getResourceRelativeRelationshipList jm_getResourceRelativeRelationshipList :jm_addResourceRelativeRelationship jm_addResourceRelativeRelationship})


