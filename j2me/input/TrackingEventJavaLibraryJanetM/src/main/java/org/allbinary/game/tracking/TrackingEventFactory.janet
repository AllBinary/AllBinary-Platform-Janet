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
# package org.allbinary.game.tracking

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TrackingEvent/jnew_1 [& args] (JR/call jfile "./TrackingEvent" "jnew_1" args))
(defn- TrackingEventHandler/jm_getInstance [& args] (JR/call jfile "./TrackingEventHandler" "jm_getInstance" args))

# Java class TrackingEventFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TrackingEventFactory"} jproto))
    this))
    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (TrackingEvent/jnew_1 (TrackingEventHandler/jm_getInstance))))))

(set jproto @{:jm_getInstance jm_getInstance})


