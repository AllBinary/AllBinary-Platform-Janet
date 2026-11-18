# Generated Code Do Not Modify
# package javax.microedition.lcdui

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullCommandListener
(var jproto nil)
(var jcell_NULL_COMMAND_LISTENER :jnone)
(var jstatic_NULL_COMMAND_LISTENER nil)
(var jsetstatic_NULL_COMMAND_LISTENER nil)
(var jnew_0 nil)
(var jm_commandAction nil)

(set jstatic_NULL_COMMAND_LISTENER (fn jstatic_NULL_COMMAND_LISTENER []
  (when (= jcell_NULL_COMMAND_LISTENER :jnone) (set jcell_NULL_COMMAND_LISTENER (jnew_0)))
  jcell_NULL_COMMAND_LISTENER))
(set jsetstatic_NULL_COMMAND_LISTENER (fn jsetstatic_NULL_COMMAND_LISTENER [value] (set jcell_NULL_COMMAND_LISTENER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullCommandListener"} jproto))
    this))

    
(set jm_commandAction (fn jm_commandAction [this _c _d]
    nil))

(set jproto @{:jm_commandAction jm_commandAction})


