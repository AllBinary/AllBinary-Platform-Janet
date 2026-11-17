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
(import ../../../../../java/io/Serializable :as Serializable)
(defn- BasicUserRoles/jm_getInstance [& args] (JR/call jfile "./BasicUserRoles" "jm_getInstance" args))

# Java class BasicUserRole
(var jproto nil)
(var jnew_4 nil)
(var jnew_5 nil)
(var jm_getRoleId nil)
(var jm_getRole nil)
(var jm_getSessionTimeout nil)
(var jm_getSessionInactivityTimeout nil)
(var jm_equals nil)
(var jm_toString nil)

    
(set jnew_4 (fn jnew_4 [_aRole _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout]
    (var this (table/setproto @{:jclass "BasicUserRole" :f_m_int_RoleId 0 :f_role nil :f_displayValue nil :f_sessionTimeout 0 :f_sessionInactivityTimeout 0} jproto))
    
    
    
    
    
        (set this (jnew_5 _aRole _aRole _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout))
    this))
    
(set jnew_5 (fn jnew_5 [_aRole _aDisplayValue _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout]
    (var this (table/setproto @{:jclass "BasicUserRole" :f_m_int_RoleId 0 :f_role nil :f_displayValue nil :f_sessionTimeout 0 :f_sessionInactivityTimeout 0} jproto))
    
    
    
    
    
        (set (this :f_m_int_RoleId) _a_int_RoleId)
        (set (this :f_role) _aRole)
        (set (this :f_displayValue) _aDisplayValue)
        (set (this :f_sessionTimeout) _aSessionTimeout)
        (set (this :f_sessionInactivityTimeout) _aSessionInactivityTimeout)
        (JR/className ((BasicUserRoles/jm_getInstance) :f_roleVector))
    this))
    
(set jm_getRoleId (fn jm_getRoleId [this]
    (label jreturn
        (return jreturn (this :f_m_int_RoleId)))))
    
(set jm_getRole (fn jm_getRole [this]
    (label jreturn
        (return jreturn (this :f_role)))))
    
(set jm_getSessionTimeout (fn jm_getSessionTimeout [this]
    (label jreturn
        (return jreturn (this :f_sessionTimeout)))))
    
(set jm_getSessionInactivityTimeout (fn jm_getSessionInactivityTimeout [this]
    (label jreturn
        (return jreturn (this :f_sessionInactivityTimeout)))))
    
(set jm_equals (fn jm_equals [this _basicUserRole]
    (label jreturn
        (if (= (:jm_getRoleId this) (:jm_getRoleId _basicUserRole))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_getRole this)))))

(set jproto @{:jm_getRoleId jm_getRoleId :jm_getRole jm_getRole :jm_getSessionTimeout jm_getSessionTimeout :jm_getSessionInactivityTimeout jm_getSessionInactivityTimeout :jm_equals jm_equals :jm_toString jm_toString})


