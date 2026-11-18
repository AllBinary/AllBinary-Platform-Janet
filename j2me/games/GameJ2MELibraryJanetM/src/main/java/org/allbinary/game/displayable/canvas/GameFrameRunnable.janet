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
(defn- GameTickDisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(import ./GameRunnable :as GameRunnable)

# Java class GameFrameRunnable
(var jproto nil)
(var jnew_1 nil)
(var jm_run nil)

    
(set jnew_1 (fn jnew_1 [_allBinaryGameCanvas]
    (var this (table/setproto @{:jclass "GameFrameRunnable" :f_logUtil nil :f_gameTickDisplayInfoSingleton nil :f_allBinaryGameCanvas nil :f_gameTickTimeDelayHelper nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_gameTickDisplayInfoSingleton (GameTickDisplayInfoSingleton/jm_getInstance))
    
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
    (JR/superInit this (GameRunnable/jnew_0))
        (set (this :f_allBinaryGameCanvas) _allBinaryGameCanvas)
    this))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (var _allBinaryGameCanvas (this :f_allBinaryGameCanvas))
            (JR/className (:jm_getLoopTimeHelperP _allBinaryGameCanvas))
            (:jm_update (this :f_gameTickDisplayInfoSingleton))
            (:jm_processGame _allBinaryGameCanvas)
            (if (or (not (:jm_isRunning _allBinaryGameCanvas)) (:jm_isPaused _allBinaryGameCanvas))
                (do
                (:jm_notifyDonePainting _allBinaryGameCanvas))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_RUN) _e))))))

(set jproto (table/setproto @{:jm_run jm_run} GameRunnable/jproto))


