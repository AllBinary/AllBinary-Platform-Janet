# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(defn- NullABRunnable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/thread/NullABRunnable" "jm_getInstance" args))

# Java class LicenseCheckRunnableFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LicenseCheckRunnableFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _specialDemoGameMidlet]
    (label jreturn
        (return jreturn (NullABRunnable/jm_getInstance)))))

(set jproto @{:jm_getInstance jm_getInstance})


