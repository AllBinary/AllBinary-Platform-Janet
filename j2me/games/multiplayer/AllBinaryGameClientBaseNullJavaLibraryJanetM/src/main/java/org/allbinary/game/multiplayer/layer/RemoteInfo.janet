# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.game.multiplayer.layer

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class RemoteInfo
(var jproto nil)
(var jcell_NEW_PLAYER_ID :jnone)
(var jstatic_NEW_PLAYER_ID nil)
(var jsetstatic_NEW_PLAYER_ID nil)
(var jcell_REMOTE_INFO :jnone)
(var jstatic_REMOTE_INFO nil)
(var jsetstatic_REMOTE_INFO nil)
(var jnew_4 nil)

(set jstatic_NEW_PLAYER_ID (fn jstatic_NEW_PLAYER_ID []
  (when (= jcell_NEW_PLAYER_ID :jnone) (set jcell_NEW_PLAYER_ID 0))
  jcell_NEW_PLAYER_ID))
(set jsetstatic_NEW_PLAYER_ID (fn jsetstatic_NEW_PLAYER_ID [value] (set jcell_NEW_PLAYER_ID value)))

(set jstatic_REMOTE_INFO (fn jstatic_REMOTE_INFO []
  (when (= jcell_REMOTE_INFO :jnone) (set jcell_REMOTE_INFO (jnew_4 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (JR/i32 (- 1)) (JR/i32 (- 1)) (jstatic_NEW_PLAYER_ID))))
  jcell_REMOTE_INFO))
(set jsetstatic_REMOTE_INFO (fn jsetstatic_REMOTE_INFO [value] (set jcell_REMOTE_INFO value)))

    
(set jnew_4 (fn jnew_4 [_username _actorSessionId _playerInputId _id]
    (var this (table/setproto @{:jclass "RemoteInfo"} jproto))
    this))

(set jproto @{})


