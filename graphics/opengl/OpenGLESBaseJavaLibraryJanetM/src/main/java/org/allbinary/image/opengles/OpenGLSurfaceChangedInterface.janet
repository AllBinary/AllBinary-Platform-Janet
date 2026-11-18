# Generated Code Do Not Modify
# package org.allbinary.image.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class OpenGLSurfaceChangedInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_set nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLSurfaceChangedInterface"} jproto))
    this))

    
(set jm_set (fn jm_set [this _gl]
    (error (JR/newException "AbstractMethodError" "set"))))

(set jproto @{:jm_set jm_set})


