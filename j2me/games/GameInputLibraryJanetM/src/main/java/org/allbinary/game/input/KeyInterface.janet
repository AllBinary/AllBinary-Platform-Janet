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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class KeyInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_keyPressed nil)
(var jm_keyReleased nil)
(var jm_keyPressedByDevice nil)
(var jm_keyReleasedByDevice nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "KeyInterface"} jproto))
    this))

    
(set jm_keyPressed (fn jm_keyPressed [this _keyCode]
    (error (JR/newException "AbstractMethodError" "keyPressed"))))
    
(set jm_keyReleased (fn jm_keyReleased [this _keyCode]
    (error (JR/newException "AbstractMethodError" "keyReleased"))))
    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
    (error (JR/newException "AbstractMethodError" "keyPressedByDevice"))))
    
(set jm_keyReleasedByDevice (fn jm_keyReleasedByDevice [this _keyCode _deviceId]
    (error (JR/newException "AbstractMethodError" "keyReleasedByDevice"))))

(set jproto @{:jm_keyPressed jm_keyPressed :jm_keyReleased jm_keyReleased :jm_keyPressedByDevice jm_keyPressedByDevice :jm_keyReleasedByDevice jm_keyReleasedByDevice})


