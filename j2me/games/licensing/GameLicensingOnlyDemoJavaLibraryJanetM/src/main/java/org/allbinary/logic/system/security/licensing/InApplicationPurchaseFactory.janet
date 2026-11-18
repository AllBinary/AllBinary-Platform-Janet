# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class InApplicationPurchaseFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_onCreate nil)
(var jm_onStart nil)
(var jm_onResult nil)
(var jm_onSaveState nil)
(var jm_onStop nil)
(var jm_onDestroy nil)
(var jm_purchase nil)
(var jm_isPurchased nil)
(var jm_add nil)
(var jm_getUserName nil)
(var jm_isEnabled nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InApplicationPurchaseFactory"} jproto))
    this))
    
(set jm_init (fn jm_init [this _anyType _stateObject]
    nil))
    
(set jm_onCreate (fn jm_onCreate [this _anyType _stateObject]
    nil))
    
(set jm_onStart (fn jm_onStart [this]
    nil))
    
(set jm_onResult (fn jm_onResult [this _requestCode _resultCode _data]
    nil))
    
(set jm_onSaveState (fn jm_onSaveState [this _anyType]
    nil))
    
(set jm_onStop (fn jm_onStop [this]
    nil))
    
(set jm_onDestroy (fn jm_onDestroy [this]
    nil))
    
(set jm_purchase (fn jm_purchase [this _lockableFeature]
    nil))
    
(set jm_isPurchased (fn jm_isPurchased [this _lockableFeature]
    (label jreturn
        (return jreturn false))))
    
(set jm_add (fn jm_add [this _lockableFeature]
    nil))
    
(set jm_getUserName (fn jm_getUserName [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_isEnabled (fn jm_isEnabled [this]
    (label jreturn
        (return jreturn false))))

(set jproto @{:jm_init jm_init :jm_onCreate jm_onCreate :jm_onStart jm_onStart :jm_onResult jm_onResult :jm_onSaveState jm_onSaveState :jm_onStop jm_onStop :jm_onDestroy jm_onDestroy :jm_purchase jm_purchase :jm_isPurchased jm_isPurchased :jm_add jm_add :jm_getUserName jm_getUserName :jm_isEnabled jm_isEnabled})


