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
(import ../../../../org/allbinary/graphics/paint/PaintableInterface :as PaintableInterface)

# Java class TestInputInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_up nil)
(var jm_down nil)
(var jm_left nil)
(var jm_right nil)
(var jm_strafeLeft nil)
(var jm_strafeRight nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TestInputInterface"} jproto))
    this))

    
(set jm_up (fn jm_up [this]
    (error (JR/newException "AbstractMethodError" "up"))))
    
(set jm_down (fn jm_down [this]
    (error (JR/newException "AbstractMethodError" "down"))))
    
(set jm_left (fn jm_left [this]
    (error (JR/newException "AbstractMethodError" "left"))))
    
(set jm_right (fn jm_right [this]
    (error (JR/newException "AbstractMethodError" "right"))))
    
(set jm_strafeLeft (fn jm_strafeLeft [this]
    (error (JR/newException "AbstractMethodError" "strafeLeft"))))
    
(set jm_strafeRight (fn jm_strafeRight [this]
    (error (JR/newException "AbstractMethodError" "strafeRight"))))

(set jproto @{:jm_up jm_up :jm_down jm_down :jm_left jm_left :jm_right jm_right :jm_strafeLeft jm_strafeLeft :jm_strafeRight jm_strafeRight})


