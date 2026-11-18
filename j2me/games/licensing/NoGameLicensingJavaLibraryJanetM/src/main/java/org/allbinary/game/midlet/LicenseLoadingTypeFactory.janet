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
# package org.allbinary.game.midlet

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LicenseLoadingType/jnew_1 [& args] (JR/call jfile "./LicenseLoadingType" "jnew_1" args))

# Java class LicenseLoadingTypeFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getIntance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LicenseLoadingTypeFactory" :f_INITIAL_LOADING nil :f_GAME_START nil :f_LOGIN nil :f_OTHER nil} jproto))
    (put this :f_INITIAL_LOADING (LicenseLoadingType/jnew_1 "Initial Loading"))
    (put this :f_GAME_START (LicenseLoadingType/jnew_1 "Game Start"))
    (put this :f_LOGIN (LicenseLoadingType/jnew_1 "Login"))
    (put this :f_OTHER (LicenseLoadingType/jnew_1 "Other/Usually The First Non Demo Level"))
    this))

    
(set jm_getIntance (fn jm_getIntance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


