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
# package org.allbinary.logic.system.os

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class OperatingSystems
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_isUnknownSpecificOSAllowed nil)
(var jm_setUnknownSpecificOSAllowed nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OperatingSystems" :f_LINUX nil :f_WINDOWS nil :f_SOLARIS nil :f_WINDOWS2000 nil :f_WINDOWS_NT nil :f_WINDOWS_10 nil :f_WINDOWS_11 nil :f_WINDOWS_VISTA nil :f_WINDOWS_XP nil :f_ANDROID nil :f_HARMONY nil :f_unknownSpecificOSAllowed false} jproto))
    (put this :f_LINUX "Linux")
    (put this :f_WINDOWS "Windows")
    (put this :f_SOLARIS "Solaris")
    (put this :f_WINDOWS2000 "Windows 2000")
    (put this :f_WINDOWS_NT "Windows NT")
    (put this :f_WINDOWS_10 "Windows 10")
    (put this :f_WINDOWS_11 "Windows 11")
    (put this :f_WINDOWS_VISTA "Windows Vista")
    (put this :f_WINDOWS_XP "Windows XP")
    (put this :f_ANDROID (this :f_LINUX))
    (put this :f_HARMONY "HarmonyOS")
    (put this :f_unknownSpecificOSAllowed true)
    this))
    
(set jm_isUnknownSpecificOSAllowed (fn jm_isUnknownSpecificOSAllowed [this]
    (label jreturn
        (return jreturn (this :f_unknownSpecificOSAllowed)))))
    
(set jm_setUnknownSpecificOSAllowed (fn jm_setUnknownSpecificOSAllowed [this _aUnknownSpecificOSAllowed]
        (set (this :f_unknownSpecificOSAllowed) _aUnknownSpecificOSAllowed)))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{:jm_isUnknownSpecificOSAllowed jm_isUnknownSpecificOSAllowed :jm_setUnknownSpecificOSAllowed jm_setUnknownSpecificOSAllowed})


