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
# package org.allbinary.logic.java.characters

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CharacterSetData
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CharacterSetData" :f_US_ASCII nil :f_ISO_8859_1 nil :f_UTF_8 nil :f_UTF_16 nil :f_UTF_16BE nil :f_UTF_16LE nil} jproto))
    (put this :f_US_ASCII "US-ASCII")
    (put this :f_ISO_8859_1 "ISO-8859-1")
    (put this :f_UTF_8 "UTF-8")
    (put this :f_UTF_16 "UTF-16")
    (put this :f_UTF_16BE "UTF-16BE")
    (put this :f_UTF_16LE "UTF-16LE")
    this))

(set jproto @{})


