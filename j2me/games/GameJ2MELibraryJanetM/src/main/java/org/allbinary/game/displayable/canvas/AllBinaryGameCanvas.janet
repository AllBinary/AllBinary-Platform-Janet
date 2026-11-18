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
(defn- AndroidUtil/jm_isAndroid [& args] (JR/call jfile "../../../../../org/allbinary/AndroidUtil" "jm_isAndroid" args))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- GameAdStateFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/business/advertisement/GameAdStateFactory" "jm_getInstance" args))
(defn- GameStatisticsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/canvas/GameStatisticsFactory" "jm_getInstance" args))
(defn- Processor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/canvas/Processor" "jm_getInstance" args))
(import ../../../../../org/allbinary/canvas/RunnableCanvas :as RunnableCanvas)
(defn- DebugFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/debug/DebugFactory" "jm_getInstance" args))
(defn- NoDebug/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/debug/NoDebug" "jm_getInstance" args))
(defn- GameInfo/jnew_5 [& args] (JR/call jfile "../../../../../org/allbinary/game/GameInfo" "jnew_5" args))
(defn- GameInfo/jstatic_LEVEL_NAME [& args] (JR/call jfile "../../../../../org/allbinary/game/GameInfo" "jstatic_LEVEL_NAME" args))
(defn- GameStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/GameStrings" "jm_getInstance" args))
(defn- GameTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/GameTypeFactory" "jm_getInstance" args))
(defn- Intermission/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/game/Intermission" "jnew_0" args))
(defn- PlayerTypesFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/PlayerTypesFactory" "jm_getInstance" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- InGameFeatures/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/InGameFeatures" "jnew_0" args))
(defn- InGameOptionsForm/jstatic_DISPLAY [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/InGameOptionsForm" "jstatic_DISPLAY" args))
(defn- ChangedGameFeatureListener/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" "jm_getInstance" args))
(defn- GameInitializedEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler" "jm_getInstance" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" "jm_getInstance" args))
(defn- GameFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/GameFeatureUtil" "jm_getInstance" args))
(defn- InputFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" "jm_getInstance" args))
(defn- MainFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" "jm_getInstance" args))
(defn- SensorFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" "jm_getInstance" args))
(defn- TouchFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory" "jm_getInstance" args))
(defn- GameLevelDisplayChangeEventListenersFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory" "jm_getInstance" args))
(defn- BasicBuildGameInitializerFactory/jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY [& args] (JR/call jfile "../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory" "jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY" args))
(defn- GameInitializationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/init/GameInitializationUtil" "jm_getInstance" args))
(defn- GameInputStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameInputStrings" "jm_getInstance" args))
(defn- NoPlayerGameInput/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/NoPlayerGameInput" "jm_getInstance" args))
(defn- GameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEventHandler" "jm_getInstance" args))
(defn- AllBinaryGameLayerManager/jm_getNullInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" "jm_getNullInstance" args))
(defn- SWTUtil/jstatic_isSWT [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/SWTUtil" "jstatic_isSWT" args))
(defn- ColorFillPaintableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" "jm_getInstance" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(defn- HighScore/jnew_4 [& args] (JR/call jfile "../../../../../org/allbinary/game/score/HighScore" "jnew_4" args))
(defn- HighScoresPaintable/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/game/score/HighScoresPaintable" "jnew_0" args))
(defn- NullHighScoresSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory" "jm_getInstance" args))
(defn- HighScoreTextBox/jnew_9 [& args] (JR/call jfile "../../../../../org/allbinary/game/score/displayable/HighScoreTextBox" "jnew_9" args))
(defn- GameStateFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/state/GameStateFactory" "jm_getInstance" args))
(defn- GraphicsStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/GraphicsStrings" "jm_getInstance" args))
(defn- ScreenCaptureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/ScreenCaptureFactory" "jm_getInstance" args))
(defn- ProgressCanvasFactory/jm_getLazyInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getLazyInstance" args))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- GameTickDisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton" "jm_getInstance" args))
(defn- MyCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" "jm_getInstance" args))
(defn- DisplayChangeEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" "jm_getInstance" args))
(defn- MyFontProcessor/jm_defaultCharWidth [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_defaultCharWidth" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- CommandCurrentSelectionFormFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/CommandCurrentSelectionFormFactory" "jm_getInstance" args))
(defn- FormPaintable/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/FormPaintable" "jnew_1" args))
(defn- FormTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/FormTypeFactory" "jm_getInstance" args))
(defn- ScrollSelectionForm/jm_getNullScrollSelectionForm [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/ScrollSelectionForm" "jm_getNullScrollSelectionForm" args))
(defn- ScrollSelectionFormNoneFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/ScrollSelectionFormNoneFactory" "jm_getInstance" args))
(defn- CurrentDisplayableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- OpenGLFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" "jm_getInstance" args))
(defn- OpenGLThreadUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLThreadUtil" "jm_getInstance" args))
(defn- NullInitUpdatePaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullInitUpdatePaintable" "jm_getInstance" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- OpenGLImageSpecificFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/opengles/OpenGLImageSpecificFactory" "jm_getInstance" args))
(defn- SingleSensorGameUpdateProcessor/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/input/gyro/SingleSensorGameUpdateProcessor" "jnew_0" args))
(defn- NoButtonsTouchInputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/button/NoButtonsTouchInputFactory" "jm_getInstance" args))
(defn- TouchButtonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/button/TouchButtonFactory" "jm_getInstance" args))
(defn- TouchButtonsPaintableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/button/TouchButtonsPaintableFactory" "jm_getInstance" args))
(defn- TouchScreenFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/button/TouchScreenFactory" "jm_getInstance" args))
(defn- BasicMotionGesturesHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- OperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- AllBinaryMediaManager/jm_update [& args] (JR/call jfile "../../../../../org/allbinary/media/audio/AllBinaryMediaManager" "jm_update" args))
(defn- PrimaryPlayerQueueFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" "jm_getInstance" args))
(defn- SecondaryPlayerQueueFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory" "jm_getInstance" args))
(defn- SelectSound/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/media/audio/SelectSound" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- SecondaryThreadPool/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/thread/SecondaryThreadPool" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ../../../../../java/lang/Integer :as Integer)
(import ../../../../../java/lang/Thread :as Thread)
(defn- GameCanvasRunnable/jnew_1 [& args] (JR/call jfile "./GameCanvasRunnable" "jnew_1" args))
(defn- GameCanvasPauseRunnable/jnew_1 [& args] (JR/call jfile "./GameCanvasPauseRunnable" "jnew_1" args))
(defn- FormUtil/jm_getInstance [& args] (JR/call jfile "./FormUtil" "jm_getInstance" args))
(defn- MyFormUtil/jm_getInstance [& args] (JR/call jfile "./MyFormUtil" "jm_getInstance" args))
(defn- EndGameInfo/jnew_0 [& args] (JR/call jfile "./EndGameInfo" "jnew_0" args))
(defn- NoMenuInputProcessor/jm_getInstance [& args] (JR/call jfile "./NoMenuInputProcessor" "jm_getInstance" args))
(defn- DemoGameBehavior/jm_getInstance [& args] (JR/call jfile "./DemoGameBehavior" "jm_getInstance" args))
(defn- BaseMenuBehavior/jm_getInstance [& args] (JR/call jfile "./BaseMenuBehavior" "jm_getInstance" args))
(defn- BaseGameBehavior/jm_getInstance [& args] (JR/call jfile "./BaseGameBehavior" "jm_getInstance" args))
(defn- BasicPopupMenuPaintable/jnew_3 [& args] (JR/call jfile "./BasicPopupMenuPaintable" "jnew_3" args))
(defn- PopupMenuInputProcessor/jnew_4 [& args] (JR/call jfile "./PopupMenuInputProcessor" "jnew_4" args))
(defn- InGameMenuBehavior/jm_getInstance [& args] (JR/call jfile "./InGameMenuBehavior" "jm_getInstance" args))
(defn- GameLimitedCommandTextItemArrayFactory/jm_getInstance [& args] (JR/call jfile "./GameLimitedCommandTextItemArrayFactory" "jm_getInstance" args))
(defn- PopupCommandFormInputProcessor/jnew_5 [& args] (JR/call jfile "./PopupCommandFormInputProcessor" "jnew_5" args))
(defn- NullWaitGameRunnable/jm_getInstance [& args] (JR/call jfile "./NullWaitGameRunnable" "jm_getInstance" args))
(defn- GameProcessor/jnew_1 [& args] (JR/call jfile "./GameProcessor" "jnew_1" args))
(defn- CheatGameInputProcessor/jnew_1 [& args] (JR/call jfile "./CheatGameInputProcessor" "jnew_1" args))
(defn- EndGameProcessor/jnew_1 [& args] (JR/call jfile "./EndGameProcessor" "jnew_1" args))
(defn- StartIntermissionProcessor/jnew_1 [& args] (JR/call jfile "./StartIntermissionProcessor" "jnew_1" args))
(defn- EndGamePaintable/jnew_1 [& args] (JR/call jfile "./EndGamePaintable" "jnew_1" args))
(defn- NullDemoPaintable/jstatic_NULL_DEMO_PAINTABLE [& args] (JR/call jfile "./NullDemoPaintable" "jstatic_NULL_DEMO_PAINTABLE" args))
(defn- GameCanvasInputProcessor/jnew_1 [& args] (JR/call jfile "./GameCanvasInputProcessor" "jnew_1" args))
(defn- FormInputProcessor/jnew_1 [& args] (JR/call jfile "./FormInputProcessor" "jnew_1" args))
(defn- SaveHighScoreRunnable/jnew_2 [& args] (JR/call jfile "./SaveHighScoreRunnable" "jnew_2" args))

# Java class AllBinaryGameCanvas
(var jproto nil)
(var jcell_id :jnone)
(var jstatic_id nil)
(var jsetstatic_id nil)
(var jcell_TYPE :jnone)
(var jstatic_TYPE nil)
(var jsetstatic_TYPE nil)
(var jnew_5 nil)
(var jm_updateMeasurement nil)
(var jm_getInGameMenuBehavior nil)
(var jm_setCurrentThread nil)
(var jm_onEvent nil)
(var jm_onDisplayChangeEvent nil)
(var jm_updateMenuFromEvent nil)
(var jm_processSleep nil)
(var jm_initPopupMenu nil)
(var jm_initMenu nil)
(var jm_initMenu2 nil)
(var jm_updateMenu nil)
(var jm_updateMenu2 nil)
(var jm_pause nil)
(var jm_unPause nil)
(var jm_isPausable nil)
(var jm_popupMenu nil)
(var jm_popupMenu2 nil)
(var jm_toggleMenu nil)
(var jm_closeMenu nil)
(var jm_closeMenu2 nil)
(var jm_open nil)
(var jm_close nil)
(var jm_processorInit nil)
(var jm_setProcessGameProcessorInit nil)
(var jm_initSpecialPaint nil)
(var jm_init nil)
(var jm_notifyIntermission nil)
(var jm_mediaInit nil)
(var jm_initConfigurable nil)
(var jm_initApp nil)
(var jm_initTouch nil)
(var jm_updateCurrentTouchInputFactory nil)
(var jm_updateTouch nil)
(var jm_updateTouch2 nil)
(var jm_postInitTouch nil)
(var jm_initCommands nil)
(var jm_addCommands nil)
(var jm_itemStateChanged nil)
(var jm_updateScreenButtonPaintable nil)
(var jm_updateScreenButtonPaintable2 nil)
(var jm_getLayerManager nil)
(var jm_setLayerManager nil)
(var jm_isGameOver nil)
(var jm_setGameOver nil)
(var jm_processGameOver nil)
(var jm_isHighScoreSubmitted nil)
(var jm_setHighScoreSubmitted nil)
(var jm_getGameState nil)
(var jm_setGameState nil)
(var jm_updateGameState nil)
(var jm_updateGameKeyEventProcessor nil)
(var jm_removeAllGameKeyInputListenersOnBuild nil)
(var jm_removeAllGameKeyInputListeners nil)
(var jm_removeAllGameKeyInputListeners2 nil)
(var jm_removeKeyInputListener nil)
(var jm_updateEndGameProcessor nil)
(var jm_updateEndGameProcessor2 nil)
(var jm_buildGameInit nil)
(var jm_cleanupGame nil)
(var jm_loadResourceLoadingLevel nil)
(var jm_loadResources nil)
(var jm_updateColor nil)
(var jm_buildGame nil)
(var jm_buildGame2 nil)
(var jm_addKeyInputListener nil)
(var jm_setGameCanvasStartListener nil)
(var jm_loadState nil)
(var jm_getLoadStateHashtable nil)
(var jm_setLoadStateHashtable nil)
(var jm_getCurrentStateHashtable nil)
(var jm_paintGameOver nil)
(var jm_draw nil)
(var jm_clear nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_processEndLevelIntermissionGameState nil)
(var jm_nonBotPaint nil)
(var jm_paintIntermission nil)
(var jm_keyPressed nil)
(var jm_keyReleased nil)
(var jm_keyRepeated nil)
(var jm_keyPressedByDevice nil)
(var jm_keyRepeatedByDevice nil)
(var jm_keyReleasedByDevice nil)
(var jm_handleRawKey nil)
(var jm_endProgress nil)
(var jm_processPlayingGame nil)
(var jm_threadInit nil)
(var jm_processGame nil)
(var jm_notifyDonePainting nil)
(var jm_shouldWait nil)
(var jm_run nil)
(var jm_run2 nil)
(var jm_run3 nil)
(var jm_setRunning nil)
(var jm_end nil)
(var jm_endGameThread nil)
(var jm_createHighScore nil)
(var jm_setHighScore nil)
(var jm_setHighScore2 nil)
(var jm_getGameStateTimeHelper nil)
(var jm_setInitialized nil)
(var jm_isInitialized nil)
(var jm_getSourceId nil)
(var jm_setProgressPaintable nil)
(var jm_getStartIntermissionInterface nil)
(var jm_getEndLevelIntermissionInterface nil)
(var jm_setTouchPaintableP nil)
(var jm_getTouchPaintableP nil)
(var jm_setEndGamePaintable nil)
(var jm_getEndGamePaintable nil)
(var jm_setIntermissionPaintable nil)
(var jm_getIntermissionPaintable nil)
(var jm_getEndGameInfoP nil)
(var jm_setHighScoresPaintable nil)
(var jm_getHighScoresPaintable nil)
(var jm_getRealHighScoresPaintable nil)
(var jm_clearPlayerGameInputList nil)
(var jm_addPlayerGameInput nil)
(var jm_setMenuInputProcessor nil)
(var jm_getMenuInputProcessor nil)
(var jm_getMenuForm nil)
(var jm_setMenuForm nil)
(var jm_getStartLevel nil)
(var jm_setStartLevel nil)
(var jm_setTouchButtonsPaintable nil)
(var jm_getTouchButtonsPaintable nil)
(var jm_setGameInputProcessor nil)
(var jm_getGameInputProcessor nil)
(var jm_setEndGameProcessor nil)
(var jm_getEndGameProcessor nil)
(var jm_setEndGameStatePaintable nil)
(var jm_getEndGameStatePaintable nil)
(var jm_setNonBotPaintableP nil)
(var jm_getNonBotPaintableP nil)
(var jm_setStartIntermissionPaintable nil)
(var jm_getStartIntermissionPaintable nil)
(var jm_setMainStateProcessor nil)
(var jm_getMainStateProcessor nil)
(var jm_setProcessGameProcessor nil)
(var jm_getProcessGameProcessor nil)
(var jm_setOpenMenuPaintable nil)
(var jm_getOpenMenuPaintable nil)
(var jm_setPopupMenuInputProcessor nil)
(var jm_getPopupMenuInputProcessor nil)
(var jm_getSensorGameUpdateProcessor nil)
(var jm_getRawGameInputProcessor nil)
(var jm_getRawInputProcessor nil)
(var jm_setInputProcessor nil)
(var jm_getInputProcessor nil)
(var jm_setMenuPaintable nil)
(var jm_getMenuPaintable nil)
(var jm_setFormPaintable nil)
(var jm_getFormPaintable nil)
(var jm_setGameSpecificPaintableP nil)
(var jm_getGameSpecificPaintableP nil)
(var jm_isSingleThread nil)
(var jm_isRunningInAnotherThread nil)
(var jm_getType nil)
(var jm_getTitle nil)
(var jm_isPaused nil)

(set jstatic_id (fn jstatic_id []
  (when (= jcell_id :jnone) (set jcell_id 0))
  jcell_id))
(set jsetstatic_id (fn jsetstatic_id [value] (set jcell_id value)))

(set jstatic_TYPE (fn jstatic_TYPE []
  (when (= jcell_TYPE :jnone) (set jcell_TYPE 2))
  jcell_TYPE))
(set jsetstatic_TYPE (fn jsetstatic_TYPE [value] (set jcell_TYPE value)))

    
(set jnew_5 (fn jnew_5 [_commandListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered]
    (var this (table/setproto @{:jclass "AllBinaryGameCanvas" :f_basicColorFactory nil :f_basicSetColorUtil nil :f_touchFeatureFactory nil :f_openGLFeatureFactory nil :f_touchButtonFactory nil :f_gameAdStateFactory nil :f_gameStrings nil :f_gameInputStrings nil :f_gameStateFactory nil :f_gameTickTimeDelayHelper nil :f_gameTickDisplayInfoSingleton nil :f_gameRunnable nil :f_gamePauseRunnable nil :f_formUtil nil :f_myFormUtil nil :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_gameSpecificPaintable nil :f_sensorGameUpdateProcessor nil :f_endGameInfo nil :f_startIntermissionInterface nil :f_endLevelIntermissionInterface nil :f_gameLayerManager nil :f_gameState nil :f_gameOver false :f_initialized false :f_gameStateTimeHelper nil :f_highScoresHelper nil :f_highScoreSubmitted false :f_realHighScoresPaintable nil :f_highScoresPaintable nil :f_localPlayerGameInputList nil :f_isCheating false :f_hashtable nil :f_isSingleKeyRepeatableProcessing false :f_gameInitializationInterfaceFactoryInterface nil :f_touchButtonsPaintable nil :f_touchPaintable nil :f_cheatProcessor nil :f_gameInputProcessor nil :f_endGameProcessor nil :f_realEndGameProcessor nil :f_startIntermissionProcessor nil :f_realStartIntermissionProcessor nil :f_endGamePaintable nil :f_endGameStatePaintable nil :f_nonBotPaintable nil :f_intermissionPaintable nil :f_startIntermissionPaintable nil :f_mainStateProcessor nil :f_processGameProcessor nil :f_highScoresFactoryInterface nil :f_startLevel 0 :f_mainMenuInputProcessor nil :f_popupMenuInputProcessor nil :f_menuInputProcessor nil :f_menuForm nil :f_formPaintable nil :f_openMenuPaintable nil :f_menuPaintable nil :f_currentTouchInputFactory nil :f_colorFillPaintable nil :f_baseGameStatistics nil :f_primaryPlayerQueue nil :f_secondaryPlayerQueue nil :f_BUILD_GAME nil :f_gameTypeFactory nil :f_screenCapture nil :f_basicMotionGesturesHandler nil :f_gameKeyEventHandler nil :f_gameBehavior nil :f_menuBehavior nil :f_progressPaintable nil :f_fontHeightP 0 :f_gameCanvasStartListener nil :f_rawGameInputProcessor nil :f_rawInputProcessor nil :f_inputProcessor nil :f_YIELD_SLEEP 0} jproto))
    (put this :f_basicColorFactory (BasicColorFactory/jm_getInstance))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    (put this :f_touchFeatureFactory (TouchFeatureFactory/jm_getInstance))
    (put this :f_openGLFeatureFactory (OpenGLFeatureFactory/jm_getInstance))
    (put this :f_touchButtonFactory (TouchButtonFactory/jm_getInstance))
    (put this :f_gameAdStateFactory (GameAdStateFactory/jm_getInstance))
    (put this :f_gameStrings (GameStrings/jm_getInstance))
    (put this :f_gameInputStrings (GameInputStrings/jm_getInstance))
    (put this :f_gameStateFactory (GameStateFactory/jm_getInstance))
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
    (put this :f_gameTickDisplayInfoSingleton (GameTickDisplayInfoSingleton/jm_getInstance))
    (put this :f_gameRunnable (GameCanvasRunnable/jnew_1 this))
    (put this :f_gamePauseRunnable (GameCanvasPauseRunnable/jnew_1 this))
    (put this :f_formUtil (FormUtil/jm_getInstance))
    (put this :f_myFormUtil (MyFormUtil/jm_getInstance))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    (put this :f_gameSpecificPaintable (NullPaintable/jm_getInstance))
    (put this :f_sensorGameUpdateProcessor (SingleSensorGameUpdateProcessor/jnew_0))
    (put this :f_endGameInfo (EndGameInfo/jnew_0))
    (put this :f_startIntermissionInterface (Intermission/jnew_0))
    (put this :f_endLevelIntermissionInterface (Intermission/jnew_0))
    (put this :f_gameLayerManager (AllBinaryGameLayerManager/jm_getNullInstance))
    (put this :f_gameState ((this :f_gameStateFactory) :f_NO_GAME_STATE))
    
    
    (put this :f_gameStateTimeHelper (TimeDelayHelper/jnew_1 0))
    
    
    (put this :f_realHighScoresPaintable (HighScoresPaintable/jnew_0))
    (put this :f_highScoresPaintable (NullPaintable/jm_getInstance))
    (put this :f_localPlayerGameInputList (BasicArrayListD/jnew_0))
    
    (put this :f_hashtable ((this :f_stdUtil) :f_NULL_TABLE))
    
    (put this :f_gameInitializationInterfaceFactoryInterface (BasicBuildGameInitializerFactory/jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY))
    (put this :f_touchButtonsPaintable (NullPaintable/jm_getInstance))
    (put this :f_touchPaintable (NullPaintable/jm_getInstance))
    (put this :f_cheatProcessor (NoPlayerGameInput/jm_getInstance))
    (put this :f_gameInputProcessor (Processor/jm_getInstance))
    (put this :f_endGameProcessor (Processor/jm_getInstance))
    (put this :f_realEndGameProcessor (Processor/jm_getInstance))
    (put this :f_startIntermissionProcessor (Processor/jm_getInstance))
    (put this :f_realStartIntermissionProcessor (Processor/jm_getInstance))
    (put this :f_endGamePaintable (NullPaintable/jm_getInstance))
    (put this :f_endGameStatePaintable (NullPaintable/jm_getInstance))
    (put this :f_nonBotPaintable (NullPaintable/jm_getInstance))
    (put this :f_intermissionPaintable (NullPaintable/jm_getInstance))
    (put this :f_startIntermissionPaintable (NullInitUpdatePaintable/jm_getInstance))
    (put this :f_mainStateProcessor (Processor/jm_getInstance))
    (put this :f_processGameProcessor (Processor/jm_getInstance))
    
    
    (put this :f_mainMenuInputProcessor (NoMenuInputProcessor/jm_getInstance))
    (put this :f_popupMenuInputProcessor (NoMenuInputProcessor/jm_getInstance))
    (put this :f_menuInputProcessor (NoMenuInputProcessor/jm_getInstance))
    (put this :f_menuForm (ScrollSelectionForm/jm_getNullScrollSelectionForm))
    (put this :f_formPaintable (NullPaintable/jm_getInstance))
    (put this :f_openMenuPaintable (NullPaintable/jm_getInstance))
    (put this :f_menuPaintable (NullPaintable/jm_getInstance))
    (put this :f_currentTouchInputFactory (NoButtonsTouchInputFactory/jm_getInstance))
    (put this :f_colorFillPaintable (:jm_getInstance (ColorFillPaintableFactory/jm_getInstance) ((this :f_basicColorFactory) :f_BLACK) true))
    (put this :f_baseGameStatistics (GameStatisticsFactory/jm_getInstance))
    (put this :f_primaryPlayerQueue (PrimaryPlayerQueueFactory/jm_getInstance))
    (put this :f_secondaryPlayerQueue (SecondaryPlayerQueueFactory/jm_getInstance))
    (put this :f_BUILD_GAME "buildGame")
    (put this :f_gameTypeFactory (GameTypeFactory/jm_getInstance))
    (put this :f_screenCapture (ScreenCaptureFactory/jm_getInstance))
    (put this :f_basicMotionGesturesHandler (BasicMotionGesturesHandler/jm_getInstance))
    (put this :f_gameKeyEventHandler (GameKeyEventHandler/jm_getInstance))
    
    
    (put this :f_progressPaintable (ProgressCanvasFactory/jm_getLazyInstance))
    
    (put this :f_gameCanvasStartListener (NullDemoPaintable/jstatic_NULL_DEMO_PAINTABLE))
    (put this :f_rawGameInputProcessor (GameCanvasInputProcessor/jnew_1 this))
    (put this :f_rawInputProcessor (FormInputProcessor/jnew_1 this))
    (put this :f_inputProcessor (:jm_getRawGameInputProcessor this))
    (put this :f_YIELD_SLEEP 100)
        (JR/superInit this (RunnableCanvas/jnew_3 _commandListener ((CanvasStrings/jm_getInstance) :f_EMPTY_CHILD_NAME_LIST) true))
        (set (this :f_highScoresHelper) (:jm_createHighScoresHelper _highScoresFactoryInterface))
        (set (this :f_gameInitializationInterfaceFactoryInterface) _gameInitializationInterfaceFactoryInterface)
        (:jm_init this _gameLayerManager _buffered)
        (set (this :f_highScoresFactoryInterface) _highScoresFactoryInterface)
        (if (or (= (JR/className (:jm_getGameInfo (this :f_gameLayerManager))) ((this :f_gameTypeFactory) :f_BOT)) (= (JR/className (:jm_getGameInfo (this :f_gameLayerManager))) ((this :f_gameTypeFactory) :f_NONE)))
            (do
            (set (this :f_gameBehavior) (DemoGameBehavior/jm_getInstance))
            (set (this :f_menuBehavior) (BaseMenuBehavior/jm_getInstance)))
            (do
            (set (this :f_gameBehavior) (BaseGameBehavior/jm_getInstance))
            (set (this :f_menuBehavior) (:jm_getInGameMenuBehavior this))))
        (:jm_initPopupMenu this)
        (:jm_initMenu this)
        (:jm_initSpecialPaint this)
        (:jm_addListenerInterface (DisplayChangeEventHandler/jm_getInstance) this)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (try
            (do
            (var _font (:jm_getFont _graphics))
            (JR/className (this :f_logUtil))
            (set (this :f_fontHeightP) (:jm_getHeight _font))
            (:jm_updateMeasurement (this :f_myFormUtil) _graphics)
            (var _popupMenuRectangle (:jm_getPopupMenuRectangle (this :f_myFormUtil)))
            (var _basicPopupMenuPaintable (:jm_getOpenMenuPaintable this))
            (:jm_init _basicPopupMenuPaintable _popupMenuRectangle)
            (if (not= (:jm_getPopupMenuInputProcessor this) (NoMenuInputProcessor/jm_getInstance))
                (do
                (var _popupMenuInputProcessor (:jm_getPopupMenuInputProcessor this))
                (:jm_init _popupMenuInputProcessor _popupMenuRectangle)))
            (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_getInGameMenuBehavior (fn jm_getInGameMenuBehavior [this]
    (label jreturn
        (return jreturn (InGameMenuBehavior/jm_getInstance)))))
    
(set jm_setCurrentThread (fn jm_setCurrentThread [this]
        (if (J2MEUtil/jm_isHTML)
            (do
            ((get RunnableCanvas/jproto :jm_setCurrentThreadFake) this))
            (do
            ((get RunnableCanvas/jproto :jm_setCurrentThread) this)))))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onDisplayChangeEvent (fn jm_onDisplayChangeEvent [this _displayChangeEvent]
        (try
            (do
            (JR/className (this :f_logUtil))
            (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))
            (:jm_onDisplayChangeEvent (this :f_menuBehavior) this _displayChangeEvent))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_updateMenuFromEvent (fn jm_updateMenuFromEvent [this _displayChangeEvent]
        (var _formType (:jm_getFormType (FormTypeFactory/jm_getInstance)))
        (var _rectangle (:jm_createFormRectangle (this :f_formUtil)))
        (:jm_init (this :f_menuForm) _rectangle _formType)
        (if (not= (this :f_currentTouchInputFactory) (NoButtonsTouchInputFactory/jm_getInstance))
            (do
            (:jm_toggle (this :f_touchButtonFactory) (:jm_isPaused this) (:jm_getList (this :f_currentTouchInputFactory)))))
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_processSleep (fn jm_processSleep [this]
        ((get RunnableCanvas/jproto :jm_processSleep) this)
        (if (AllBinaryMediaManager/jm_update)
            (do
            (if (not (:jm_process (this :f_primaryPlayerQueue)))
                (do
                (:jm_process (this :f_secondaryPlayerQueue))))))
        (if (not= (:jm_processInputList (this :f_menuInputProcessor)) (JR/i32 (- 1)))
            (do
            (JR/className (this :f_runnableCanvasRefreshHelper))))))
    
(set jm_initPopupMenu (fn jm_initPopupMenu [this]
        (if (= (this :f_popupMenuInputProcessor) (NoMenuInputProcessor/jm_getInstance))
            (do
            (var _features (Features/jm_getInstance))
            (var _popupMenuRectangle (:jm_getPopupMenuRectangle (this :f_myFormUtil)))
            (if (:jm_isFeature _features ((this :f_touchFeatureFactory) :f_TOUCH_ENABLED))
                (do
                (:jm_setOpenMenuPaintable this (BasicPopupMenuPaintable/jnew_3 _popupMenuRectangle (:jm_getBackgroundBasicColor (this :f_gameLayerManager)) (:jm_getForegroundBasicColor (this :f_gameLayerManager))))
                (:jm_setPopupMenuInputProcessor this (PopupMenuInputProcessor/jnew_4 (BasicArrayListD/jnew_0) (JR/i32 (- 1)) this _popupMenuRectangle)))))
            (do
            nil))))
    
(set jm_initMenu (fn jm_initMenu [this]
        (try
            (do
            (:jm_initMenu (this :f_menuBehavior) this))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_initMenu2 (fn jm_initMenu2 [this]
        (:jm_closeMenu this)
        (var _formType (:jm_getFormType (FormTypeFactory/jm_getInstance)))
        (var _gameLimitedCommandTextItemArrayFactory (GameLimitedCommandTextItemArrayFactory/jm_getInstance))
        (var _commandTextItemArrayFactory (:jm_getCommandTextItemArrayFactory _gameLimitedCommandTextItemArrayFactory))
        (var _items (:jm_getInstance _commandTextItemArrayFactory (:jm_getCommandStack this) (:jm_getBackgroundBasicColor (this :f_gameLayerManager)) (:jm_getForegroundBasicColor (this :f_gameLayerManager))))
        (var _rectangle (:jm_createFormRectangle (this :f_formUtil)))
        (:jm_setMenuForm this (CommandCurrentSelectionFormFactory/jm_getInstance ((StringUtil/jm_getInstance) :f_EMPTY_STRING) _items _rectangle _formType 25 false (:jm_getBackgroundBasicColor (this :f_gameLayerManager)) (:jm_getForegroundBasicColor (this :f_gameLayerManager))))
        (var _scrollSelectionForm (:jm_getMenuForm this))
        (var _features (Features/jm_getInstance))
        (if (:jm_isFeature _features ((this :f_touchFeatureFactory) :f_TOUCH_ENABLED))
            (do
            (set (this :f_mainMenuInputProcessor) (PopupCommandFormInputProcessor/jnew_5 (BasicArrayListD/jnew_0) (JR/i32 (- 1)) this _scrollSelectionForm (:jm_getPopupMenuInputProcessor this))))
            (do
            nil))
        (:jm_setMenuInputProcessor this (:jm_getPopupMenuInputProcessor this))
        (if (not= _scrollSelectionForm (ScrollSelectionFormNoneFactory/jm_getInstance))
            (do
            (:jm_setFormPaintable this (FormPaintable/jnew_1 _scrollSelectionForm)))
            (do
            nil))
        (:jm_closeMenu this)))
    
(set jm_updateMenu (fn jm_updateMenu [this]
        (try
            (do
            (:jm_updateMenu (this :f_menuBehavior) this))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_updateMenu2 (fn jm_updateMenu2 [this]
        (var _scrollSelectionForm (:jm_getMenuForm this))
        (:jm_deleteAll _scrollSelectionForm)
        (var _gameLimitedCommandTextItemArrayFactory (GameLimitedCommandTextItemArrayFactory/jm_getInstance))
        (var _commandTextItemArrayFactory (:jm_getCommandTextItemArrayFactory _gameLimitedCommandTextItemArrayFactory))
        (var _items (:jm_getInstance _commandTextItemArrayFactory (:jm_getCommandStack this) (:jm_getBackgroundBasicColor (this :f_gameLayerManager)) (:jm_getForegroundBasicColor (this :f_gameLayerManager))))
        (var _size (length _items))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_append _scrollSelectionForm (_items _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _formType (:jm_getFormType (FormTypeFactory/jm_getInstance)))
        (var _rectangle (:jm_createFormRectangle (this :f_formUtil)))
        (:jm_init _scrollSelectionForm _rectangle _formType)))
    
(set jm_pause (fn jm_pause [this]
        (:jm_pause (this :f_gameBehavior) this)
        (:jm_closeMenu this)
        ((get RunnableCanvas/jproto :jm_pause) this)
        (:jm_toggle (this :f_touchButtonFactory) (:jm_isPaused this) (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
        (JR/className (this :f_tsUtil))))
    
(set jm_unPause (fn jm_unPause [this]
        (JR/className (this :f_logUtil))
        (:jm_closeMenu this)
        (JR/className (this :f_tsUtil))
        ((get RunnableCanvas/jproto :jm_unPause) this)
        (:jm_toggle (this :f_touchButtonFactory) (:jm_isPaused this) (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
        (:jm_unPause (this :f_gameBehavior) this)))
    
(set jm_isPausable (fn jm_isPausable [this]
    (label jreturn
        (if (= (:jm_getUsedRunnable (CurrentDisplayableFactory/jm_getInstance)) (NullWaitGameRunnable/jm_getInstance))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_popupMenu (fn jm_popupMenu [this]
        (:jm_popupMenu (this :f_menuBehavior) this)))
    
(set jm_popupMenu2 (fn jm_popupMenu2 [this]
        (:jm_add (this :f_primaryPlayerQueue) (SelectSound/jm_getInstance))
        (:jm_setMenuPaintable this (:jm_getFormPaintable this))
        (:jm_setMenuInputProcessor this (this :f_mainMenuInputProcessor))
        (:jm_addListenerInterface (this :f_basicMotionGesturesHandler) (this :f_mainMenuInputProcessor))
        (:jm_addListener (this :f_gameKeyEventHandler) (this :f_mainMenuInputProcessor))))
    
(set jm_toggleMenu (fn jm_toggleMenu [this]
        (JR/className (this :f_logUtil))
        (if (= (:jm_getMenuPaintable this) (:jm_getOpenMenuPaintable this))
            (do
            (:jm_pause this)
            (:jm_updateMenu this)
            (:jm_popupMenu this))
            (if (= (:jm_getMenuPaintable this) (:jm_getFormPaintable this))
            (do
            (:jm_add (this :f_primaryPlayerQueue) (SelectSound/jm_getInstance))
            (:jm_unPause this))))))
    
(set jm_closeMenu (fn jm_closeMenu [this]
        (:jm_closeMenu (this :f_menuBehavior) this)))
    
(set jm_closeMenu2 (fn jm_closeMenu2 [this]
        (:jm_setMenuPaintable this (:jm_getOpenMenuPaintable this))
        (:jm_removeListener (this :f_basicMotionGesturesHandler) (this :f_mainMenuInputProcessor))
        (:jm_removeListener (this :f_gameKeyEventHandler) (this :f_mainMenuInputProcessor))
        (:jm_setMenuInputProcessor this (:jm_getPopupMenuInputProcessor this))))
    
(set jm_open (fn jm_open [this]
        (:jm_addListenerInterface (this :f_basicMotionGesturesHandler) (this :f_menuInputProcessor))
        (:jm_addListener (this :f_gameKeyEventHandler) (this :f_menuInputProcessor))))
    
(set jm_close (fn jm_close [this]
        (:jm_removeListener (this :f_basicMotionGesturesHandler) (this :f_menuInputProcessor))
        (:jm_removeListener (this :f_gameKeyEventHandler) (this :f_menuInputProcessor))
        (:jm_clear (this :f_primaryPlayerQueue))
        (:jm_clear (this :f_secondaryPlayerQueue))))
    
(set jm_processorInit (fn jm_processorInit [this]
        (:jm_setMainStateProcessor this (Processor/jm_getInstance))
        (:jm_setProcessGameProcessorInit this)))
    
(set jm_setProcessGameProcessorInit (fn jm_setProcessGameProcessorInit [this]
        (:jm_setProcessGameProcessor this (GameProcessor/jnew_1 this))))
    
(set jm_initSpecialPaint (fn jm_initSpecialPaint [this]
        (:jm_initSpecialPaint (this :f_menuBehavior) this)))
    
(set jm_init (fn jm_init [this _gameLayerManager _buffered]
        (:jm_setStartTimeTNT (this :f_gameStateTimeHelper))
        (:jm_setHighScoreSubmitted this false)
        (:jm_setLayerManager this _gameLayerManager)
        (if (not _buffered)
            (do
            (var _BUFF_MESSAGE "XXX Not Buffering Causes Concurrency Issues XXX")
            (JR/className (this :f_logUtil)))
            (do
            (error (JR/newException "Exception" "Buffering is disabled"))))
        (:jm_setGameInputProcessor this (Processor/jm_getInstance))
        (var _features (Features/jm_getInstance))
        (if (:jm_isFeature _features ((GameFeatureFactory/jm_getInstance) :f_CHEATING))
            (do
            (set (this :f_isCheating) true)
            (set (this :f_cheatProcessor) (CheatGameInputProcessor/jnew_1 this))
            (:jm_addListener (this :f_gameKeyEventHandler) (this :f_cheatProcessor)))
            (do
            (set (this :f_isCheating) false)
            (set (this :f_cheatProcessor) (NoPlayerGameInput/jm_getInstance))))
        (set (this :f_realEndGameProcessor) (EndGameProcessor/jnew_1 this))
        (:jm_setEndGameProcessor this (Processor/jm_getInstance))
        (set (this :f_realStartIntermissionProcessor) (StartIntermissionProcessor/jnew_1 this))
        (set (this :f_startIntermissionProcessor) (Processor/jm_getInstance))
        (:jm_setEndGameStatePaintable this (EndGamePaintable/jnew_1 this))
        (:jm_setEndGamePaintable this (NullPaintable/jm_getInstance))
        (:jm_setIntermissionPaintable this (NullPaintable/jm_getInstance))
        (:jm_setListener (:jm_getStartIntermissionInterface this) this)))
    
(set jm_notifyIntermission (fn jm_notifyIntermission [this _enable]
        (if _enable
            (do
            (set (this :f_startIntermissionProcessor) (this :f_realStartIntermissionProcessor)))
            (do
            (set (this :f_startIntermissionProcessor) (Processor/jm_getInstance))))
        (if _enable
            (do
            (:jm_setIntermissionPaintable this (:jm_getStartIntermissionPaintable this)))
            (do
            (:jm_setIntermissionPaintable this (NullPaintable/jm_getInstance))))))
    
(set jm_mediaInit (fn jm_mediaInit [this]
        (ForcedLogUtil/jm_log ((this :f_commonStrings) :f_NOT_IMPLEMENTED) this)))
    
(set jm_initConfigurable (fn jm_initConfigurable [this _abeClientInformation]
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (:jm_addNormalPortion _progressCanvas 50 "Setting Configurables")
        (:jm_initGame (GameInitializationUtil/jm_getInstance) _abeClientInformation this (this :f_gameInitializationInterfaceFactoryInterface))
        (var _gameFeatureFactory (GameFeatureFactory/jm_getInstance))
        (var _changedGameFeatureListener (ChangedGameFeatureListener/jm_getInstance))
        (if (:jm_isChangedFeature _changedGameFeatureListener (_gameFeatureFactory :f_SOUND))
            (do
            (var _features (Features/jm_getInstance))
            (JR/className (this :f_logUtil))
            (:jm_mediaInit this)
            (:jm_remove _changedGameFeatureListener (_gameFeatureFactory :f_SOUND))))
        (var _sensorFeatureFactory (SensorFeatureFactory/jm_getInstance))
        (if (or (or (:jm_isChangedFeature _changedGameFeatureListener (_sensorFeatureFactory :f_ORIENTATION_SENSORS)) (:jm_isChangedFeature _changedGameFeatureListener (_sensorFeatureFactory :f_NO_ORIENTATION))) (:jm_isChangedFeature _changedGameFeatureListener (_sensorFeatureFactory :f_SIMULATED_ORIENTATION_SENSORS)))
            (do
            (:jm_remove _changedGameFeatureListener (_sensorFeatureFactory :f_NO_ORIENTATION))
            (:jm_remove _changedGameFeatureListener (_sensorFeatureFactory :f_ORIENTATION_SENSORS))
            (:jm_remove _changedGameFeatureListener (_sensorFeatureFactory :f_SIMULATED_ORIENTATION_SENSORS))))
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (:jm_loadResourceLoadingLevel this (_resourceLoadingLevelFactory :f_LOAD_GAME))))
    
(set jm_initApp (fn jm_initApp [this _abeClientInformation]
        (:jm_initConfigurable this _abeClientInformation)
        (:jm_processorInit this)
        (:jm_process (this :f_sensorGameUpdateProcessor) (this :f_gameLayerManager))
        (:jm_sendNotifications (this :f_sensorGameUpdateProcessor) (this :f_gameLayerManager))
        (:jm_initTouch this)))
    
(set jm_initTouch (fn jm_initTouch [this]
        (var _gameInitializedEvent ((GameInitializationUtil/jm_getInstance) :f_EVENT))
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (:jm_setResourceLoadingLevel _gameInitializedEvent (_resourceLoadingLevelFactory :f_LOAD_TOUCH))
        (:jm_fireEvent (GameInitializedEventHandler/jm_getInstance) _gameInitializedEvent)
        (:jm_defaultList (this :f_touchButtonFactory))
        (:jm_updateTouch this)
        (:jm_postInitTouch this)))
    
(set jm_updateCurrentTouchInputFactory (fn jm_updateCurrentTouchInputFactory [this _nextTouchInput]
        (if (not= _nextTouchInput (this :f_currentTouchInputFactory))
            (do
            (set (this :f_currentTouchInputFactory) _nextTouchInput)
            (PreLogUtil/jm_put (:jm_toString (this :f_currentTouchInputFactory)) this ((this :f_gameInputStrings) :f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY))
            (:jm_toggle (this :f_touchButtonFactory) (:jm_isPaused this) (:jm_getList (this :f_currentTouchInputFactory)))))))
    
(set jm_updateTouch (fn jm_updateTouch [this]
        (:jm_updateTouch (this :f_gameBehavior) this)))
    
(set jm_updateTouch2 (fn jm_updateTouch2 [this]
        (var _features (Features/jm_getInstance))
        (if (:jm_isFeature _features ((this :f_touchFeatureFactory) :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))
            (do
            (if (= (JR/i32 (- (JR/className (:jm_getGameInfo (this :f_gameLayerManager))) (:jm_getStartLevel this))) 1)
                (do
                (:jm_setTouchPaintableP this (NullPaintable/jm_getInstance))))))))
    
(set jm_postInitTouch (fn jm_postInitTouch [this]
        (:jm_setTouchButtonsPaintable this (TouchButtonsPaintableFactory/jm_getInstance (:jm_getForegroundBasicColor (this :f_gameLayerManager))))
        (:jm_updateScreenButtonPaintable this)))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (:jm_removeAllCommands this)
        (:jm_addCommands this)
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_addCommands (fn jm_addCommands [this]
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (var _myCommandsFactory (MyCommandsFactory/jm_getInstance))
        (if (not= (DebugFactory/jm_getInstance) (NoDebug/jm_getInstance))
            (do
            (:jm_addCommand this (_gameCommandsFactory :f_START_TRACE))))
        (:jm_addCommand this (_gameCommandsFactory :f_RESTART_COMMAND))
        (:jm_addCommand this (_myCommandsFactory :f_PAUSE_COMMAND))
        (:jm_addCommand this (_gameCommandsFactory :f_QUIT_COMMAND))
        (var _isOverScan (JR/className (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance))))
        (if (J2MEUtil/jm_isHTML)
            (do
            nil)
            (if (SWTUtil/jstatic_isSWT)
            (do
            nil)
            (if (not _isOverScan)
            (do
            (if (and (:jm_isTouch (TouchScreenFactory/jm_getInstance)) (:jm_isAny (InGameFeatures/jnew_0)))
                (do
                (:jm_addCommand this (InGameOptionsForm/jstatic_DISPLAY))))
            (:jm_addCommand this (_gameCommandsFactory :f_SAVE))
            (:jm_addCommand this (_gameCommandsFactory :f_DISPLAY_LOAD_FORM))))))))
    
(set jm_itemStateChanged (fn jm_itemStateChanged [this _item]
        (try
            (do
            (var _itemLabel (:jm_getLabel _item))
            (JR/className (this :f_logUtil))
            (if (= (JR/className _item) "ChoiceGroup")
                (do
                (var _gameFeatureUtil (GameFeatureUtil/jm_getInstance))
                (if (:jm_isExclusive _gameFeatureUtil _itemLabel)
                    (do
                    (:jm_updateExclusiveForChoiceGroup _gameFeatureUtil _item))
                    (do
                    (:jm_updateMultiple _gameFeatureUtil _item)))))
            (:jm_process (this :f_sensorGameUpdateProcessor) (this :f_gameLayerManager))
            (:jm_updateTouch this)
            (:jm_updateScreenButtonPaintable this)
            (:jm_sendNotifications (this :f_sensorGameUpdateProcessor) (this :f_gameLayerManager)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_updateScreenButtonPaintable (fn jm_updateScreenButtonPaintable [this]
        (:jm_updateScreenButtonPaintable (this :f_gameBehavior) this)))
    
(set jm_updateScreenButtonPaintable2 (fn jm_updateScreenButtonPaintable2 [this]
        (var _features (Features/jm_getInstance))
        (if (:jm_isFeature _features ((this :f_touchFeatureFactory) :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))
            (do
            (:jm_setTouchPaintableP this (:jm_getTouchButtonsPaintable this))
            (:jm_setStartLevel this (JR/className (:jm_getGameInfo (this :f_gameLayerManager)))))
            (if (:jm_isFeature _features ((this :f_touchFeatureFactory) :f_SHOW_SCREEN_BUTTONS))
            (do
            (:jm_setTouchPaintableP this (:jm_getTouchButtonsPaintable this)))
            (if (:jm_isFeature _features ((this :f_touchFeatureFactory) :f_HIDE_SCREEN_BUTTONS))
            (do
            (:jm_setTouchPaintableP this (NullPaintable/jm_getInstance)))
            (do
            (:jm_setTouchPaintableP this (NullPaintable/jm_getInstance))))))))
    
(set jm_getLayerManager (fn jm_getLayerManager [this]
    (label jreturn
        (return jreturn (this :f_gameLayerManager)))))
    
(set jm_setLayerManager (fn jm_setLayerManager [this _layerManager]
        (set (this :f_gameLayerManager) _layerManager)))
    
(set jm_isGameOver (fn jm_isGameOver [this]
    (label jreturn
        (return jreturn (this :f_gameOver)))))
    
(set jm_setGameOver (fn jm_setGameOver [this _gameOver]
        (set (this :f_gameOver) _gameOver)))
    
(set jm_processGameOver (fn jm_processGameOver [this]
        (PreLogUtil/jm_put ((this :f_commonStrings) :f_START) this ((this :f_gameStrings) :f_SET_GAME_OVER))
        (:jm_setGameOver this true)
        (:jm_removePauseCommand this)
        (:jm_setGameState this ((this :f_gameStateFactory) :f_SHOW_END_RESULT_GAME_STATE))
        (:jm_setEndGamePaintable this (:jm_getEndGameStatePaintable this))))
    
(set jm_isHighScoreSubmitted (fn jm_isHighScoreSubmitted [this]
    (label jreturn
        (return jreturn (this :f_highScoreSubmitted)))))
    
(set jm_setHighScoreSubmitted (fn jm_setHighScoreSubmitted [this _highScoreSubmitted]
        (set (this :f_highScoreSubmitted) _highScoreSubmitted)
        (if _highScoreSubmitted
            (do
            (:jm_setSelectedHighScores (this :f_highScoresHelper) (NullHighScoresSingletonFactory/jm_getInstance))))
        (JR/className (this :f_logUtil))))
    
(set jm_getGameState (fn jm_getGameState [this]
    (label jreturn
        (return jreturn (this :f_gameState)))))
    
(set jm_setGameState (fn jm_setGameState [this _gameState]
        (JR/className (this :f_logUtil))
        (set (this :f_gameState) _gameState)
        (:jm_setStartTimeTNT (this :f_gameStateTimeHelper))
        (:jm_updateEndGameProcessor this)
        (:jm_updateGameKeyEventProcessor this)
        (:jm_setGameState (this :f_gameBehavior) this)))
    
(set jm_updateGameState (fn jm_updateGameState [this]
        (var _gameAdState (:jm_getCurrentInstance (this :f_gameAdStateFactory)))
        (:jm_processAdState _gameAdState (this :f_gameState) (JR/className (:jm_getGameInfo (this :f_gameLayerManager))))
        (if (not= (this :f_gameState) ((this :f_gameStateFactory) :f_PLAYING_GAME_STATE))
            (do
            (:jm_processPageAdState _gameAdState)))))
    
(set jm_updateGameKeyEventProcessor (fn jm_updateGameKeyEventProcessor [this]
        (if (or (not= (:jm_getGameState this) ((this :f_gameStateFactory) :f_PLAYING_GAME_STATE)) (this :f_isCheating))
            (do
            nil)
            (do
            nil))))
    
(set jm_removeAllGameKeyInputListenersOnBuild (fn jm_removeAllGameKeyInputListenersOnBuild [this]
        (:jm_removeAllGameKeyInputListeners this)))
    
(set jm_removeAllGameKeyInputListeners (fn jm_removeAllGameKeyInputListeners [this]
        (:jm_removeAllGameKeyInputListeners (this :f_gameBehavior) this)))
    
(set jm_removeAllGameKeyInputListeners2 (fn jm_removeAllGameKeyInputListeners2 [this]
        (JR/className (this :f_logUtil))
        (do
            (var _index (JR/i32 (- (:jm_size (this :f_localPlayerGameInputList)) 1)))
            (while (>= _index 0)
                (do
            (var _playerGameInput (:jm_get (this :f_localPlayerGameInputList) _index))
            (:jm_removeKeyInputListener this _playerGameInput)
            (:jm_removeNonAIInputGameKeyEvents _playerGameInput))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_removeKeyInputListener (fn jm_removeKeyInputListener [this _playerGameInput]
        (:jm_removeListener (this :f_gameKeyEventHandler) _playerGameInput)))
    
(set jm_updateEndGameProcessor (fn jm_updateEndGameProcessor [this]
        (:jm_updateEndGameProcessor (this :f_gameBehavior) this)))
    
(set jm_updateEndGameProcessor2 (fn jm_updateEndGameProcessor2 [this]
        (if (or (= (:jm_getGameState this) ((this :f_gameStateFactory) :f_SHOW_END_RESULT_GAME_STATE)) (= (:jm_getGameState this) ((this :f_gameStateFactory) :f_SHOW_HIGH_SCORE_GAME_STATE)))
            (do
            (:jm_setEndGameProcessor this (this :f_realEndGameProcessor)))
            (do
            (:jm_setEndGameProcessor this (Processor/jm_getInstance))))))
    
(set jm_buildGameInit (fn jm_buildGameInit [this _isPortion]
    nil))
    
(set jm_cleanupGame (fn jm_cleanupGame [this]
        (JR/className (this :f_logUtil))
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (:jm_addNormalPortion _progressCanvas 10 "Cleaning Up")
        (:jm_clear (this :f_primaryPlayerQueue))
        (:jm_clear (this :f_secondaryPlayerQueue))
        (:jm_clear (GameLevelDisplayChangeEventListenersFactory/jm_getInstance))))
    
(set jm_loadResourceLoadingLevel (fn jm_loadResourceLoadingLevel [this _resourceLoadingLevel]
        (var _gameInitializedEvent ((GameInitializationUtil/jm_getInstance) :f_EVENT))
        (:jm_setResourceLoadingLevel _gameInitializedEvent _resourceLoadingLevel)
        (:jm_fireEvent (GameInitializedEventHandler/jm_getInstance) _gameInitializedEvent)))
    
(set jm_loadResources (fn jm_loadResources [this _level]
        (var _gameInitializedEvent ((GameInitializationUtil/jm_getInstance) :f_EVENT))
        (:jm_setLevel _gameInitializedEvent _level)
        (:jm_fireEvent (GameInitializedEventHandler/jm_getInstance) _gameInitializedEvent)))
    
(set jm_updateColor (fn jm_updateColor [this]
    nil))
    
(set jm_buildGame (fn jm_buildGame [this _portion]
    (label jreturn
        (:jm_endRecording (this :f_screenCapture))
        (:jm_startRecording (this :f_screenCapture))
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (var _features (Features/jm_getInstance))
        (:jm_addNormalPortion _progressCanvas _portion "Generic Build")
        (:jm_removeAllGameKeyInputListenersOnBuild this)
        (:jm_updateTouch this)
        (:jm_addNormalPortion _progressCanvas _portion "High Scores")
        (:jm_fetchHighScores (this :f_highScoresFactoryInterface) (:jm_getGameInfo (this :f_gameLayerManager)) (this :f_highScoresHelper))
        (:jm_setHighScoresPaintable this (NullPaintable/jm_getInstance))
        (:jm_addNormalPortion _progressCanvas _portion "Finishing.")
        (:jm_update (:jm_getEndGameInfoP this) (:jm_getGameInfo (:jm_getLayerManager this)) this)
        (set (this :f_isSingleKeyRepeatableProcessing) (:jm_isFeature _features ((InputFeatureFactory/jm_getInstance) :f_SINGLE_KEY_REPEAT_PRESS)))
        (:jm_setGameOver this false)
        (:jm_addNormalPortion _progressCanvas _portion "Finishing..")
        (:jm_updateColor this)
        (:jm_update (:jm_getStartIntermissionPaintable this))
        (if (not (:jm_isRunningInAnotherThread this))
            (do
            (return jreturn)))
        (:jm_addNormalPortion _progressCanvas _portion "Finishing...")
        (if (or (:jm_isMainCanvas this) (not (:jm_isInitialized this)))
            (do
            (if (:jm_isFeature _features ((MainFeatureFactory/jm_getInstance) :f_LOAD_ONDEMAND))
                (do
                (if (not (nil? (:jm_getCustomCommandListener this)))
                    (do
                    (:jm_end _progressCanvas))))
                (do
                (:jm_end _progressCanvas)))
            (:jm_setInitialized this true)))
        (if (= (:jm_getCustomCommandListener this) (NullCommandListener/jstatic_NULL_COMMAND_LISTENER))
            (do
            (JR/className (this :f_logUtil))
            (:jm_showGamePaintable (this :f_gameCanvasStartListener)))
            (do
            (JR/className (this :f_logUtil))))
        (:jm_setBasicColorP (this :f_colorFillPaintable) (:jm_getBackgroundBasicColor (this :f_gameLayerManager)))
        (:jm_buildGame (this :f_gameBehavior) this))))
    
(set jm_buildGame2 (fn jm_buildGame2 [this]
        (PreLogUtil/jm_put (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) ((this :f_gameInputStrings) :f_ENABLE_PLAYER_GAME_INPUTS)) (:jm_size (this :f_localPlayerGameInputList)))) this (this :f_BUILD_GAME))
        (var _playerGameInput nil)
        (do
            (var _index (JR/i32 (- (:jm_size (this :f_localPlayerGameInputList)) 1)))
            (while (>= _index 0)
                (do
            (set _playerGameInput (:jm_get (this :f_localPlayerGameInputList) _index))
            (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_gameInputStrings) :f_ENABLE_PLAYER_GAME_INPUT)) (:jm_toString _playerGameInput))) this (this :f_BUILD_GAME))
            (:jm_removeNonAIInputGameKeyEvents _playerGameInput)
            (:jm_addKeyInputListener this _playerGameInput))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_addKeyInputListener (fn jm_addKeyInputListener [this _playerGameInput]
        (:jm_addListenerForPlayer (GameKeyEventHandler/jm_getInstance) _playerGameInput (:jm_getPlayerInputId _playerGameInput))))
    
(set jm_setGameCanvasStartListener (fn jm_setGameCanvasStartListener [this _gameCanvasStartListener]
        (set (this :f_gameCanvasStartListener) _gameCanvasStartListener)))
    
(set jm_loadState (fn jm_loadState [this]
        (JR/className (this :f_logUtil))
        (var _hashtable (:jm_getLoadStateHashtable this))
        (if (and (not (nil? _hashtable)) (> (:jm_size _hashtable) 0))
            (do
            (var _levelAsString (:jm_get _hashtable (GameInfo/jstatic_LEVEL_NAME)))
            (var _level (JR/className _levelAsString))
            (var _gameInfo (:jm_getGameInfo (this :f_gameLayerManager)))
            (:jm_setCurrentLevel _gameInfo _level)))))
    
(set jm_getLoadStateHashtable (fn jm_getLoadStateHashtable [this]
    (label jreturn
        (JR/className (this :f_logUtil))
        (return jreturn (this :f_hashtable)))))
    
(set jm_setLoadStateHashtable (fn jm_setLoadStateHashtable [this _hashtable]
        (JR/className (this :f_logUtil))
        (set (this :f_hashtable) _hashtable)))
    
(set jm_getCurrentStateHashtable (fn jm_getCurrentStateHashtable [this]
    (label jreturn
        (var _hashtable (JR/className (this :f_stdUtil)))
        (var _level (JR/className (:jm_getGameInfo (this :f_gameLayerManager))))
        (:jm_put _hashtable (JR/toString (GameInfo/jstatic_LEVEL_NAME)) (JR/str _level))
        (JR/className (this :f_logUtil))
        (return jreturn _hashtable))))
    
(set jm_paintGameOver (fn jm_paintGameOver [this _graphics]
        (ForcedLogUtil/jm_log ((this :f_commonStrings) :f_NOT_IMPLEMENTED) this)))
    
(set jm_draw (fn jm_draw [this _graphics]
        (:jm_paint (this :f_colorFillPaintable) _graphics)
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (:jm_getForegroundBasicColor (this :f_gameLayerManager)))
        (:jm_paint (this :f_gameSpecificPaintable) _graphics)))
    
(set jm_clear (fn jm_clear [this _graphics]
        (:jm_paint (this :f_colorFillPaintable) _graphics)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_nextRefresh (this :f_baseGameStatistics))
        (:jm_draw this _graphics)
        (:jm_paint (this :f_menuPaintable) _graphics)
        (:jm_paint (this :f_progressPaintable) _graphics)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))
    
(set jm_processEndLevelIntermissionGameState (fn jm_processEndLevelIntermissionGameState [this]
    nil))
    
(set jm_nonBotPaint (fn jm_nonBotPaint [this _graphics]
        (:jm_paint (this :f_endGamePaintable) _graphics)
        (:jm_paint (this :f_intermissionPaintable) _graphics)
        (:jm_paintIntermission this _graphics)
        (:jm_paint (this :f_touchPaintable) _graphics)))
    
(set jm_paintIntermission (fn jm_paintIntermission [this _graphics]
    nil))
    
(set jm_keyPressed (fn jm_keyPressed [this _keyCode]
        (:jm_keyPressedByDevice this _keyCode 0)))
    
(set jm_keyReleased (fn jm_keyReleased [this _keyCode]
        (:jm_keyReleasedByDevice this _keyCode 0)))
    
(set jm_keyRepeated (fn jm_keyRepeated [this _keyCode]
        (:jm_keyRepeatedByDevice this _keyCode 0)))
    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
        (:jm_keyPressedByDevice (this :f_inputProcessor) _keyCode _deviceId)))
    
(set jm_keyRepeatedByDevice (fn jm_keyRepeatedByDevice [this _keyCode _deviceId]
        (if (this :f_isSingleKeyRepeatableProcessing)
            (do
            (:jm_keyPressedByDevice (this :f_inputProcessor) _keyCode _deviceId)))))
    
(set jm_keyReleasedByDevice (fn jm_keyReleasedByDevice [this _keyCode _deviceId]
        (:jm_keyReleasedByDevice (this :f_inputProcessor) this _keyCode _deviceId)))
    
(set jm_handleRawKey (fn jm_handleRawKey [this _keyCode _deviceId _repeated]
    nil))
    
(set jm_endProgress (fn jm_endProgress [this _isProgress]
    (label jreturn
        (var _portion 30)
        (if (and _isProgress (:jm_isMainCanvas this))
            (do
            (var _myCommandsFactory (MyCommandsFactory/jm_getInstance))
            (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
            (:jm_start _progressCanvas)
            (JR/className (:jm_getCustomCommandListener this))
            (set _portion 4)))
        (return jreturn _portion))))
    
(set jm_processPlayingGame (fn jm_processPlayingGame [this]
        (:jm_update (this :f_cheatProcessor))
        (JR/className (:jm_getInputSensor (this :f_sensorGameUpdateProcessor)))
        (:jm_process (this :f_gameInputProcessor))
        (:jm_process (this :f_gameLayerManager))
        (:jm_process (this :f_startIntermissionProcessor))))
    
(set jm_threadInit (fn jm_threadInit [this]
    nil))
    
(set jm_processGame (fn jm_processGame [this]
        ((get RunnableCanvas/jproto :jm_process) this)
        (if (AllBinaryMediaManager/jm_update)
            (do
            (if (not (:jm_process (this :f_primaryPlayerQueue)))
                (do
                (:jm_process (this :f_secondaryPlayerQueue))))))
        (:jm_process (this :f_mainStateProcessor))
        (:jm_processInputList (this :f_menuInputProcessor))
        (:jm_process (this :f_endGameProcessor))
        (:jm_nextFrame (this :f_baseGameStatistics))))
    
(set jm_notifyDonePainting (fn jm_notifyDonePainting [this]
        (do
            (JR/className (this :f_threadObjectUtil)))))
    
(set jm_shouldWait (fn jm_shouldWait [this]
        (var _features (Features/jm_getInstance))
        (if (AndroidUtil/jm_isAndroid)
            (do
            nil)
            (if (:jm_isFeature _features ((this :f_openGLFeatureFactory) :f_OPENGL_2D))
            (do
            nil)
            (do
            (if (:jm_isDefault _features ((this :f_openGLFeatureFactory) :f_OPENGL))
                (do
                (var _openGLImageSpecificFactory (OpenGLImageSpecificFactory/jm_getInstance))
                (do
                    (while (_openGLImageSpecificFactory :f_updating)
                        (do
                    (Thread/jm_sleep (this :f_YIELD_SLEEP))))))))))))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (JR/className (this :f_logUtil))
            (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
            (:jm_addNormalPortion _progressCanvas 50 "Game Thread")
            (:jm_setCurrentThread this)
            (:jm_setRunning this true)
            (if (= (:jm_getCustomCommandListener this) (NullCommandListener/jstatic_NULL_COMMAND_LISTENER))
                (do
                (Thread/jm_sleep (this :f_YIELD_SLEEP))))
            (:jm_shouldWait this)
            (:jm_threadInit this)
            (if (= (:jm_getCustomCommandListener this) (NullCommandListener/jstatic_NULL_COMMAND_LISTENER))
                (do
                (Thread/jm_sleep (this :f_YIELD_SLEEP))))
            (:jm_open this)
            (var _gameAdState (:jm_getCurrentInstance (this :f_gameAdStateFactory)))
            (:jm_init _gameAdState)
            (:jm_setGameIsReady _gameAdState true)
            (:jm_run (this :f_gameBehavior) this)
            (JR/className (this :f_logUtil)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_run2 (fn jm_run2 [this]
        (var _features (Features/jm_getInstance))
        (if (or (:jm_isDefault _features ((this :f_openGLFeatureFactory) :f_OPENGL_AS_GAME_THREAD)) (J2MEUtil/jm_isHTML))
            (do
            (if (:jm_isDefault _features ((this :f_openGLFeatureFactory) :f_OPENGL_AS_GAME_THREAD))
                (do
                (JR/className (this :f_logUtil))))
            (if (J2MEUtil/jm_isHTML)
                (do
                (JR/className (this :f_logUtil))))
            (var _currentDisplayableFactory (CurrentDisplayableFactory/jm_getInstance))
            (:jm_setRunnable _currentDisplayableFactory (this :f_gameRunnable))
            (:jm_setDisplayable _currentDisplayableFactory this)
            (:jm_onResume (OpenGLThreadUtil/jm_getInstance)))
            (if (:jm_isDefault _features ((this :f_openGLFeatureFactory) :f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS))
            (do
            (JR/className (this :f_logUtil))
            (:jm_onResume (OpenGLThreadUtil/jm_getInstance))
            (do
                (while (:jm_isRunning this)
                    (do
                (:jm_run3 this))))
            (:jm_end this))
            (do
            (JR/className (this :f_logUtil))
            (do
                (while (:jm_isRunning this)
                    (do
                (:jm_run3 this))))
            (:jm_end this))))))
    
(set jm_run3 (fn jm_run3 [this]
        (JR/className (this :f_loopTimeHelper))
        (:jm_update (this :f_gameTickDisplayInfoSingleton))
        (:jm_processGame this)
        (:jm_processLoopSleep this)))
    
(set jm_setRunning (fn jm_setRunning [this _running]
        ((get RunnableCanvas/jproto :jm_setRunning) this _running)
        (try
            (do
            (var _features (Features/jm_getInstance))
            (if _running
                (do
                nil)
                (do
                (if (or (:jm_isDefault _features ((this :f_openGLFeatureFactory) :f_OPENGL)) (SWTUtil/jstatic_isSWT))
                    (do
                    (if (not= (JR/className (:jm_getGameInfo (this :f_gameLayerManager))) ((this :f_gameTypeFactory) :f_BOT))
                        (do
                        (var _currentDisplayableFactory (CurrentDisplayableFactory/jm_getInstance))
                        (:jm_clearRunnable _currentDisplayableFactory)))
                    (:jm_end this))))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_end (fn jm_end [this]
        (:jm_endRecording (this :f_screenCapture))
        (:jm_add (this :f_baseGameStatistics) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (:jm_toString (this :f_baseGameStatistics))) ((CommonSeps/jm_getInstance) :f_NEW_LINE))))
        (:jm_init (this :f_baseGameStatistics))
        (:jm_removeListener (this :f_gameKeyEventHandler) (this :f_cheatProcessor))
        (:jm_close this)
        (:jm_removeAllGameKeyInputListeners this)
        (:jm_endGameThread this)))
    
(set jm_endGameThread (fn jm_endGameThread [this]
        (:jm_removeListener (DisplayChangeEventHandler/jm_getInstance) this)
        (:jm_clear (GameLevelDisplayChangeEventListenersFactory/jm_getInstance))
        (var _gameAdState (:jm_getCurrentInstance (this :f_gameAdStateFactory)))
        (:jm_notPlayingAdState _gameAdState)))
    
(set jm_createHighScore (fn jm_createHighScore [this _score]
    (label jreturn
        (var _gameInfo (:jm_getGameInfo (this :f_gameLayerManager)))
        (return jreturn (HighScore/jnew_4 0 "NONE" (GameInfo/jnew_5 (:jm_getGameType _gameInfo) (:jm_getGameMode _gameInfo) ((PlayerTypesFactory/jm_getInstance) :f_PLAYER_TYPE_ONE) 0 0) _score)))))
    
(set jm_setHighScore (fn jm_setHighScore [this _abeClientInformation _name _score _autoSubmit _isLast]
        (:jm_setHighScore (this :f_gameBehavior) _abeClientInformation this _name _score _autoSubmit _isLast)))
    
(set jm_setHighScore2 (fn jm_setHighScore2 [this _abeClientInformation _name _score _autoSubmit _isLast]
        (var _highScore (:jm_createHighScore this _score))
        (var _textBox (HighScoreTextBox/jnew_9 (this :f_highScoresFactoryInterface) (this :f_highScoresHelper) _abeClientInformation (:jm_getGameInfo (this :f_gameLayerManager)) (:jm_getCustomCommandListener this) _name _highScore (:jm_getBackgroundBasicColor (this :f_gameLayerManager)) (:jm_getForegroundBasicColor (this :f_gameLayerManager))))
        (if _isLast
            (do
            (JR/className (:jm_getCustomCommandListener this))))
        (if _autoSubmit
            (do
            (:jm_runTask (SecondaryThreadPool/jm_getInstance) (SaveHighScoreRunnable/jnew_2 _isLast _textBox))))))
    
(set jm_getGameStateTimeHelper (fn jm_getGameStateTimeHelper [this]
    (label jreturn
        (return jreturn (this :f_gameStateTimeHelper)))))
    
(set jm_setInitialized (fn jm_setInitialized [this _initialized]
        (set (this :f_initialized) _initialized)))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (label jreturn
        (return jreturn (this :f_initialized)))))
    
(set jm_getSourceId (fn jm_getSourceId [this]
    (label jreturn
        (return jreturn (jstatic_id)))))
    
(set jm_setProgressPaintable (fn jm_setProgressPaintable [this _paintable]
        (set (this :f_progressPaintable) _paintable)))
    
(set jm_getStartIntermissionInterface (fn jm_getStartIntermissionInterface [this]
    (label jreturn
        (return jreturn (this :f_startIntermissionInterface)))))
    
(set jm_getEndLevelIntermissionInterface (fn jm_getEndLevelIntermissionInterface [this]
    (label jreturn
        (return jreturn (this :f_endLevelIntermissionInterface)))))
    
(set jm_setTouchPaintableP (fn jm_setTouchPaintableP [this _paintable]
        (set (this :f_touchPaintable) _paintable)))
    
(set jm_getTouchPaintableP (fn jm_getTouchPaintableP [this]
    (label jreturn
        (return jreturn (this :f_touchPaintable)))))
    
(set jm_setEndGamePaintable (fn jm_setEndGamePaintable [this _endGamePaintable]
        (set (this :f_endGamePaintable) _endGamePaintable)))
    
(set jm_getEndGamePaintable (fn jm_getEndGamePaintable [this]
    (label jreturn
        (return jreturn (this :f_endGamePaintable)))))
    
(set jm_setIntermissionPaintable (fn jm_setIntermissionPaintable [this _intermissionPaintable]
        (set (this :f_intermissionPaintable) _intermissionPaintable)))
    
(set jm_getIntermissionPaintable (fn jm_getIntermissionPaintable [this]
    (label jreturn
        (return jreturn (this :f_intermissionPaintable)))))
    
(set jm_getEndGameInfoP (fn jm_getEndGameInfoP [this]
    (label jreturn
        (return jreturn (this :f_endGameInfo)))))
    
(set jm_setHighScoresPaintable (fn jm_setHighScoresPaintable [this _highScoresPaintable]
        (set (this :f_highScoresPaintable) _highScoresPaintable)))
    
(set jm_getHighScoresPaintable (fn jm_getHighScoresPaintable [this]
    (label jreturn
        (return jreturn (this :f_highScoresPaintable)))))
    
(set jm_getRealHighScoresPaintable (fn jm_getRealHighScoresPaintable [this]
    (label jreturn
        (return jreturn (this :f_realHighScoresPaintable)))))
    
(set jm_clearPlayerGameInputList (fn jm_clearPlayerGameInputList [this]
        (var _playerGameInput nil)
        (do
            (var _index (JR/i32 (- (:jm_size (this :f_localPlayerGameInputList)) 1)))
            (while (>= _index 0)
                (do
            (set _playerGameInput (:jm_get (this :f_localPlayerGameInputList) _index))
            (:jm_removeListener (this :f_gameKeyEventHandler) _playerGameInput))
                (do (set _index (JR/i32 (- _index 1))))))
        (:jm_clear (this :f_localPlayerGameInputList))))
    
(set jm_addPlayerGameInput (fn jm_addPlayerGameInput [this _playerGameInput]
        (:jm_add (this :f_localPlayerGameInputList) _playerGameInput)))
    
(set jm_setMenuInputProcessor (fn jm_setMenuInputProcessor [this _menuInputProcessor]
        (set (this :f_menuInputProcessor) _menuInputProcessor)))
    
(set jm_getMenuInputProcessor (fn jm_getMenuInputProcessor [this]
    (label jreturn
        (return jreturn (this :f_menuInputProcessor)))))
    
(set jm_getMenuForm (fn jm_getMenuForm [this]
    (label jreturn
        (return jreturn (this :f_menuForm)))))
    
(set jm_setMenuForm (fn jm_setMenuForm [this _menuForm]
        (set (this :f_menuForm) _menuForm)))
    
(set jm_getStartLevel (fn jm_getStartLevel [this]
    (label jreturn
        (return jreturn (this :f_startLevel)))))
    
(set jm_setStartLevel (fn jm_setStartLevel [this _startLevel]
        (set (this :f_startLevel) _startLevel)))
    
(set jm_setTouchButtonsPaintable (fn jm_setTouchButtonsPaintable [this _touchButtonsPaintable]
        (set (this :f_touchButtonsPaintable) _touchButtonsPaintable)))
    
(set jm_getTouchButtonsPaintable (fn jm_getTouchButtonsPaintable [this]
    (label jreturn
        (return jreturn (this :f_touchButtonsPaintable)))))
    
(set jm_setGameInputProcessor (fn jm_setGameInputProcessor [this _gameInputProcessor]
        (set (this :f_gameInputProcessor) _gameInputProcessor)))
    
(set jm_getGameInputProcessor (fn jm_getGameInputProcessor [this]
    (label jreturn
        (return jreturn (this :f_gameInputProcessor)))))
    
(set jm_setEndGameProcessor (fn jm_setEndGameProcessor [this _endGameProcessor]
        (set (this :f_endGameProcessor) _endGameProcessor)))
    
(set jm_getEndGameProcessor (fn jm_getEndGameProcessor [this]
    (label jreturn
        (return jreturn (this :f_endGameProcessor)))))
    
(set jm_setEndGameStatePaintable (fn jm_setEndGameStatePaintable [this _endGameStatePaintable]
        (set (this :f_endGameStatePaintable) _endGameStatePaintable)))
    
(set jm_getEndGameStatePaintable (fn jm_getEndGameStatePaintable [this]
    (label jreturn
        (return jreturn (this :f_endGameStatePaintable)))))
    
(set jm_setNonBotPaintableP (fn jm_setNonBotPaintableP [this _nonBotPaintable]
        (set (this :f_nonBotPaintable) _nonBotPaintable)))
    
(set jm_getNonBotPaintableP (fn jm_getNonBotPaintableP [this]
    (label jreturn
        (return jreturn (this :f_nonBotPaintable)))))
    
(set jm_setStartIntermissionPaintable (fn jm_setStartIntermissionPaintable [this _startIntermissionPaintable]
        (set (this :f_startIntermissionPaintable) _startIntermissionPaintable)))
    
(set jm_getStartIntermissionPaintable (fn jm_getStartIntermissionPaintable [this]
    (label jreturn
        (return jreturn (this :f_startIntermissionPaintable)))))
    
(set jm_setMainStateProcessor (fn jm_setMainStateProcessor [this _mainStateProcessor]
        (set (this :f_mainStateProcessor) _mainStateProcessor)))
    
(set jm_getMainStateProcessor (fn jm_getMainStateProcessor [this]
    (label jreturn
        (return jreturn (this :f_mainStateProcessor)))))
    
(set jm_setProcessGameProcessor (fn jm_setProcessGameProcessor [this _processGameProcessor]
        (set (this :f_processGameProcessor) _processGameProcessor)))
    
(set jm_getProcessGameProcessor (fn jm_getProcessGameProcessor [this]
    (label jreturn
        (return jreturn (this :f_processGameProcessor)))))
    
(set jm_setOpenMenuPaintable (fn jm_setOpenMenuPaintable [this _openMenuPaintable]
        (set (this :f_openMenuPaintable) _openMenuPaintable)))
    
(set jm_getOpenMenuPaintable (fn jm_getOpenMenuPaintable [this]
    (label jreturn
        (return jreturn (this :f_openMenuPaintable)))))
    
(set jm_setPopupMenuInputProcessor (fn jm_setPopupMenuInputProcessor [this _popupMenuInputProcessor]
        (set (this :f_popupMenuInputProcessor) _popupMenuInputProcessor)))
    
(set jm_getPopupMenuInputProcessor (fn jm_getPopupMenuInputProcessor [this]
    (label jreturn
        (return jreturn (this :f_popupMenuInputProcessor)))))
    
(set jm_getSensorGameUpdateProcessor (fn jm_getSensorGameUpdateProcessor [this]
    (label jreturn
        (return jreturn (this :f_sensorGameUpdateProcessor)))))
    
(set jm_getRawGameInputProcessor (fn jm_getRawGameInputProcessor [this]
    (label jreturn
        (return jreturn (this :f_rawGameInputProcessor)))))
    
(set jm_getRawInputProcessor (fn jm_getRawInputProcessor [this]
    (label jreturn
        (return jreturn (this :f_rawInputProcessor)))))
    
(set jm_setInputProcessor (fn jm_setInputProcessor [this _inputProcessor]
        (set (this :f_inputProcessor) _inputProcessor)))
    
(set jm_getInputProcessor (fn jm_getInputProcessor [this]
    (label jreturn
        (return jreturn (this :f_inputProcessor)))))
    
(set jm_setMenuPaintable (fn jm_setMenuPaintable [this _menuPaintable]
        (set (this :f_menuPaintable) _menuPaintable)))
    
(set jm_getMenuPaintable (fn jm_getMenuPaintable [this]
    (label jreturn
        (return jreturn (this :f_menuPaintable)))))
    
(set jm_setFormPaintable (fn jm_setFormPaintable [this _formPaintable]
        (set (this :f_formPaintable) _formPaintable)))
    
(set jm_getFormPaintable (fn jm_getFormPaintable [this]
    (label jreturn
        (return jreturn (this :f_formPaintable)))))
    
(set jm_setGameSpecificPaintableP (fn jm_setGameSpecificPaintableP [this _gameSpecificPaintable]
        (set (this :f_gameSpecificPaintable) _gameSpecificPaintable)))
    
(set jm_getGameSpecificPaintableP (fn jm_getGameSpecificPaintableP [this]
    (label jreturn
        (return jreturn (this :f_gameSpecificPaintable)))))
    
(set jm_isSingleThread (fn jm_isSingleThread [this]
    (label jreturn
        (return jreturn (or (:jm_isAnyThreed (OpenGLFeatureUtil/jm_getInstance)) (SWTUtil/jstatic_isSWT))))))
    
(set jm_isRunningInAnotherThread (fn jm_isRunningInAnotherThread [this]
    (label jreturn
        (var _features (Features/jm_getInstance))
        (var _openGLFeatureFactory (OpenGLFeatureFactory/jm_getInstance))
        (if (:jm_isDefault _features (_openGLFeatureFactory :f_OPENGL_AS_GAME_THREAD))
            (do
            (return jreturn true))
            (do
            (return jreturn (:jm_isRunning this)))))))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (jstatic_TYPE)))))
    
(set jm_getTitle (fn jm_getTitle [this]
    (label jreturn
        (return jreturn ((get RunnableCanvas/jproto :jm_getTitle) this)))))
    
(set jm_isPaused (fn jm_isPaused [this]
    (label jreturn
        (return jreturn ((get RunnableCanvas/jproto :jm_isPaused) this)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_getInGameMenuBehavior jm_getInGameMenuBehavior :jm_setCurrentThread jm_setCurrentThread :jm_onEvent jm_onEvent :jm_onDisplayChangeEvent jm_onDisplayChangeEvent :jm_updateMenuFromEvent jm_updateMenuFromEvent :jm_processSleep jm_processSleep :jm_initPopupMenu jm_initPopupMenu :jm_initMenu jm_initMenu :jm_initMenu2 jm_initMenu2 :jm_updateMenu jm_updateMenu :jm_updateMenu2 jm_updateMenu2 :jm_pause jm_pause :jm_unPause jm_unPause :jm_isPausable jm_isPausable :jm_popupMenu jm_popupMenu :jm_popupMenu2 jm_popupMenu2 :jm_toggleMenu jm_toggleMenu :jm_closeMenu jm_closeMenu :jm_closeMenu2 jm_closeMenu2 :jm_open jm_open :jm_close jm_close :jm_processorInit jm_processorInit :jm_setProcessGameProcessorInit jm_setProcessGameProcessorInit :jm_initSpecialPaint jm_initSpecialPaint :jm_init jm_init :jm_notifyIntermission jm_notifyIntermission :jm_mediaInit jm_mediaInit :jm_initConfigurable jm_initConfigurable :jm_initApp jm_initApp :jm_initTouch jm_initTouch :jm_updateCurrentTouchInputFactory jm_updateCurrentTouchInputFactory :jm_updateTouch jm_updateTouch :jm_updateTouch2 jm_updateTouch2 :jm_postInitTouch jm_postInitTouch :jm_initCommands jm_initCommands :jm_addCommands jm_addCommands :jm_itemStateChanged jm_itemStateChanged :jm_updateScreenButtonPaintable jm_updateScreenButtonPaintable :jm_updateScreenButtonPaintable2 jm_updateScreenButtonPaintable2 :jm_getLayerManager jm_getLayerManager :jm_setLayerManager jm_setLayerManager :jm_isGameOver jm_isGameOver :jm_setGameOver jm_setGameOver :jm_processGameOver jm_processGameOver :jm_isHighScoreSubmitted jm_isHighScoreSubmitted :jm_setHighScoreSubmitted jm_setHighScoreSubmitted :jm_getGameState jm_getGameState :jm_setGameState jm_setGameState :jm_updateGameState jm_updateGameState :jm_updateGameKeyEventProcessor jm_updateGameKeyEventProcessor :jm_removeAllGameKeyInputListenersOnBuild jm_removeAllGameKeyInputListenersOnBuild :jm_removeAllGameKeyInputListeners jm_removeAllGameKeyInputListeners :jm_removeAllGameKeyInputListeners2 jm_removeAllGameKeyInputListeners2 :jm_removeKeyInputListener jm_removeKeyInputListener :jm_updateEndGameProcessor jm_updateEndGameProcessor :jm_updateEndGameProcessor2 jm_updateEndGameProcessor2 :jm_buildGameInit jm_buildGameInit :jm_cleanupGame jm_cleanupGame :jm_loadResourceLoadingLevel jm_loadResourceLoadingLevel :jm_loadResources jm_loadResources :jm_updateColor jm_updateColor :jm_buildGame jm_buildGame :jm_buildGame2 jm_buildGame2 :jm_addKeyInputListener jm_addKeyInputListener :jm_setGameCanvasStartListener jm_setGameCanvasStartListener :jm_loadState jm_loadState :jm_getLoadStateHashtable jm_getLoadStateHashtable :jm_setLoadStateHashtable jm_setLoadStateHashtable :jm_getCurrentStateHashtable jm_getCurrentStateHashtable :jm_paintGameOver jm_paintGameOver :jm_draw jm_draw :jm_clear jm_clear :jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_processEndLevelIntermissionGameState jm_processEndLevelIntermissionGameState :jm_nonBotPaint jm_nonBotPaint :jm_paintIntermission jm_paintIntermission :jm_keyPressed jm_keyPressed :jm_keyReleased jm_keyReleased :jm_keyRepeated jm_keyRepeated :jm_keyPressedByDevice jm_keyPressedByDevice :jm_keyRepeatedByDevice jm_keyRepeatedByDevice :jm_keyReleasedByDevice jm_keyReleasedByDevice :jm_handleRawKey jm_handleRawKey :jm_endProgress jm_endProgress :jm_processPlayingGame jm_processPlayingGame :jm_threadInit jm_threadInit :jm_processGame jm_processGame :jm_notifyDonePainting jm_notifyDonePainting :jm_shouldWait jm_shouldWait :jm_run jm_run :jm_run2 jm_run2 :jm_run3 jm_run3 :jm_setRunning jm_setRunning :jm_end jm_end :jm_endGameThread jm_endGameThread :jm_createHighScore jm_createHighScore :jm_setHighScore jm_setHighScore :jm_setHighScore2 jm_setHighScore2 :jm_getGameStateTimeHelper jm_getGameStateTimeHelper :jm_setInitialized jm_setInitialized :jm_isInitialized jm_isInitialized :jm_getSourceId jm_getSourceId :jm_setProgressPaintable jm_setProgressPaintable :jm_getStartIntermissionInterface jm_getStartIntermissionInterface :jm_getEndLevelIntermissionInterface jm_getEndLevelIntermissionInterface :jm_setTouchPaintableP jm_setTouchPaintableP :jm_getTouchPaintableP jm_getTouchPaintableP :jm_setEndGamePaintable jm_setEndGamePaintable :jm_getEndGamePaintable jm_getEndGamePaintable :jm_setIntermissionPaintable jm_setIntermissionPaintable :jm_getIntermissionPaintable jm_getIntermissionPaintable :jm_getEndGameInfoP jm_getEndGameInfoP :jm_setHighScoresPaintable jm_setHighScoresPaintable :jm_getHighScoresPaintable jm_getHighScoresPaintable :jm_getRealHighScoresPaintable jm_getRealHighScoresPaintable :jm_clearPlayerGameInputList jm_clearPlayerGameInputList :jm_addPlayerGameInput jm_addPlayerGameInput :jm_setMenuInputProcessor jm_setMenuInputProcessor :jm_getMenuInputProcessor jm_getMenuInputProcessor :jm_getMenuForm jm_getMenuForm :jm_setMenuForm jm_setMenuForm :jm_getStartLevel jm_getStartLevel :jm_setStartLevel jm_setStartLevel :jm_setTouchButtonsPaintable jm_setTouchButtonsPaintable :jm_getTouchButtonsPaintable jm_getTouchButtonsPaintable :jm_setGameInputProcessor jm_setGameInputProcessor :jm_getGameInputProcessor jm_getGameInputProcessor :jm_setEndGameProcessor jm_setEndGameProcessor :jm_getEndGameProcessor jm_getEndGameProcessor :jm_setEndGameStatePaintable jm_setEndGameStatePaintable :jm_getEndGameStatePaintable jm_getEndGameStatePaintable :jm_setNonBotPaintableP jm_setNonBotPaintableP :jm_getNonBotPaintableP jm_getNonBotPaintableP :jm_setStartIntermissionPaintable jm_setStartIntermissionPaintable :jm_getStartIntermissionPaintable jm_getStartIntermissionPaintable :jm_setMainStateProcessor jm_setMainStateProcessor :jm_getMainStateProcessor jm_getMainStateProcessor :jm_setProcessGameProcessor jm_setProcessGameProcessor :jm_getProcessGameProcessor jm_getProcessGameProcessor :jm_setOpenMenuPaintable jm_setOpenMenuPaintable :jm_getOpenMenuPaintable jm_getOpenMenuPaintable :jm_setPopupMenuInputProcessor jm_setPopupMenuInputProcessor :jm_getPopupMenuInputProcessor jm_getPopupMenuInputProcessor :jm_getSensorGameUpdateProcessor jm_getSensorGameUpdateProcessor :jm_getRawGameInputProcessor jm_getRawGameInputProcessor :jm_getRawInputProcessor jm_getRawInputProcessor :jm_setInputProcessor jm_setInputProcessor :jm_getInputProcessor jm_getInputProcessor :jm_setMenuPaintable jm_setMenuPaintable :jm_getMenuPaintable jm_getMenuPaintable :jm_setFormPaintable jm_setFormPaintable :jm_getFormPaintable jm_getFormPaintable :jm_setGameSpecificPaintableP jm_setGameSpecificPaintableP :jm_getGameSpecificPaintableP jm_getGameSpecificPaintableP :jm_isSingleThread jm_isSingleThread :jm_isRunningInAnotherThread jm_isRunningInAnotherThread :jm_getType jm_getType :jm_getTitle jm_getTitle :jm_isPaused jm_isPaused} RunnableCanvas/jproto))


