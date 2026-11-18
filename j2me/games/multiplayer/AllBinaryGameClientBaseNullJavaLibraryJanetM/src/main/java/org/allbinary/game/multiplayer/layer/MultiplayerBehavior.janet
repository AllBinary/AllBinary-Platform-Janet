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
# package org.allbinary.game.multiplayer.layer

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class MultiplayerBehavior
(var jproto nil)
(var jcell_NULL_MULTIPLAYER_BEHAVIOR :jnone)
(var jstatic_NULL_MULTIPLAYER_BEHAVIOR nil)
(var jsetstatic_NULL_MULTIPLAYER_BEHAVIOR nil)
(var jnew_1 nil)
(var jm_startTick nil)
(var jm_endTick nil)
(var jm_getApproximateElapsed nil)

(set jstatic_NULL_MULTIPLAYER_BEHAVIOR (fn jstatic_NULL_MULTIPLAYER_BEHAVIOR []
  (when (= jcell_NULL_MULTIPLAYER_BEHAVIOR :jnone) (set jcell_NULL_MULTIPLAYER_BEHAVIOR (jnew_1 ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))
  jcell_NULL_MULTIPLAYER_BEHAVIOR))
(set jsetstatic_NULL_MULTIPLAYER_BEHAVIOR (fn jsetstatic_NULL_MULTIPLAYER_BEHAVIOR [value] (set jcell_NULL_MULTIPLAYER_BEHAVIOR value)))

    
(set jnew_1 (fn jnew_1 [_username]
    (var this (table/setproto @{:jclass "MultiplayerBehavior"} jproto))
    this))
    
(set jm_startTick (fn jm_startTick [this]
    nil))
    
(set jm_endTick (fn jm_endTick [this]
    nil))
    
(set jm_getApproximateElapsed (fn jm_getApproximateElapsed [this]
    (label jreturn
        (return jreturn 0))))

(set jproto @{:jm_startTick jm_startTick :jm_endTick jm_endTick :jm_getApproximateElapsed jm_getApproximateElapsed})


