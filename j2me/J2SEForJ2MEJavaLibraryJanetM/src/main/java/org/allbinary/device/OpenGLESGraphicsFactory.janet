# Generated Code Do Not Modify
# package org.allbinary.device

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- OpenGLESNullGraphicsFactory/jm_getInstance [& args] (JR/call jfile "./OpenGLESNullGraphicsFactory" "jm_getInstance" args))

# Java class OpenGLESGraphicsFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getOpenGLESGraphicsInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLESGraphicsFactory"} jproto))
    this))

    
(set jm_getOpenGLESGraphicsInstance (fn jm_getOpenGLESGraphicsInstance [this]
    (label jreturn
        (return jreturn (OpenGLESNullGraphicsFactory/jm_getInstance)))))

(set jproto @{:jm_getOpenGLESGraphicsInstance jm_getOpenGLESGraphicsInstance})


