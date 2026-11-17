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
# package org.allbinary.thread

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/lang/Thread :as Thread)
(import ../../../java/lang/Runnable :as Runnable)

# Java class RunnableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_isRunning nil)
(var jm_setRunning nil)
(var jm_setThread nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RunnableInterface"} jproto))
    this))

    
(set jm_isRunning (fn jm_isRunning [this]
    (error (JR/newException "AbstractMethodError" "isRunning"))))
    
(set jm_setRunning (fn jm_setRunning [this _isRunning]
    (error (JR/newException "AbstractMethodError" "setRunning"))))
    
(set jm_setThread (fn jm_setThread [this _thread]
    (error (JR/newException "AbstractMethodError" "setThread"))))

(set jproto @{:jm_isRunning jm_isRunning :jm_setRunning jm_setRunning :jm_setThread jm_setThread})


