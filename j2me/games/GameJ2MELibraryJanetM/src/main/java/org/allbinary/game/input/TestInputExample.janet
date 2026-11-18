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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class TestInputExample
(var jproto nil)
(var jnew_0 nil)
(var jm_up nil)
(var jm_down nil)
(var jm_left nil)
(var jm_right nil)
(var jm_strafeLeft nil)
(var jm_strafeRight nil)
(var jm_paint nil)
(var jm_paintThreed nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TestInputExample" :f_testValue 0} jproto))
    
    this))

    
(set jm_up (fn jm_up [this]
    nil))
    
(set jm_down (fn jm_down [this]
    nil))
    
(set jm_left (fn jm_left [this]
        (set (this :f_testValue) (JR/i32 (+ (this :f_testValue) 1)))))
    
(set jm_right (fn jm_right [this]
        (set (this :f_testValue) (JR/i32 (- (this :f_testValue) 1)))))
    
(set jm_strafeLeft (fn jm_strafeLeft [this]
    nil))
    
(set jm_strafeRight (fn jm_strafeRight [this]
    nil))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))

(set jproto @{:jm_up jm_up :jm_down jm_down :jm_left jm_left :jm_right jm_right :jm_strafeLeft jm_strafeLeft :jm_strafeRight jm_strafeRight :jm_paint jm_paint :jm_paintThreed jm_paintThreed})


