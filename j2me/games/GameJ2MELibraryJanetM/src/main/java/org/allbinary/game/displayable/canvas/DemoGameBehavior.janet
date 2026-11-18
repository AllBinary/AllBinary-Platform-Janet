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
(defn- GameTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/GameTypeFactory" "jm_getInstance" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class DemoGameBehavior
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
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

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DemoGameBehavior" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_pause (fn jm_pause [this _allBinaryGameCanvas]
    nil))
    
(set jm_unPause (fn jm_unPause [this _allBinaryGameCanvas]
    nil))
    
(set jm_updateTouch (fn jm_updateTouch [this _allBinaryGameCanvas]
    nil))
    
(set jm_updateScreenButtonPaintable (fn jm_updateScreenButtonPaintable [this _allBinaryGameCanvas]
        (:jm_setTouchPaintableP _allBinaryGameCanvas (NullPaintable/jm_getInstance))))
    
(set jm_setGameState (fn jm_setGameState [this _allBinaryGameCanvas]
    nil))
    
(set jm_removeAllGameKeyInputListeners (fn jm_removeAllGameKeyInputListeners [this _allBinaryGameCanvas]
    nil))
    
(set jm_updateEndGameProcessor (fn jm_updateEndGameProcessor [this _allBinaryGameCanvas]
    nil))
    
(set jm_buildGame (fn jm_buildGame [this _allBinaryGameCanvas]
    nil))
    
(set jm_run (fn jm_run [this _allBinaryGameCanvas]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) (JR/toString ((GameTypeFactory/jm_getInstance) :f_BOT)) this (_commonStrings :f_RUN))))
    
(set jm_setHighScore (fn jm_setHighScore [this _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast]
    nil))

(set jproto @{:jm_init jm_init :jm_pause jm_pause :jm_unPause jm_unPause :jm_updateTouch jm_updateTouch :jm_updateScreenButtonPaintable jm_updateScreenButtonPaintable :jm_setGameState jm_setGameState :jm_removeAllGameKeyInputListeners jm_removeAllGameKeyInputListeners :jm_updateEndGameProcessor jm_updateEndGameProcessor :jm_buildGame jm_buildGame :jm_run jm_run :jm_setHighScore jm_setHighScore})


