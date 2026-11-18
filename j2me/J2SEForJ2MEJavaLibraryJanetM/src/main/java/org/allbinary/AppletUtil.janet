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
# package org.allbinary

(import ../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

#import org.allbinary.logic.communication.log.PreLogUtil;
# Java class AppletUtil
(var jproto nil)
(var jcell_applet :jnone)
(var jstatic_applet nil)
(var jsetstatic_applet nil)
(var jnew_0 nil)
(var jm_setApplet nil)
(var jm_isAppletLoader nil)

(set jstatic_applet (fn jstatic_applet []
  (when (= jcell_applet :jnone) (set jcell_applet false))
  jcell_applet))
(set jsetstatic_applet (fn jsetstatic_applet [value] (set jcell_applet value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AppletUtil"} jproto))
    this))
    
(set jm_setApplet (fn jm_setApplet []
        (set jcell_applet true)))
    
(set jm_isAppletLoader (fn jm_isAppletLoader [_anyType]
    (label jreturn
        (return jreturn (jstatic_applet)))))

(set jproto @{})


