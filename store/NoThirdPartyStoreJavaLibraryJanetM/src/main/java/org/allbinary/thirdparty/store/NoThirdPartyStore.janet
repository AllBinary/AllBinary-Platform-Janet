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
# package org.allbinary.thirdparty.store

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./ThirdPartyStore :as ThirdPartyStore)

# Java class NoThirdPartyStore
(var jproto nil)
(var jnew_0 nil)
(var jm_authorize nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoThirdPartyStore"} jproto))
        (JR/superInit this (ThirdPartyStore/jnew_1 ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    this))
    
(set jm_authorize (fn jm_authorize [this _clientInformationInterface]
        (:jm_setAuthorized this true)))

(set jproto (table/setproto @{:jm_authorize jm_authorize} ThirdPartyStore/jproto))


