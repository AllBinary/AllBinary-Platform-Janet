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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LayerInterfaceVisitor
(var jproto nil)
(var jnew_0 nil)
(var jm_visit nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerInterfaceVisitor"} jproto))
    this))

    
(set jm_visit (fn jm_visit [this _layerInterface]
    (error (JR/newException "AbstractMethodError" "visit"))))

(set jproto @{:jm_visit jm_visit})


