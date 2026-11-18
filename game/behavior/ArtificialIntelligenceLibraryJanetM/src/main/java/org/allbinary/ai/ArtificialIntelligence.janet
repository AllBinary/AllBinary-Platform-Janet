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
# package org.allbinary.ai

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ArtificialIntelligence
(var jproto nil)
(var jcell_AI_ID :jnone)
(var jstatic_AI_ID nil)
(var jsetstatic_AI_ID nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_processAI nil)
(var jm_getId nil)

(set jstatic_AI_ID (fn jstatic_AI_ID []
  (when (= jcell_AI_ID :jnone) (set jcell_AI_ID 2))
  jcell_AI_ID))
(set jsetstatic_AI_ID (fn jsetstatic_AI_ID [value] (set jcell_AI_ID value)))

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ArtificialIntelligence"} jproto))
    this))
    
(set jm_processAI (fn jm_processAI [this _layerManager]
    nil))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn 1))))

(set jproto @{:jm_processAI jm_processAI :jm_getId jm_getId})


