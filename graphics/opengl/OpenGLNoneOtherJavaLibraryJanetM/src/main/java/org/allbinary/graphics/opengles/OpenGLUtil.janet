# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/lang/Runnable :as Runnable)

# Java class OpenGLUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_addImage nil)
(var jm_clear nil)
(var jm_addRunnable nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_addImage (fn jm_addImage [this _image]
    (label jreturn
        (return jreturn _image))))
    
(set jm_clear (fn jm_clear [this]
    nil))
    
(set jm_addRunnable (fn jm_addRunnable [this _runnable]
    nil))

(set jproto @{:jm_addImage jm_addImage :jm_clear jm_clear :jm_addRunnable jm_addRunnable})


