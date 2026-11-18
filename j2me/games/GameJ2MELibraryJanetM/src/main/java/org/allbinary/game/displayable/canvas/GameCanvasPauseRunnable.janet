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
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./GameRunnable :as GameRunnable)

# Java class GameCanvasPauseRunnable
(var jproto nil)
(var jnew_1 nil)
(var jm_run nil)
(var jm_processLoopSleep nil)

    
(set jnew_1 (fn jnew_1 [_allBinaryGameCanvas]
    (var this (table/setproto @{:jclass "GameCanvasPauseRunnable" :f_logUtil nil :f_allBinaryGameCanvas nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (JR/superInit this (GameRunnable/jnew_0))
        (set (this :f_allBinaryGameCanvas) _allBinaryGameCanvas)
    this))
    
(set jm_run (fn jm_run [this]
    nil))
    
(set jm_processLoopSleep (fn jm_processLoopSleep [this]
        (try
            (do
            (var _features (Features/jm_getInstance))
            (var _isOpenGL (:jm_isDefault _features ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL)))
            (if _isOpenGL
                (do
                (:jm_processSleep (this :f_allBinaryGameCanvas)))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_RUN) _e))))))

(set jproto (table/setproto @{:jm_run jm_run :jm_processLoopSleep jm_processLoopSleep} GameRunnable/jproto))


