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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./Input :as Input)

# Java class GameKey
(var jproto nil)
(var jcell_NULL_GAME_KEY :jnone)
(var jstatic_NULL_GAME_KEY nil)
(var jsetstatic_NULL_GAME_KEY nil)
(var jnew_2 nil)
(var jm_toString nil)

(set jstatic_NULL_GAME_KEY (fn jstatic_NULL_GAME_KEY []
  (when (= jcell_NULL_GAME_KEY :jnone) (set jcell_NULL_GAME_KEY (jnew_2 (JR/i32 (- 1)) ((StringUtil/jm_getInstance) :f_NULL_STRING))))
  jcell_NULL_GAME_KEY))
(set jsetstatic_NULL_GAME_KEY (fn jsetstatic_NULL_GAME_KEY [value] (set jcell_NULL_GAME_KEY value)))

    
(set jnew_2 (fn jnew_2 [_key _name]
    (var this (table/setproto @{:jclass "GameKey"} jproto))
        (JR/superInit this (Input/jnew_2 _key _name))
    this))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "GameKey ") ((get Input/jproto :jm_toString) this)))))))

(set jproto (table/setproto @{:jm_toString jm_toString} Input/jproto))


