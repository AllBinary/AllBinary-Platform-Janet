# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles.shader

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class OpenGLObject3dProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_process_2 nil)
(var jm_process_3 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLObject3dProcessor" :f_commonStrings nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    this))

    
(set jm_process_2 (fn jm_process_2 [this _gl _object3d]
    nil))
    
(set jm_process_3 (fn jm_process_3 [this _gl _object3d _index]
    nil))

(set jproto @{:jm_process_2 jm_process_2 :jm_process_3 jm_process_3})


