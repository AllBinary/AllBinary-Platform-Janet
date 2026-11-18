# Generated Code Do Not Modify
# package org.allbinary.device

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- NullGL10/jstatic_NULL_GL10 [& args] (JR/call jfile "./NullGL10" "jstatic_NULL_GL10" args))

# Java class OpenGLESGraphics
(var jproto nil)
(var jnew_0 nil)
(var jm_updateGL nil)
(var jm_set nil)
(var jm_init nil)
(var jm_update nil)
(var jm_setOrthoginalMode nil)
(var jm_setCameraMode nil)
(var jm_getGlP nil)
(var jm_setFontDebug nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLESGraphics" :f_commonStrings nil :f_gl nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_gl (NullGL10/jstatic_NULL_GL10))
    this))
    
(set jm_updateGL (fn jm_updateGL [this _gl]
    nil))
    
(set jm_set (fn jm_set [this _gl]
    nil))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_update (fn jm_update [this]
    nil))
    
(set jm_setOrthoginalMode (fn jm_setOrthoginalMode [this]
    nil))
    
(set jm_setCameraMode (fn jm_setCameraMode [this]
    nil))
    
(set jm_getGlP (fn jm_getGlP [this]
    (label jreturn
        (return jreturn (this :f_gl)))))
    
(set jm_setFontDebug (fn jm_setFontDebug [this _font _fontDebug]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_updateGL jm_updateGL :jm_set jm_set :jm_init jm_init :jm_update jm_update :jm_setOrthoginalMode jm_setOrthoginalMode :jm_setCameraMode jm_setCameraMode :jm_getGlP jm_getGlP :jm_setFontDebug jm_setFontDebug})


