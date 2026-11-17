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
# package org.allbinary.logic.java.character

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

#import java.nio.charset.Charset;
# Java class CharacterSet
(var jproto nil)
(var jnew_0 nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CharacterSet"} jproto))
    this))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn "Default Character Set: Empty Implementation"))))

(set jproto @{:jm_toString jm_toString})


