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
(import ../../../org/allbinary/graphics/IdentifierInterface :as IdentifierInterface)

# Java class ArtificialIntelligenceInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_processAI nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ArtificialIntelligenceInterface"} jproto))
    this))

    
(set jm_processAI (fn jm_processAI [this _layerManager]
    (error (JR/newException "AbstractMethodError" "processAI"))))

(set jproto @{:jm_processAI jm_processAI})


