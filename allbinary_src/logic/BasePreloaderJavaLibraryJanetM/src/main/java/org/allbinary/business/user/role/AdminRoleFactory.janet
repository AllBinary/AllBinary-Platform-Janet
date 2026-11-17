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

# Java class AdminRoleFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getProductManagementRoles nil)
(var jm_getAdminRoles nil)
(var jm_getStoreAdminRoles nil)
(var jm_getStoreManagementRoles nil)
(var jm_getReviewManagementRoles nil)
(var jm_getCustomerManagementRoles nil)
(var jm_getWorkflowManagementRoles nil)
(var jm_getWebManagementRoles nil)
(var jm_getShippingManagementRoles nil)
(var jm_getAdjusterManagementRoles nil)
(var jm_getOrderManagementRoles nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AdminRoleFactory" :f_adminRoles nil :f_storeAdminRoles nil :f_storeManagementRoles nil :f_productManagementRoles nil :f_reviewManagementRoles nil :f_customerManagementRoles nil :f_workflowManagementRoles nil :f_orderManagementRoles nil :f_adjusterManagementRoles nil :f_shippingManagementRoles nil :f_webManagementRoles nil} jproto))
    (put this :f_adminRoles (BasicArrayListD/jnew_0))
    (put this :f_storeAdminRoles (BasicArrayListD/jnew_0))
    (put this :f_storeManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_productManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_reviewManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_customerManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_workflowManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_orderManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_adjusterManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_shippingManagementRoles (BasicArrayListD/jnew_0))
    (put this :f_webManagementRoles (BasicArrayListD/jnew_0))
        (var _basicUserRoleFactory (BasicUserRoleFactory/jm_getInstance))
        (:jm_add (this :f_adminRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_storeAdminRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_storeAdminRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_storeManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_storeManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_storeManagementRoles) (_basicUserRoleFactory :f_CUSTOMERMANAGER))
        (:jm_add (this :f_storeManagementRoles) (_basicUserRoleFactory :f_ADJUSTER))
        (:jm_add (this :f_storeManagementRoles) (_basicUserRoleFactory :f_PRODUCTMANAGER))
        (:jm_add (this :f_storeManagementRoles) (_basicUserRoleFactory :f_REVIEWER))
        (:jm_add (this :f_storeManagementRoles) (_basicUserRoleFactory :f_SHIPPING))
        (:jm_add (this :f_productManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_productManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_productManagementRoles) (_basicUserRoleFactory :f_PRODUCTMANAGER))
        (:jm_add (this :f_reviewManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_reviewManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_reviewManagementRoles) (_basicUserRoleFactory :f_REVIEWER))
        (:jm_add (this :f_customerManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_customerManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_customerManagementRoles) (_basicUserRoleFactory :f_CUSTOMERMANAGER))
        (:jm_add (this :f_workflowManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_workflowManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_workflowManagementRoles) (_basicUserRoleFactory :f_WORKFLOWEDITOR))
        (:jm_add (this :f_orderManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_orderManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_adjusterManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_adjusterManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_adjusterManagementRoles) (_basicUserRoleFactory :f_ADJUSTER))
        (:jm_add (this :f_shippingManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_shippingManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_shippingManagementRoles) (_basicUserRoleFactory :f_SHIPPING))
        (:jm_add (this :f_webManagementRoles) (_basicUserRoleFactory :f_ADMINISTRATOR))
        (:jm_add (this :f_webManagementRoles) (_basicUserRoleFactory :f_STOREMANAGER))
        (:jm_add (this :f_webManagementRoles) (_basicUserRoleFactory :f_WEBMANAGER))
        (:jm_add (this :f_webManagementRoles) (_basicUserRoleFactory :f_WORKFLOWEDITOR))
        (:jm_add (this :f_webManagementRoles) (_basicUserRoleFactory :f_VIEWEDITOR))
    this))
    
(set jm_getProductManagementRoles (fn jm_getProductManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_productManagementRoles)))))
    
(set jm_getAdminRoles (fn jm_getAdminRoles [this]
    (label jreturn
        (return jreturn (this :f_adminRoles)))))
    
(set jm_getStoreAdminRoles (fn jm_getStoreAdminRoles [this]
    (label jreturn
        (return jreturn (this :f_storeAdminRoles)))))
    
(set jm_getStoreManagementRoles (fn jm_getStoreManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_storeManagementRoles)))))
    
(set jm_getReviewManagementRoles (fn jm_getReviewManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_reviewManagementRoles)))))
    
(set jm_getCustomerManagementRoles (fn jm_getCustomerManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_customerManagementRoles)))))
    
(set jm_getWorkflowManagementRoles (fn jm_getWorkflowManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_workflowManagementRoles)))))
    
(set jm_getWebManagementRoles (fn jm_getWebManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_webManagementRoles)))))
    
(set jm_getShippingManagementRoles (fn jm_getShippingManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_shippingManagementRoles)))))
    
(set jm_getAdjusterManagementRoles (fn jm_getAdjusterManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_adjusterManagementRoles)))))
    
(set jm_getOrderManagementRoles (fn jm_getOrderManagementRoles [this]
    (label jreturn
        (return jreturn (this :f_orderManagementRoles)))))

(set jproto @{:jm_getProductManagementRoles jm_getProductManagementRoles :jm_getAdminRoles jm_getAdminRoles :jm_getStoreAdminRoles jm_getStoreAdminRoles :jm_getStoreManagementRoles jm_getStoreManagementRoles :jm_getReviewManagementRoles jm_getReviewManagementRoles :jm_getCustomerManagementRoles jm_getCustomerManagementRoles :jm_getWorkflowManagementRoles jm_getWorkflowManagementRoles :jm_getWebManagementRoles jm_getWebManagementRoles :jm_getShippingManagementRoles jm_getShippingManagementRoles :jm_getAdjusterManagementRoles jm_getAdjusterManagementRoles :jm_getOrderManagementRoles jm_getOrderManagementRoles})


