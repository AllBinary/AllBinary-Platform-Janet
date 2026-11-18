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
# package org.allbinary.graphics.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LocationPaintableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_paintXY nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LocationPaintableInterface"} jproto))
    this))

    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    (error (JR/newException "AbstractMethodError" "paintXY"))))

(set jproto @{:jm_paintXY jm_paintXY})


