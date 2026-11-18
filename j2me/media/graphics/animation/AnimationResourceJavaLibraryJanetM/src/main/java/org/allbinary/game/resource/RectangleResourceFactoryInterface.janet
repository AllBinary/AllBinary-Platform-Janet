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
# package org.allbinary.game.resource

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class RectangleResourceFactoryInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getRectangle nil)
(var jm_getRectangleArrayOfArrays nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RectangleResourceFactoryInterface"} jproto))
    this))

    
(set jm_getRectangle (fn jm_getRectangle [this _resource]
    (error (JR/newException "AbstractMethodError" "getRectangle"))))
    
(set jm_getRectangleArrayOfArrays (fn jm_getRectangleArrayOfArrays [this _resource]
    (error (JR/newException "AbstractMethodError" "getRectangleArrayOfArrays"))))

(set jproto @{:jm_getRectangle jm_getRectangle :jm_getRectangleArrayOfArrays jm_getRectangleArrayOfArrays})


