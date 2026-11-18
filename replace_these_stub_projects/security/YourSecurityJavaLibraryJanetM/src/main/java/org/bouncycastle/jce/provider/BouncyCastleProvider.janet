# Generated Code Do Not Modify
# package org.bouncycastle.jce.provider

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/security/Provider :as Provider)

# Java class BouncyCastleProvider
(var jproto nil)
(var jcell_info :jnone)
(var jstatic_info nil)
(var jsetstatic_info nil)
(var jcell_PROVIDER_NAME :jnone)
(var jstatic_PROVIDER_NAME nil)
(var jsetstatic_PROVIDER_NAME nil)
(var jnew_0 nil)
(var jm_setParameter nil)

(set jstatic_info (fn jstatic_info []
  (when (= jcell_info :jnone) (set jcell_info "BouncyCastle Security Provider v1.41"))
  jcell_info))
(set jsetstatic_info (fn jsetstatic_info [value] (set jcell_info value)))

(set jstatic_PROVIDER_NAME (fn jstatic_PROVIDER_NAME []
  (when (= jcell_PROVIDER_NAME :jnone) (set jcell_PROVIDER_NAME "BC"))
  jcell_PROVIDER_NAME))
(set jsetstatic_PROVIDER_NAME (fn jsetstatic_PROVIDER_NAME [value] (set jcell_PROVIDER_NAME value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BouncyCastleProvider"} jproto))
        (JR/superInit this (Provider/jnew_3 (jstatic_PROVIDER_NAME) 1.41 (jstatic_info)))
    this))
    
(set jm_setParameter (fn jm_setParameter [this _parameterName _parameter]
    nil))

(set jproto (table/setproto @{:jm_setParameter jm_setParameter} Provider/jproto))


