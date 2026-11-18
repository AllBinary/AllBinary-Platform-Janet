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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./AbeClientInformation :as AbeClientInformation)

# Java class StoreAppClientInformation
(var jproto nil)
(var jnew_5 nil)
(var jm_getLongArrayIdentifier nil)

    
(set jnew_5 (fn jnew_5 [_name _version _specialName _shortName _longArrayIdentifier]
    (var this (table/setproto @{:jclass "StoreAppClientInformation" :f_longArrayIdentifier nil} jproto))
    
        (JR/superInit this (AbeClientInformation/jnew_4 _name _version _specialName _shortName))
        (set (this :f_longArrayIdentifier) _longArrayIdentifier)
    this))
    
(set jm_getLongArrayIdentifier (fn jm_getLongArrayIdentifier [this]
    (label jreturn
        (return jreturn (this :f_longArrayIdentifier)))))

(set jproto (table/setproto @{:jm_getLongArrayIdentifier jm_getLongArrayIdentifier} AbeClientInformation/jproto))


