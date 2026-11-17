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
# package org.allbinary.logic.communication.log.config.type

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class LogConfigTypes
(var jproto nil)
(var jcell_LOGGING :jnone)
(var jstatic_LOGGING nil)
(var jnew_0 nil)

(set jstatic_LOGGING (fn jstatic_LOGGING []
  (when (= jcell_LOGGING :jnone) (set jcell_LOGGING (BasicArrayListD/jnew_0)))
  jcell_LOGGING))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LogConfigTypes"} jproto))
    this))

(set jproto @{})


