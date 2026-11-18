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
# package org.allbinary.game.configuration.persistance

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./KeyValuePersistance :as KeyValuePersistance)
(defn- GamePersistanceStrings/jm_getInstance [& args] (JR/call jfile "./GamePersistanceStrings" "jm_getInstance" args))

# Java class GamePersistanceSingleton
(var jproto nil)
(var jcell_GAME_PERSISTANCE :jnone)
(var jstatic_GAME_PERSISTANCE nil)
(var jsetstatic_GAME_PERSISTANCE nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_GAME_PERSISTANCE (fn jstatic_GAME_PERSISTANCE []
  (when (= jcell_GAME_PERSISTANCE :jnone) (set jcell_GAME_PERSISTANCE (jnew_0)))
  jcell_GAME_PERSISTANCE))
(set jsetstatic_GAME_PERSISTANCE (fn jsetstatic_GAME_PERSISTANCE [value] (set jcell_GAME_PERSISTANCE value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_GAME_PERSISTANCE)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GamePersistanceSingleton"} jproto))
        (JR/superInit this (KeyValuePersistance/jnew_1 ((GamePersistanceStrings/jm_getInstance) :f_SAVED_GAME_RECORD_ID)))
    this))

(set jproto (table/setproto @{} KeyValuePersistance/jproto))


