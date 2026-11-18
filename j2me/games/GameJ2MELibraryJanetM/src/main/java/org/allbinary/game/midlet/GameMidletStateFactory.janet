# Generated Code Do Not Modify
# package org.allbinary.game.midlet

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameStateFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/state/GameStateFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))

# Java class GameMidletStateFactory
(var jproto nil)
(var jcell_INSTANCE :jnone)
(var jstatic_INSTANCE nil)
(var jsetstatic_INSTANCE nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getCurrentGameState nil)
(var jm_setCurrentGameState nil)

(set jstatic_INSTANCE (fn jstatic_INSTANCE []
  (when (= jcell_INSTANCE :jnone) (set jcell_INSTANCE (jnew_0)))
  jcell_INSTANCE))
(set jsetstatic_INSTANCE (fn jsetstatic_INSTANCE [value] (set jcell_INSTANCE value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameMidletStateFactory" :f_logUtil nil :f_currentGameState nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_currentGameState ((GameStateFactory/jm_getInstance) :f_NO_GAME_STATE))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_INSTANCE)))))
    
(set jm_getCurrentGameState (fn jm_getCurrentGameState [this]
    (label jreturn
        (return jreturn (this :f_currentGameState)))))
    
(set jm_setCurrentGameState (fn jm_setCurrentGameState [this _currentGameState]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_CURRENT)) " GameState: ") (:jm_toString_1 (StringUtil/jm_getInstance) _currentGameState))) this "setCurrentGameState")
        (set (this :f_currentGameState) _currentGameState)))

(set jproto @{:jm_getCurrentGameState jm_getCurrentGameState :jm_setCurrentGameState jm_setCurrentGameState})


