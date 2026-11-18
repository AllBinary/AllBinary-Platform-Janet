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
# package org.allbinary.graphics.form.item.validation

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(import ../../../../../../org/allbinary/logic/util/visitor/Visitor :as Visitor)

# Java class AllCommandsVisitor
(var jproto nil)
(var jnew_0 nil)
(var jm_visit nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllCommandsVisitor"} jproto))
    (JR/superInit this (Visitor/jnew_0))
    this))
    
(set jm_visit (fn jm_visit [this _anyType]
    (label jreturn
        (return jreturn ((BooleanFactory/jm_getInstance) :f_TRUE)))))

(set jproto (table/setproto @{:jm_visit jm_visit} Visitor/jproto))


