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
# package org.allbinary.game.physics.velocity

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./BasicVelocityInterface :as BasicVelocityInterface)

# Java class VelocityInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getMaxForwardVelocity nil)
(var jm_getMaxReverseVelocity nil)
(var jm_limitMaxXYForwardVelocity nil)
(var jm_limitMaxXYReverseVelocity nil)
(var jm_limitXYToForwardAndReverseMaxVelocity nil)
(var jm_limitMaxXYVelocity nil)
(var jm_setMaxForwardVelocity nil)
(var jm_setMaxReverseVelocity nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VelocityInterface"} jproto))
    this))

    
(set jm_getMaxForwardVelocity (fn jm_getMaxForwardVelocity [this]
    (error (JR/newException "AbstractMethodError" "getMaxForwardVelocity"))))
    
(set jm_getMaxReverseVelocity (fn jm_getMaxReverseVelocity [this]
    (error (JR/newException "AbstractMethodError" "getMaxReverseVelocity"))))
    
(set jm_limitMaxXYForwardVelocity (fn jm_limitMaxXYForwardVelocity [this]
    (error (JR/newException "AbstractMethodError" "limitMaxXYForwardVelocity"))))
    
(set jm_limitMaxXYReverseVelocity (fn jm_limitMaxXYReverseVelocity [this]
    (error (JR/newException "AbstractMethodError" "limitMaxXYReverseVelocity"))))
    
(set jm_limitXYToForwardAndReverseMaxVelocity (fn jm_limitXYToForwardAndReverseMaxVelocity [this]
    (error (JR/newException "AbstractMethodError" "limitXYToForwardAndReverseMaxVelocity"))))
    
(set jm_limitMaxXYVelocity (fn jm_limitMaxXYVelocity [this _maxVelocity]
    (error (JR/newException "AbstractMethodError" "limitMaxXYVelocity"))))
    
(set jm_setMaxForwardVelocity (fn jm_setMaxForwardVelocity [this _maxForwardVelocity]
    (error (JR/newException "AbstractMethodError" "setMaxForwardVelocity"))))
    
(set jm_setMaxReverseVelocity (fn jm_setMaxReverseVelocity [this _maxReverseVelocity]
    (error (JR/newException "AbstractMethodError" "setMaxReverseVelocity"))))

(set jproto @{:jm_getMaxForwardVelocity jm_getMaxForwardVelocity :jm_getMaxReverseVelocity jm_getMaxReverseVelocity :jm_limitMaxXYForwardVelocity jm_limitMaxXYForwardVelocity :jm_limitMaxXYReverseVelocity jm_limitMaxXYReverseVelocity :jm_limitXYToForwardAndReverseMaxVelocity jm_limitXYToForwardAndReverseMaxVelocity :jm_limitMaxXYVelocity jm_limitMaxXYVelocity :jm_setMaxForwardVelocity jm_setMaxForwardVelocity :jm_setMaxReverseVelocity jm_setMaxReverseVelocity})


