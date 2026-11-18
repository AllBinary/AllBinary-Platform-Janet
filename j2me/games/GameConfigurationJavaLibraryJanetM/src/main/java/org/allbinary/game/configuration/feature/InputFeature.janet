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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./Feature :as Feature)

# Java class InputFeature
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "InputFeature"} jproto))
        (JR/superInit this (Feature/jnew_1 _name))
    this))

(set jproto (table/setproto @{} Feature/jproto))


