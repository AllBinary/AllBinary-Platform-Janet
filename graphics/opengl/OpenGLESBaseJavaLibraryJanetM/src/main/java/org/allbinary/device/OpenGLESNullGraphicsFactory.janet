# Generated Code Do Not Modify
# package org.allbinary.device

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- OpenGLESGraphics/jnew_0 [& args] (JR/call jfile "./OpenGLESGraphics" "jnew_0" args))

# Java class OpenGLESNullGraphicsFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (OpenGLESGraphics/jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLESNullGraphicsFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


