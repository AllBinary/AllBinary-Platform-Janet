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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class TimeBaseInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getTimeBase nil)
(var jm_setTimeBase nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TimeBaseInterface"} jproto))
    this))

    
(set jm_getTimeBase (fn jm_getTimeBase [this]
    (error (JR/newException "AbstractMethodError" "getTimeBase"))))
    
(set jm_setTimeBase (fn jm_setTimeBase [this _timeBase]
    (error (JR/newException "AbstractMethodError" "setTimeBase"))))

(set jproto @{:jm_getTimeBase jm_getTimeBase :jm_setTimeBase jm_setTimeBase})


