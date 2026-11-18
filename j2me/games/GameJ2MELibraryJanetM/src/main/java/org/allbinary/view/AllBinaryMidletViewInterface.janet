# Generated Code Do Not Modify
# package org.allbinary.view

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/midlet/MidletCompositeInterface :as MidletCompositeInterface)

# Java class AllBinaryMidletViewInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onResume nil)
(var jm_onPause nil)
(var jm_onDestroy nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryMidletViewInterface"} jproto))
    this))

    
(set jm_onResume (fn jm_onResume [this]
    (error (JR/newException "AbstractMethodError" "onResume"))))
    
(set jm_onPause (fn jm_onPause [this]
    (error (JR/newException "AbstractMethodError" "onPause"))))
    
(set jm_onDestroy (fn jm_onDestroy [this]
    (error (JR/newException "AbstractMethodError" "onDestroy"))))

(set jproto @{:jm_onResume jm_onResume :jm_onPause jm_onPause :jm_onDestroy jm_onDestroy})


