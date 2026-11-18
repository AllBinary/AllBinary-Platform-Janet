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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(import ./GameRunnable :as GameRunnable)

# Java class DemoGameRunnable
(var jproto nil)
(var jnew_1 nil)
(var jm_run nil)
(var jm_processLoopSleep nil)

    
(set jnew_1 (fn jnew_1 [_demoCanvas]
    (var this (table/setproto @{:jclass "DemoGameRunnable" :f_logUtil nil :f_demoCanvas nil :f_gameTickTimeDelayHelper nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
    (JR/superInit this (GameRunnable/jnew_0))
        (set (this :f_demoCanvas) _demoCanvas)
    this))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (JR/className (:jm_getLoopTimeHelperP (this :f_demoCanvas)))
            (:jm_processGame (this :f_demoCanvas)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_RUN) _e))))))
    
(set jm_processLoopSleep (fn jm_processLoopSleep [this]
        (:jm_processLoopSleep (this :f_demoCanvas))))

(set jproto (table/setproto @{:jm_run jm_run :jm_processLoopSleep jm_processLoopSleep} GameRunnable/jproto))


