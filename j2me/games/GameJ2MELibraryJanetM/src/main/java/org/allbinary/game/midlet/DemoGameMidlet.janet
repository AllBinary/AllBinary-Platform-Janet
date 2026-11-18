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
# package org.allbinary.game.midlet

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- PrimaryThreadPool/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/thread/PrimaryThreadPool" "jm_getInstance" args))
(defn- NullGameCanvasRunnable/jstatic_NULL_GAME_CANVAS_RUNNABLE [& args] (JR/call jfile "../../../../org/allbinary/game/displayable/canvas/NullGameCanvasRunnable" "jstatic_NULL_GAME_CANVAS_RUNNABLE" args))
(import ./GameMidlet :as GameMidlet)
(defn- DemoRunnable/jnew_1 [& args] (JR/call jfile "./DemoRunnable" "jnew_1" args))
(defn- CreateGameRunnable/jnew_2 [& args] (JR/call jfile "./CreateGameRunnable" "jnew_2" args))

# Java class DemoGameMidlet
(var jproto nil)
(var jnew_1 nil)
(var jm_isContinue nil)
(var jm_getHighestLevel nil)
(var jm_createDemoGameCanvasRunnableInterface nil)
(var jm_createGameCanvasRunnable nil)
(var jm_createGameCanvasRunnableInterface nil)
(var jm_demoSetup nil)
(var jm_postDemoSetup nil)
(var jm_setDemo nil)
(var jm_createGame nil)
(var jm_isReady nil)

    
(set jnew_1 (fn jnew_1 [_clientInformationFactory]
    (var this (table/setproto @{:jclass "DemoGameMidlet"} jproto))
        (JR/superInit this (GameMidlet/jnew_1 _clientInformationFactory))
    this))
    
(set jm_isContinue (fn jm_isContinue [this]
    (label jreturn
        (var _hashtable (:jm_getStartStateHashtable this))
        (if (and (not (nil? _hashtable)) (> (:jm_size _hashtable) 0))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_getHighestLevel (fn jm_getHighestLevel [this]
    (label jreturn
        (return jreturn 1))))
    
(set jm_createDemoGameCanvasRunnableInterface (fn jm_createDemoGameCanvasRunnableInterface [this]
    (label jreturn
        (JR/className (this :f_logUtil))
        (return jreturn (NullGameCanvasRunnable/jstatic_NULL_GAME_CANVAS_RUNNABLE)))))
    
(set jm_createGameCanvasRunnable (fn jm_createGameCanvasRunnable [this _allBinaryGameLayerManager]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_createGameCanvasRunnableInterface (fn jm_createGameCanvasRunnableInterface [this]
    (label jreturn
        (return jreturn (:jm_createGameCanvasRunnable this (:jm_createGameLayerManager this))))))
    
(set jm_demoSetup (fn jm_demoSetup [this]
    nil))
    
(set jm_postDemoSetup (fn jm_postDemoSetup [this]
    nil))
    
(set jm_setDemo (fn jm_setDemo [this]
        (JR/className (this :f_logUtil))
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (:jm_start _progressCanvas)
        (:jm_runTask (PrimaryThreadPool/jm_getInstance) (DemoRunnable/jnew_1 this))))
    
(set jm_createGame (fn jm_createGame [this]
        (var _CREATE_GAME "createGame")
        (JR/className (this :f_logUtil))
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (:jm_start _progressCanvas)
        (var _hashtable (:jm_getStartStateHashtable this))
        (:jm_setStartStateHashtable this ((StdUtil/jm_getInstance) :f_NULL_TABLE))
        (:jm_runTask (PrimaryThreadPool/jm_getInstance) (CreateGameRunnable/jnew_2 this _hashtable))
        (JR/className (this :f_logUtil))))
    
(set jm_isReady (fn jm_isReady [this]
    (label jreturn
        (return jreturn true))))

(set jproto (table/setproto @{:jm_isContinue jm_isContinue :jm_getHighestLevel jm_getHighestLevel :jm_createDemoGameCanvasRunnableInterface jm_createDemoGameCanvasRunnableInterface :jm_createGameCanvasRunnable jm_createGameCanvasRunnable :jm_createGameCanvasRunnableInterface jm_createGameCanvasRunnableInterface :jm_demoSetup jm_demoSetup :jm_postDemoSetup jm_postDemoSetup :jm_setDemo jm_setDemo :jm_createGame jm_createGame :jm_isReady jm_isReady} GameMidlet/jproto))


