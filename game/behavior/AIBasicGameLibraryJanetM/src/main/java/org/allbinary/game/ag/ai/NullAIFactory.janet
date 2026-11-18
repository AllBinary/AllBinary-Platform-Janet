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
# package org.allbinary.game.ag.ai

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAI/jnew_0 [& args] (JR/call jfile "./NullAI" "jnew_0" args))

# Java class NullAIFactory
(var jproto nil)
(var jcell_NULL_AI :jnone)
(var jstatic_NULL_AI nil)
(var jsetstatic_NULL_AI nil)
(var jnew_0 nil)
(var jm_getInstance_3 nil)
(var jm_getInstance_0 nil)

(set jstatic_NULL_AI (fn jstatic_NULL_AI []
  (when (= jcell_NULL_AI :jnone) (set jcell_NULL_AI (NullAI/jnew_0)))
  jcell_NULL_AI))
(set jsetstatic_NULL_AI (fn jsetstatic_NULL_AI [value] (set jcell_NULL_AI value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullAIFactory"} jproto))
    this))

    
(set jm_getInstance_3 (fn jm_getInstance_3 [this _hashtable _ownerLayerInterface _gameInput]
    (label jreturn
        (return jreturn (jstatic_NULL_AI)))))
    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_NULL_AI)))))

(set jproto @{:jm_getInstance_3 jm_getInstance_3})


