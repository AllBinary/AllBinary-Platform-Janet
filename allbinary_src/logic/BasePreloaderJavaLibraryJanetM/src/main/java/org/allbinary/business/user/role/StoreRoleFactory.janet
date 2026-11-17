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
# package org.allbinary.business.user.role

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicUserRoleFactory/jm_getInstance [& args] (JR/call jfile "./BasicUserRoleFactory" "jm_getInstance" args))

# Java class StoreRoleFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getRoles nil)
(var jm_getSubscriberRoles nil)
(var jm_getWholesaleRoles nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StoreRoleFactory" :f_roles nil :f_subscriberRoles nil :f_wholesaleRoles nil} jproto))
    (put this :f_roles (BasicArrayListD/jnew_0))
    (put this :f_subscriberRoles (BasicArrayListD/jnew_0))
    (put this :f_wholesaleRoles (BasicArrayListD/jnew_0))
        (var _basicUserRoleFactory (BasicUserRoleFactory/jm_getInstance))
        (:jm_add (this :f_roles) (_basicUserRoleFactory :f_CUSTOMER))
        (:jm_add (this :f_roles) (_basicUserRoleFactory :f_SUBSCRIBERCUSTOMER))
        (:jm_add (this :f_roles) (_basicUserRoleFactory :f_WHOLESALECUSTOMER))
        (:jm_add (this :f_subscriberRoles) (_basicUserRoleFactory :f_SUBSCRIBERCUSTOMER))
        (:jm_add (this :f_wholesaleRoles) (_basicUserRoleFactory :f_WHOLESALECUSTOMER))
    this))
    
(set jm_getRoles (fn jm_getRoles [this]
    (label jreturn
        (return jreturn (this :f_roles)))))
    
(set jm_getSubscriberRoles (fn jm_getSubscriberRoles [this]
    (label jreturn
        (return jreturn (this :f_subscriberRoles)))))
    
(set jm_getWholesaleRoles (fn jm_getWholesaleRoles [this]
    (label jreturn
        (return jreturn (this :f_wholesaleRoles)))))

(set jproto @{:jm_getRoles jm_getRoles :jm_getSubscriberRoles jm_getSubscriberRoles :jm_getWholesaleRoles jm_getWholesaleRoles})


