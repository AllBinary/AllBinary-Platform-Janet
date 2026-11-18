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
(import ../../../../org/allbinary/init/Init :as Init)

# Java class ResourceInitialization
(var jproto nil)
(var jnew_0 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ResourceInitialization"} jproto))
    (JR/superInit this (Init/jnew_0))
    this))


(set jproto (table/setproto @{} Init/jproto))


