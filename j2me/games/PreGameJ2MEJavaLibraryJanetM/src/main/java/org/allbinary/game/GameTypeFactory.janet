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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- GameType/jnew_1 [& args] (JR/call jfile "./GameType" "jnew_1" args))

# Java class GameTypeFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameTypeFactory" :f_NULL_GAME_TYPE_ARRAY nil :f_NONE nil :f_SINGLE_PLAYER nil :f_MULTI_PLAYER nil :f_BOT nil} jproto))
    (put this :f_NULL_GAME_TYPE_ARRAY (array/new-filled 0 nil))
    (put this :f_NONE (GameType/jnew_1 ((StringUtil/jm_getInstance) :f_NULL_STRING)))
    (put this :f_SINGLE_PLAYER (GameType/jnew_1 "Single Player"))
    (put this :f_MULTI_PLAYER (GameType/jnew_1 "Multi Player"))
    (put this :f_BOT (GameType/jnew_1 "Artificial Player"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


