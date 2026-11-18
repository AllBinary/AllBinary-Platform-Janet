# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class OpenGLThreadUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_set nil)
(var jm_onPause nil)
(var jm_onResume nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLThreadUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_set (fn jm_set [this _glSurfaceView]
    nil))
    
(set jm_onPause (fn jm_onPause [this]
    nil))
    
(set jm_onResume (fn jm_onResume [this]
    nil))

(set jproto @{:jm_set jm_set :jm_onPause jm_onPause :jm_onResume jm_onResume})


