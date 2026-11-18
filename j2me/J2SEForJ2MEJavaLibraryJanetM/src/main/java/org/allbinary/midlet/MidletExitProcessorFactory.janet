#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.midlet

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AppletUtil/jm_isAppletLoader [& args] (JR/call jfile "../../../org/allbinary/AppletUtil" "jm_isAppletLoader" args))
(defn- J2MEUtil/jm_isJ2ME [& args] (JR/call jfile "../../../org/allbinary/J2MEUtil" "jm_isJ2ME" args))
(defn- Processor/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/canvas/Processor" "jm_getInstance" args))
(defn- MidletExitProcessor/jnew_1 [& args] (JR/call jfile "./MidletExitProcessor" "jnew_1" args))

# Java class MidletExitProcessorFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getExitInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MidletExitProcessorFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getExitInstance (fn jm_getExitInstance [this _midlet]
    (label jreturn
        (if (or (AppletUtil/jm_isAppletLoader _midlet) (J2MEUtil/jm_isJ2ME))
            (do
            (return jreturn (Processor/jm_getInstance)))
            (do
            (return jreturn (MidletExitProcessor/jnew_1 _midlet)))))))

(set jproto @{:jm_getExitInstance jm_getExitInstance})


