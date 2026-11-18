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
# package org.allbinary.logic.control.validate

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/lang/Boolean :as Boolean)

# Java class ValidatorBaseInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_isValid nil)
(var jm_validationInfo nil)
(var jm_toHashtable nil)
(var jm_toList nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ValidatorBaseInterface"} jproto))
    this))

    
(set jm_isValid (fn jm_isValid [this]
    (error (JR/newException "AbstractMethodError" "isValid"))))
    
(set jm_validationInfo (fn jm_validationInfo [this]
    (error (JR/newException "AbstractMethodError" "validationInfo"))))
    
(set jm_toHashtable (fn jm_toHashtable [this]
    (error (JR/newException "AbstractMethodError" "toHashtable"))))
    
(set jm_toList (fn jm_toList [this]
    (error (JR/newException "AbstractMethodError" "toList"))))

(set jproto @{:jm_isValid jm_isValid :jm_validationInfo jm_validationInfo :jm_toHashtable jm_toHashtable :jm_toList jm_toList})


