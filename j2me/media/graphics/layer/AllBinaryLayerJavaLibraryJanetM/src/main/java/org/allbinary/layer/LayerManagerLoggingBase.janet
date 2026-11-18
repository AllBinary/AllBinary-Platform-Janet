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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LayerManagerLoggingBase
(var jproto nil)
(var jnew_0 nil)
(var jm_append nil)
(var jm_appendAt nil)
(var jm_remove nil)
(var jm_removeResult nil)
(var jm_clear nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerManagerLoggingBase"} jproto))
    this))

    
(set jm_append (fn jm_append [this _layerInterface]
    nil))
    
(set jm_appendAt (fn jm_appendAt [this _layerInterface _index]
    nil))
    
(set jm_remove (fn jm_remove [this _layerInterface]
    nil))
    
(set jm_removeResult (fn jm_removeResult [this _layerManager _layerInterface _result]
    nil))
    
(set jm_clear (fn jm_clear [this]
    nil))

(set jproto @{:jm_append jm_append :jm_appendAt jm_appendAt :jm_remove jm_remove :jm_removeResult jm_removeResult :jm_clear jm_clear})


