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
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(import ../../../../../java/lang/Thread :as Thread)
(import ../../../../../java/lang/Runnable :as Runnable)

# Java class GameRunnable
(var jproto nil)
(var jnew_0 nil)
(var jm_run nil)
(var jm_processLoopSleep nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameRunnable" :f_WAIT 0 :f_FAST 0 :f_waitInMillis 0} jproto))
    (put this :f_WAIT 240)
    (put this :f_FAST 60)
    (put this :f_waitInMillis (this :f_WAIT))
    this))
    
(set jm_run (fn jm_run [this]
        (:jm_process (DisplayInfoSingleton/jm_getInstance))))
    
(set jm_processLoopSleep (fn jm_processLoopSleep [this]
        (Thread/jm_sleep (this :f_waitInMillis))))

(set jproto @{:jm_run jm_run :jm_processLoopSleep jm_processLoopSleep})


