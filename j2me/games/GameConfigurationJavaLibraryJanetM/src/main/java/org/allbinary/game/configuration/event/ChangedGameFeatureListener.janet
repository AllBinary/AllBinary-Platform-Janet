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
# package org.allbinary.game.configuration.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./BaseChangedGameFeatureListener :as BaseChangedGameFeatureListener)

# Java class ChangedGameFeatureListener
(var jproto nil)
(var jcell_gameFeatureListener :jnone)
(var jstatic_gameFeatureListener nil)
(var jsetstatic_gameFeatureListener nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isChangedGameConfiguration nil)

(set jstatic_gameFeatureListener (fn jstatic_gameFeatureListener []
  (when (= jcell_gameFeatureListener :jnone) (set jcell_gameFeatureListener (jnew_0)))
  jcell_gameFeatureListener))
(set jsetstatic_gameFeatureListener (fn jsetstatic_gameFeatureListener [value] (set jcell_gameFeatureListener value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ChangedGameFeatureListener"} jproto))
    (JR/superInit this (BaseChangedGameFeatureListener/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_gameFeatureListener)))))
    
(set jm_isChangedGameConfiguration (fn jm_isChangedGameConfiguration [this _gameConfiguration]
    (label jreturn
        (return jreturn (JR/className (this :f_list))))))

(set jproto (table/setproto @{:jm_isChangedGameConfiguration jm_isChangedGameConfiguration} BaseChangedGameFeatureListener/jproto))


