# Generated Code Do Not Modify
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ScreenInfo
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ScreenInfo" :f_SMALL_WIDTH 0 :f_SMALL_HEIGHT 0 :f_MEDIUM_WIDTH 0 :f_MEDIUM_HEIGHT 0} jproto))
    (put this :f_SMALL_WIDTH 320)
    (put this :f_SMALL_HEIGHT 240)
    (put this :f_MEDIUM_WIDTH 800)
    (put this :f_MEDIUM_HEIGHT 600)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


