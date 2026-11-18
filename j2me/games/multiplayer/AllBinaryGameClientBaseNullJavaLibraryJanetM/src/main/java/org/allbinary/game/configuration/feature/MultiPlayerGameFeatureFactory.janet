# Generated Code Do Not Modify
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))

# Java class MultiPlayerGameFeatureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_addCommands nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MultiPlayerGameFeatureFactory"} jproto))
    this))
    
(set jm_addCommands (fn jm_addCommands [this _anyType]
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (var _canvas _anyType)
        (:jm_addCommand _canvas (_gameCommandsFactory :f_QUIT_COMMAND))))

(set jproto @{:jm_addCommands jm_addCommands})


