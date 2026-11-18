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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class ThirdPartyInApplicationPurchase
(var jproto nil)
(var jnew_0 nil)
(var jm_isPurchased nil)
(var jm_onCreate nil)
(var jm_onDestroy nil)
(var jm_onStart nil)
(var jm_onActivityResult nil)
(var jm_onSaveInstanceState nil)
(var jm_onStop nil)
(var jm_requestPurchase nil)
(var jm_requestReceipts nil)
(var jm_add nil)
(var jm_getUserName nil)
(var jm_isEnabled nil)
(var jm_requestProducts nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ThirdPartyInApplicationPurchase"} jproto))
    this))

    
(set jm_isPurchased (fn jm_isPurchased [this _lockableFeature]
    (label jreturn
        (return jreturn false))))
    
(set jm_onCreate (fn jm_onCreate [this _anyType _stateObject]
    nil))
    
(set jm_onDestroy (fn jm_onDestroy [this]
    nil))
    
(set jm_onStart (fn jm_onStart [this]
    nil))
    
(set jm_onActivityResult (fn jm_onActivityResult [this _requestCode _resultCode _dataObject]
    nil))
    
(set jm_onSaveInstanceState (fn jm_onSaveInstanceState [this _anyType]
    nil))
    
(set jm_onStop (fn jm_onStop [this]
    nil))
    
(set jm_requestPurchase (fn jm_requestPurchase [this _lockableFeature]
    nil))
    
(set jm_requestReceipts (fn jm_requestReceipts [this]
    nil))
    
(set jm_add (fn jm_add [this _lockableFeature]
    nil))
    
(set jm_getUserName (fn jm_getUserName [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_isEnabled (fn jm_isEnabled [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_requestProducts (fn jm_requestProducts [this]
    nil))

(set jproto @{:jm_isPurchased jm_isPurchased :jm_onCreate jm_onCreate :jm_onDestroy jm_onDestroy :jm_onStart jm_onStart :jm_onActivityResult jm_onActivityResult :jm_onSaveInstanceState jm_onSaveInstanceState :jm_onStop jm_onStop :jm_requestPurchase jm_requestPurchase :jm_requestReceipts jm_requestReceipts :jm_add jm_add :jm_getUserName jm_getUserName :jm_isEnabled jm_isEnabled :jm_requestProducts jm_requestProducts})


