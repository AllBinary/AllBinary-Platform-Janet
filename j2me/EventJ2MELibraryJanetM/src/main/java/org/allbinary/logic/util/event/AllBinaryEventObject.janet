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
# package org.allbinary.logic.util.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class AllBinaryEventObject
(var jproto nil)
(var jcell_NULL_EVENT :jnone)
(var jstatic_NULL_EVENT nil)
(var jnew_1 nil)
(var jm_getSource nil)
(var jm_setSource nil)

(set jstatic_NULL_EVENT (fn jstatic_NULL_EVENT []
  (when (= jcell_NULL_EVENT :jnone) (set jcell_NULL_EVENT (jnew_1 ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))
  jcell_NULL_EVENT))

    
(set jnew_1 (fn jnew_1 [_anyType]
    (var this (table/setproto @{:jclass "AllBinaryEventObject" :f_source nil} jproto))
    
        (set (this :f_source) _anyType)
    this))
    
(set jm_getSource (fn jm_getSource [this]
    (label jreturn
        (return jreturn (this :f_source)))))
    
(set jm_setSource (fn jm_setSource [this _source]
        (set (this :f_source) _source)))

(set jproto @{:jm_getSource jm_getSource :jm_setSource jm_setSource})


