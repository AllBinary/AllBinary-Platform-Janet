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
(defn- BasicUserRole/jnew_4 [& args] (JR/call jfile "./BasicUserRole" "jnew_4" args))
(defn- BasicUserRole/jnew_5 [& args] (JR/call jfile "./BasicUserRole" "jnew_5" args))

# Java class BasicUserRoleFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicUserRoleFactory" :f_INACTIVITYTIMEOUT 0 :f_CUSTOMERTIMEOUT 0 :f_CUSTOMERMAXSESSIONTIME 0 :f_MAXSESSIONTIME 0 :f_INSTALLER nil :f_ADMINISTRATOR nil :f_CUSTOMER nil :f_SUBSCRIBERCUSTOMER nil :f_WHOLESALECUSTOMER nil :f_STOREMANAGER nil :f_PRODUCTMANAGER nil :f_CUSTOMERMANAGER nil :f_PAYMENTMANAGER nil :f_ORDERMANAGER nil :f_WEBMANAGER nil :f_REVIEWER nil :f_SHIPPING nil :f_ADJUSTER nil :f_WORKFLOWEDITOR nil :f_WIZARD nil :f_VIEWEDITOR nil} jproto))
    (put this :f_INACTIVITYTIMEOUT 360000000)
    (put this :f_CUSTOMERTIMEOUT 360000000)
    (put this :f_CUSTOMERMAXSESSIONTIME 360000000)
    (put this :f_MAXSESSIONTIME 360000000)
    (put this :f_INSTALLER (BasicUserRole/jnew_4 "Installer" 16 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_ADMINISTRATOR (BasicUserRole/jnew_4 "Administrator" 0 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_CUSTOMER (BasicUserRole/jnew_5 "CustomerUser" "Customer User" 1 (this :f_CUSTOMERTIMEOUT) (this :f_CUSTOMERMAXSESSIONTIME)))
    (put this :f_SUBSCRIBERCUSTOMER (BasicUserRole/jnew_5 "SubscriberUser" "Subscriber User" 2 (this :f_CUSTOMERTIMEOUT) (this :f_CUSTOMERMAXSESSIONTIME)))
    (put this :f_WHOLESALECUSTOMER (BasicUserRole/jnew_5 "WholesaleUser" "Wholesale User" 3 (this :f_CUSTOMERTIMEOUT) (this :f_CUSTOMERMAXSESSIONTIME)))
    (put this :f_STOREMANAGER (BasicUserRole/jnew_5 "StoreManager" "Store Manager" 4 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_PRODUCTMANAGER (BasicUserRole/jnew_5 "ProductManager" "Product Manager" 5 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_CUSTOMERMANAGER (BasicUserRole/jnew_5 "UserManager" "User Manager" 6 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_PAYMENTMANAGER (BasicUserRole/jnew_5 "PaymentManager" "Payment Manager" 7 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_ORDERMANAGER (BasicUserRole/jnew_5 "OrderManager" "Order Manager" 8 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_WEBMANAGER (BasicUserRole/jnew_5 "WebManager" "Web Manager" 9 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_REVIEWER (BasicUserRole/jnew_4 "Reviewer" 10 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_SHIPPING (BasicUserRole/jnew_4 "Shipping" 11 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_ADJUSTER (BasicUserRole/jnew_4 "Adjuster" 12 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_WORKFLOWEDITOR (BasicUserRole/jnew_5 "WorkFlowEditor" "WorkFlow Editor" 13 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_WIZARD (BasicUserRole/jnew_5 "WizardUser" "Wizard User" 14 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    (put this :f_VIEWEDITOR (BasicUserRole/jnew_5 "ViewEditor" "View Editor" 15 (this :f_MAXSESSIONTIME) (this :f_INACTIVITYTIMEOUT)))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


