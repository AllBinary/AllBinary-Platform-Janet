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
# package org.allbinary.image

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ImageCacheFactory/jm_init [& args] (JR/call jfile "./ImageCacheFactory" "jm_init" args))
(defn- ImageCacheFactory/jm_getInstance [& args] (JR/call jfile "./ImageCacheFactory" "jm_getInstance" args))

# Java class GameFeatureImageCacheFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_releaseAll nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameFeatureImageCacheFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (ImageCacheFactory/jm_getInstance)))))
    
(set jm_init (fn jm_init []
        (ImageCacheFactory/jm_init)))
    
(set jm_releaseAll (fn jm_releaseAll []
        (:jm_releaseAll (ImageCacheFactory/jm_getInstance))))

(set jproto @{})


