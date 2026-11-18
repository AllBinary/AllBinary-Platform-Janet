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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./PCGameInputMapping :as PCGameInputMapping)
(defn- LaptopDefaultGameInputMapping/jnew_0 [& args] (JR/call jfile "./LaptopDefaultGameInputMapping" "jnew_0" args))

# Java class LaptopGameInputMapping
(var jproto nil)
(var jnew_0 nil)
(var jm_getDefault nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LaptopGameInputMapping"} jproto))
    (JR/superInit this (PCGameInputMapping/jnew_0))
    this))

    
(set jm_getDefault (fn jm_getDefault [this]
    (label jreturn
        (return jreturn (:jm_getInputMapping (LaptopDefaultGameInputMapping/jnew_0))))))

(set jproto (table/setproto @{:jm_getDefault jm_getDefault} PCGameInputMapping/jproto))


