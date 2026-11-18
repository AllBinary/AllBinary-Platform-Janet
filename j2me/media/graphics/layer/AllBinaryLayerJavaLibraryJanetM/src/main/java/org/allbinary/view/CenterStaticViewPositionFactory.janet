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
# package org.allbinary.view

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- StaticViewPosition/jnew_3 [& args] (JR/call jfile "./StaticViewPosition" "jnew_3" args))

# Java class CenterStaticViewPositionFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CenterStaticViewPositionFactory"} jproto))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _z]
    (label jreturn
        (var _displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
        (return jreturn (StaticViewPosition/jnew_3 (brshift (:jm_getLastWidth _displayInfoSingleton) 1) (brshift (:jm_getLastHeight _displayInfoSingleton) 1) _z)))))

(set jproto @{:jm_getInstance jm_getInstance})


