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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class BasicLayerProcessor
(var jproto nil)
(var jcell_NULL_LAYER_PROCESSOR :jnone)
(var jstatic_NULL_LAYER_PROCESSOR nil)
(var jsetstatic_NULL_LAYER_PROCESSOR nil)
(var jnew_0 nil)
(var jm_add nil)
(var jm_process nil)
(var jm_getList nil)

(set jstatic_NULL_LAYER_PROCESSOR (fn jstatic_NULL_LAYER_PROCESSOR []
  (when (= jcell_NULL_LAYER_PROCESSOR :jnone) (set jcell_NULL_LAYER_PROCESSOR (jnew_0)))
  jcell_NULL_LAYER_PROCESSOR))
(set jsetstatic_NULL_LAYER_PROCESSOR (fn jsetstatic_NULL_LAYER_PROCESSOR [value] (set jcell_NULL_LAYER_PROCESSOR value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicLayerProcessor" :f_logUtil nil :f_list nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_list (BasicArrayListD/jnew_0))
    this))
    
(set jm_add (fn jm_add [this _layerInterface]
        (if (not (:jm_contains (this :f_list) _layerInterface))
            (do
            (:jm_add (this :f_list) _layerInterface)))))
    
(set jm_process (fn jm_process [this _allBinaryLayerManager]
        (error (JR/newException "Exception" ((CommonStrings/jm_getInstance) :f_NOT_IMPLEMENTED)))))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_list)))))

(set jproto @{:jm_add jm_add :jm_process jm_process :jm_getList jm_getList})


