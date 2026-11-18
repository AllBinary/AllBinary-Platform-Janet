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
# package org.allbinary.graphics.displayable.screen

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- J2MEUtil/jm_isJ2ME [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isJ2ME" args))
(defn- Processor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/canvas/Processor" "jm_getInstance" args))
(defn- ScreenRepaintProcessor/jnew_1 [& args] (JR/call jfile "./ScreenRepaintProcessor" "jnew_1" args))

# Java class ScreenRepaintProcessorFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_create nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ScreenRepaintProcessorFactory"} jproto))
    this))
    
(set jm_create (fn jm_create [this _displayable]
    (label jreturn
        (if (not (J2MEUtil/jm_isJ2ME))
            (do
            (return jreturn (ScreenRepaintProcessor/jnew_1 _displayable)))
            (do
            (return jreturn (Processor/jm_getInstance)))))))

(set jproto @{:jm_create jm_create})


