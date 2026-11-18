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

# Java class PaintableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_paint nil)
(var jm_paintThreed nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PaintableInterface"} jproto))
    this))

    
(set jm_paint (fn jm_paint [this _graphics]
    (error (JR/newException "AbstractMethodError" "paint"))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    (error (JR/newException "AbstractMethodError" "paintThreed"))))

(set jproto @{:jm_paint jm_paint :jm_paintThreed jm_paintThreed})


