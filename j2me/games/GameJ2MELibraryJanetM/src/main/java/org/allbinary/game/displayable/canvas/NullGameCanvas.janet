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
(defn- NullCommandListener/jstatic_NULL_COMMAND_LISTENER [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullCommandListener" "jstatic_NULL_COMMAND_LISTENER" args))
(defn- BasicBuildGameInitializerFactory/jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY [& args] (JR/call jfile "../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory" "jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY" args))
(defn- AllBinaryGameLayerManager/jm_getNullInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" "jm_getNullInstance" args))
(defn- NoHighScoresFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NoHighScoresFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./AllBinaryGameCanvas :as AllBinaryGameCanvas)

# Java class NullGameCanvas
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jcell_NO_GAME :jnone)
(var jstatic_NO_GAME nil)
(var jsetstatic_NO_GAME nil)
(var jcell_TYPE :jnone)
(var jstatic_TYPE nil)
(var jsetstatic_TYPE nil)
(var jnew_1 nil)
(var jm_createNull nil)
(var jm_getInstance nil)
(var jm_createCanvas nil)
(var jm_isGameOver nil)
(var jm_setRunning nil)
(var jm_isRunning nil)
(var jm_pause nil)
(var jm_unPause nil)
(var jm_initCommands nil)
(var jm_buildGameInit nil)
(var jm_draw nil)
(var jm_run nil)
(var jm_getType nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jstatic_NO_GAME (fn jstatic_NO_GAME []
  (when (= jcell_NO_GAME :jnone) (set jcell_NO_GAME "No Background Game"))
  jcell_NO_GAME))
(set jsetstatic_NO_GAME (fn jsetstatic_NO_GAME [value] (set jcell_NO_GAME value)))

(set jstatic_TYPE (fn jstatic_TYPE []
  (when (= jcell_TYPE :jnone) (set jcell_TYPE 1))
  jcell_TYPE))
(set jsetstatic_TYPE (fn jsetstatic_TYPE [value] (set jcell_TYPE value)))

    
(set jm_createNull (fn jm_createNull []
    (label jreturn
        (try
            (do
            (return jreturn (jnew_1 (AllBinaryGameLayerManager/jm_getNullInstance))))
            ([_e] (do
            (:jm_put (LogUtil/jm_getInstance) ((CommonStrings/jm_getInstance) :f_EXCEPTION) "NullGameCanvas" ((CommonStrings/jm_getInstance) :f_GET_INSTANCE) _e)
            (error (JR/newException "RuntimeException"))))))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jm_createNull))))
        (return jreturn (jstatic_instance)))))
    
(set jm_createCanvas (fn jm_createCanvas [_gameLayerManager]
    (label jreturn
        (var _nullGameCanvas (jnew_1 _gameLayerManager))
        (:jm_setInitialized _nullGameCanvas true)
        (:jm_setTitle _nullGameCanvas (jstatic_NO_GAME))
        (return jreturn _nullGameCanvas))))
    
(set jnew_1 (fn jnew_1 [_gameLayerManager]
    (var this (table/setproto @{:jclass "NullGameCanvas" :f_runningNull false} jproto))
    (put this :f_runningNull true)
        (JR/superInit this (AllBinaryGameCanvas/jnew_5 (NullCommandListener/jstatic_NULL_COMMAND_LISTENER) _gameLayerManager (NoHighScoresFactory/jm_getInstance) (BasicBuildGameInitializerFactory/jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY) false))
        ((get AllBinaryGameCanvas/jproto :jm_setWait) this 1200)
    this))
    
(set jm_isGameOver (fn jm_isGameOver [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_setRunning (fn jm_setRunning [this _running]
        (set (this :f_runningNull) _running)))
    
(set jm_isRunning (fn jm_isRunning [this]
    (label jreturn
        (return jreturn (this :f_runningNull)))))
    
(set jm_pause (fn jm_pause [this]
        (:jm_setPaused this true)))
    
(set jm_unPause (fn jm_unPause [this]
        (:jm_setPaused this false)))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (:jm_removeAllCommands this)
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_buildGameInit (fn jm_buildGameInit [this _isProgress]
    nil))
    
(set jm_draw (fn jm_draw [this _graphics]
    nil))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (JR/className (this :f_logUtil))
            (JR/className (this :f_logUtil)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (jstatic_TYPE)))))

(set jproto (table/setproto @{:jm_isGameOver jm_isGameOver :jm_setRunning jm_setRunning :jm_isRunning jm_isRunning :jm_pause jm_pause :jm_unPause jm_unPause :jm_initCommands jm_initCommands :jm_buildGameInit jm_buildGameInit :jm_draw jm_draw :jm_run jm_run :jm_getType jm_getType} AllBinaryGameCanvas/jproto))


