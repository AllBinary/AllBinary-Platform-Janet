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
(import ../../../../java/lang/Integer :as Integer)
(defn- ResourceLoadingLevel/jnew_2 [& args] (JR/call jfile "./ResourceLoadingLevel" "jnew_2" args))

# Java class ResourceLoadingLevelFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getLevelString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ResourceLoadingLevelFactory" :f_LOAD_EARLY nil :f_LOAD_TOUCH nil :f_LOAD_GAME nil :f_LEVEL nil :f_MAX_LEVEL nil :f_LOAD_ALL nil :f_RESOURCE_LOADING_LEVEL_ARRAY nil} jproto))
    (put this :f_LOAD_EARLY (ResourceLoadingLevel/jnew_2 "Load Early" (Integer/jstatic_MAX_VALUE)))
    (put this :f_LOAD_TOUCH (ResourceLoadingLevel/jnew_2 "Load Touch" (JR/i32 (- (Integer/jstatic_MAX_VALUE) 1))))
    (put this :f_LOAD_GAME (ResourceLoadingLevel/jnew_2 "Load Game" (JR/i32 (- (Integer/jstatic_MAX_VALUE) 2))))
    (put this :f_LEVEL (ResourceLoadingLevel/jnew_2 "Level" (JR/i32 (- (Integer/jstatic_MAX_VALUE) 99))))
    (put this :f_MAX_LEVEL (ResourceLoadingLevel/jnew_2 "Max Level" (JR/i32 (- (Integer/jstatic_MAX_VALUE) 100))))
    (put this :f_LOAD_ALL (ResourceLoadingLevel/jnew_2 "Load All" (JR/i32 (- 1))))
    (put this :f_RESOURCE_LOADING_LEVEL_ARRAY @[(this :f_LOAD_ALL) (this :f_MAX_LEVEL) (this :f_LEVEL) (this :f_LOAD_GAME) (this :f_LOAD_TOUCH) (this :f_LOAD_EARLY)])
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getLevelString (fn jm_getLevelString [this _level]
    (label jreturn
        (do
            (var _index 0)
            (while (< _index (length (this :f_RESOURCE_LOADING_LEVEL_ARRAY)))
                (do
            (if (= _level (JR/className ((this :f_RESOURCE_LOADING_LEVEL_ARRAY) _index)))
                (do
                (return jreturn (JR/className ((this :f_RESOURCE_LOADING_LEVEL_ARRAY) _index))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (JR/str _level)))))

(set jproto @{:jm_getLevelString jm_getLevelString})


