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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameAdStateFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/business/advertisement/GameAdStateFactory" "jm_getInstance" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- CurrentDisplayableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(import ./DemoGameBehavior :as DemoGameBehavior)

# Java class BaseGameBehavior
(var jproto nil)
(var jcell_instanceC :jnone)
(var jstatic_instanceC nil)
(var jsetstatic_instanceC nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_pause nil)
(var jm_unPause nil)
(var jm_updateTouch nil)
(var jm_updateScreenButtonPaintable nil)
(var jm_setGameState nil)
(var jm_removeAllGameKeyInputListeners nil)
(var jm_updateEndGameProcessor nil)
(var jm_buildGame nil)
(var jm_run nil)
(var jm_setHighScore nil)

(set jstatic_instanceC (fn jstatic_instanceC []
  (when (= jcell_instanceC :jnone) (set jcell_instanceC (jnew_0)))
  jcell_instanceC))
(set jsetstatic_instanceC (fn jsetstatic_instanceC [value] (set jcell_instanceC value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseGameBehavior"} jproto))
    (JR/superInit this (DemoGameBehavior/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceC)))))
    
(set jm_init (fn jm_init [this]
        (var _gameAdState (:jm_getCurrentInstance (GameAdStateFactory/jm_getInstance)))
        (:jm_playingAdState _gameAdState)))
    
(set jm_pause (fn jm_pause [this _allBinaryGameCanvas]
        (var _features (Features/jm_getInstance))
        (if (:jm_isDefault _features ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL_AS_GAME_THREAD))
            (do
            (var _currentDisplayableFactory (CurrentDisplayableFactory/jm_getInstance))
            (:jm_setRunnable _currentDisplayableFactory (_allBinaryGameCanvas :f_gamePauseRunnable))))))
    
(set jm_unPause (fn jm_unPause [this _allBinaryGameCanvas]
        (if (:jm_isDefault (Features/jm_getInstance) ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL_AS_GAME_THREAD))
            (do
            (var _currentDisplayableFactory (CurrentDisplayableFactory/jm_getInstance))
            (:jm_setRunnable _currentDisplayableFactory (_allBinaryGameCanvas :f_gameRunnable))
            (:jm_setDisplayable _currentDisplayableFactory _allBinaryGameCanvas)))))
    
(set jm_updateTouch (fn jm_updateTouch [this _allBinaryGameCanvas]
        (:jm_updateTouch2 _allBinaryGameCanvas)))
    
(set jm_updateScreenButtonPaintable (fn jm_updateScreenButtonPaintable [this _allBinaryGameCanvas]
        (:jm_updateScreenButtonPaintable2 _allBinaryGameCanvas)))
    
(set jm_setGameState (fn jm_setGameState [this _allBinaryGameCanvas]
        (:jm_updateGameState _allBinaryGameCanvas)))
    
(set jm_removeAllGameKeyInputListeners (fn jm_removeAllGameKeyInputListeners [this _allBinaryGameCanvas]
        (:jm_removeAllGameKeyInputListeners2 _allBinaryGameCanvas)))
    
(set jm_updateEndGameProcessor (fn jm_updateEndGameProcessor [this _allBinaryGameCanvas]
        (:jm_updateEndGameProcessor2 _allBinaryGameCanvas)))
    
(set jm_buildGame (fn jm_buildGame [this _allBinaryGameCanvas]
        (:jm_buildGame2 _allBinaryGameCanvas)))
    
(set jm_run (fn jm_run [this _allBinaryGameCanvas]
        (:jm_run2 _allBinaryGameCanvas)))
    
(set jm_setHighScore (fn jm_setHighScore [this _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast]
        (:jm_setHighScore2 _allBinaryGameCanvas _abeClientInformation _name _score _autoSubmit _isLast)))

(set jproto (table/setproto @{:jm_init jm_init :jm_pause jm_pause :jm_unPause jm_unPause :jm_updateTouch jm_updateTouch :jm_updateScreenButtonPaintable jm_updateScreenButtonPaintable :jm_setGameState jm_setGameState :jm_removeAllGameKeyInputListeners jm_removeAllGameKeyInputListeners :jm_updateEndGameProcessor jm_updateEndGameProcessor :jm_buildGame jm_buildGame :jm_run jm_run :jm_setHighScore jm_setHighScore} DemoGameBehavior/jproto))


