# Generated Code Do Not Modify
# package org.allbinary.view

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class EmulatorViewInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setMidlet nil)
(var jm_onEmulatorInitComplete nil)
(var jm_onSetDisplayable nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "EmulatorViewInterface"} jproto))
    this))

    
(set jm_setMidlet (fn jm_setMidlet [this _midlet]
    (error (JR/newException "AbstractMethodError" "setMidlet"))))
    
(set jm_onEmulatorInitComplete (fn jm_onEmulatorInitComplete [this _midletActivity]
    (error (JR/newException "AbstractMethodError" "onEmulatorInitComplete"))))
    
(set jm_onSetDisplayable (fn jm_onSetDisplayable [this _displayable]
    (error (JR/newException "AbstractMethodError" "onSetDisplayable"))))

(set jproto @{:jm_setMidlet jm_setMidlet :jm_onEmulatorInitComplete jm_onEmulatorInitComplete :jm_onSetDisplayable jm_onSetDisplayable})


