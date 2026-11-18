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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./SequentialAnimationInterface :as SequentialAnimationInterface)

# Java class IndexedAnimationInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_reset nil)
(var jm_setFrame nil)
(var jm_getFrame nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IndexedAnimationInterface"} jproto))
    this))

    
(set jm_reset (fn jm_reset [this]
    (error (JR/newException "AbstractMethodError" "reset"))))
    
(set jm_setFrame (fn jm_setFrame [this _index]
    (error (JR/newException "AbstractMethodError" "setFrame"))))
    
(set jm_getFrame (fn jm_getFrame [this]
    (error (JR/newException "AbstractMethodError" "getFrame"))))

(set jproto @{:jm_reset jm_reset :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame})


