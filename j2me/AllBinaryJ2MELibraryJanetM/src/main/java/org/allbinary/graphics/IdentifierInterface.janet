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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class IdentifierInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getId nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IdentifierInterface"} jproto))
    this))

    
(set jm_getId (fn jm_getId [this]
    (error (JR/newException "AbstractMethodError" "getId"))))

(set jproto @{:jm_getId jm_getId})


