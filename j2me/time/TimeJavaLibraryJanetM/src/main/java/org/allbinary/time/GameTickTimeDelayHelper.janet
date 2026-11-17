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
# package org.allbinary.time

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/lang/System :as System)
(import ../../../java/lang/Long :as Long)

# Java class GameTickTimeDelayHelper
(var jproto nil)
(var jnew_1 nil)
(var jm_setStartTime nil)
(var jm_loop nil)
(var jm_getTimeFromStart nil)

    
(set jnew_1 (fn jnew_1 [_startTime]
    (var this (table/setproto @{:jclass "GameTickTimeDelayHelper" :f_timeDelta 0 :f_startTime 0 :f_lastStartTime 0} jproto))
    
    
    
        (set (this :f_startTime) _startTime)
        (set (this :f_lastStartTime) 0)
    this))
    
(set jm_setStartTime (fn jm_setStartTime [this]
    (label jreturn
        (set (this :f_startTime) (JR/currentTimeMillis))
        (return jreturn (this :f_startTime)))))
    
(set jm_loop (fn jm_loop [this]
        (if (= (this :f_lastStartTime) (Long/jstatic_MIN_VALUE))
            (do
            (set (this :f_timeDelta) 0))
            (do
            (set (this :f_timeDelta) (- (JR/currentTimeMillis) (this :f_lastStartTime)))))))
    
(set jm_getTimeFromStart (fn jm_getTimeFromStart [this]
    (label jreturn
        (return jreturn (- (this :f_startTime) (this :f_lastStartTime))))))

(set jproto @{:jm_setStartTime jm_setStartTime :jm_loop jm_loop :jm_getTimeFromStart jm_getTimeFromStart})


