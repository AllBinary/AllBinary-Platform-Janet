# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
(import ../../../java/lang/Runnable :as Runnable)

# Java class PriorityRunnable
(var jproto nil)
(var jnew_0 nil)
(var jm_getPriority nil)
(var jm_isDone nil)
(var jm_reset nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PriorityRunnable"} jproto))
    this))

    
(set jm_getPriority (fn jm_getPriority [this]
    (error (JR/newException "AbstractMethodError" "getPriority"))))
    
(set jm_isDone (fn jm_isDone [this]
    (error (JR/newException "AbstractMethodError" "isDone"))))
    
(set jm_reset (fn jm_reset [this]
    (error (JR/newException "AbstractMethodError" "reset"))))

(set jproto @{:jm_getPriority jm_getPriority :jm_isDone jm_isDone :jm_reset jm_reset})


