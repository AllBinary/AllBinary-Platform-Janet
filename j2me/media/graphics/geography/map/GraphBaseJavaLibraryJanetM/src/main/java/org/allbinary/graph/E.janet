# Generated Code Do Not Modify
# package org.allbinary.graph

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class E
(var jproto nil)
(var jcell_e :jnone)
(var jstatic_e nil)
(var jsetstatic_e nil)
(var jnew_0 nil)
(var jm_newInstance nil)

(set jstatic_e (fn jstatic_e []
  (when (= jcell_e :jnone) (set jcell_e (jnew_0)))
  jcell_e))
(set jsetstatic_e (fn jsetstatic_e [value] (set jcell_e value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "E"} jproto))
    this))

    
(set jm_newInstance (fn jm_newInstance [this]
    (label jreturn
        (return jreturn (jstatic_e)))))

(set jproto @{:jm_newInstance jm_newInstance})


