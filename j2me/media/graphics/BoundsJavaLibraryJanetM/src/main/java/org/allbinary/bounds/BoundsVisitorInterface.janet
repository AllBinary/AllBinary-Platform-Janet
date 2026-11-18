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
# package org.allbinary.bounds

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BoundsVisitorInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getX nil)
(var jm_getY nil)
(var jm_maxX nil)
(var jm_maxY nil)
(var jm_minX nil)
(var jm_minY nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BoundsVisitorInterface"} jproto))
    this))

    
(set jm_getX (fn jm_getX [this]
    (error (JR/newException "AbstractMethodError" "getX"))))
    
(set jm_getY (fn jm_getY [this]
    (error (JR/newException "AbstractMethodError" "getY"))))
    
(set jm_maxX (fn jm_maxX [this]
    (error (JR/newException "AbstractMethodError" "maxX"))))
    
(set jm_maxY (fn jm_maxY [this]
    (error (JR/newException "AbstractMethodError" "maxY"))))
    
(set jm_minX (fn jm_minX [this]
    (error (JR/newException "AbstractMethodError" "minX"))))
    
(set jm_minY (fn jm_minY [this]
    (error (JR/newException "AbstractMethodError" "minY"))))

(set jproto @{:jm_getX jm_getX :jm_getY jm_getY :jm_maxX jm_maxX :jm_maxY jm_maxY :jm_minX jm_minX :jm_minY jm_minY})


