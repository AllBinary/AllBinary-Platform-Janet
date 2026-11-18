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
# package org.allbinary.game.configuration.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/logic/util/event/EventListenerInterface :as EventListenerInterface)

# Java class GameFeatureListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onGameFeatureChange nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameFeatureListenerInterface"} jproto))
    this))

    
(set jm_onGameFeatureChange (fn jm_onGameFeatureChange [this _gameFeatureEvent]
    (error (JR/newException "AbstractMethodError" "onGameFeatureChange"))))

(set jproto @{:jm_onGameFeatureChange jm_onGameFeatureChange})


