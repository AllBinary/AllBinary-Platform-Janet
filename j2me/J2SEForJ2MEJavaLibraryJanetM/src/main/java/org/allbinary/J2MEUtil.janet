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
# package org.allbinary

(import ../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class J2MEUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_isJ2ME nil)
(var jm_isJ2SE nil)
(var jm_isHTML nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "J2MEUtil"} jproto))
    this))
    
(set jm_isJ2ME (fn jm_isJ2ME []
    (label jreturn
        (return jreturn false))))
    
(set jm_isJ2SE (fn jm_isJ2SE []
    (label jreturn
        (return jreturn true))))
    
(set jm_isHTML (fn jm_isHTML []
    (label jreturn
        (return jreturn false))))

(set jproto @{})


