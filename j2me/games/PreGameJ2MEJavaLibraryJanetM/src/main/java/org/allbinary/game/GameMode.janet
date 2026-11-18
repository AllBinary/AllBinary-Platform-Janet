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

# Java class GameMode
(var jproto nil)
(var jcell_NONE :jnone)
(var jstatic_NONE nil)
(var jsetstatic_NONE nil)
(var jcell_SERVER :jnone)
(var jstatic_SERVER nil)
(var jsetstatic_SERVER nil)
(var jcell_CLIENT :jnone)
(var jstatic_CLIENT nil)
(var jsetstatic_CLIENT nil)
(var jnew_1 nil)
(var jm_setName nil)
(var jm_getName nil)
(var jm_toString nil)

(set jstatic_NONE (fn jstatic_NONE []
  (when (= jcell_NONE :jnone) (set jcell_NONE (jnew_1 ((StringUtil/jm_getInstance) :f_NULL_STRING))))
  jcell_NONE))
(set jsetstatic_NONE (fn jsetstatic_NONE [value] (set jcell_NONE value)))

(set jstatic_SERVER (fn jstatic_SERVER []
  (when (= jcell_SERVER :jnone) (set jcell_SERVER (jnew_1 "Server")))
  jcell_SERVER))
(set jsetstatic_SERVER (fn jsetstatic_SERVER [value] (set jcell_SERVER value)))

(set jstatic_CLIENT (fn jstatic_CLIENT []
  (when (= jcell_CLIENT :jnone) (set jcell_CLIENT (jnew_1 "Client")))
  jcell_CLIENT))
(set jsetstatic_CLIENT (fn jsetstatic_CLIENT [value] (set jcell_CLIENT value)))

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "GameMode" :f_name nil} jproto))
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (:jm_setName this _name)
    this))
    
(set jm_setName (fn jm_setName [this _name]
        (set (this :f_name) _name)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_getName this)))))

(set jproto @{:jm_setName jm_setName :jm_getName jm_getName :jm_toString jm_toString})


