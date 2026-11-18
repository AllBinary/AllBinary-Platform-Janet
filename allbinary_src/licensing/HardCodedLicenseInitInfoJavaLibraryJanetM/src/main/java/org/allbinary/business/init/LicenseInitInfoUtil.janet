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
# package org.allbinary.business.init

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LicenseInitInfo/jnew_0 [& args] (JR/call jfile "./LicenseInitInfo" "jnew_0" args))

# Java class LicenseInitInfoUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setFilePath nil)
(var jm_write nil)
(var jm_read nil)
(var jm_readAgain nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setFilePath (fn jm_setFilePath [this _filePath]
    nil))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LicenseInitInfoUtil" :f_INITFILENAME nil :f_ABOUT nil :f_PRIVACY_POLICY nil :f_OFFICIAL_ALLBINARY_SERVICES_SERVER nil} jproto))
    (put this :f_INITFILENAME "licenseinitdata.dat")
    (put this :f_ABOUT "about")
    (put this :f_PRIVACY_POLICY "privacy_policy")
    (put this :f_OFFICIAL_ALLBINARY_SERVICES_SERVER "https://services.allbinary.com/LicServ/serverssl.php")
    this))
    
(set jm_write (fn jm_write [this _initData]
    nil))
    
(set jm_read (fn jm_read [this]
    (label jreturn
        (return jreturn (:jm_readAgain this 0)))))
    
(set jm_readAgain (fn jm_readAgain [this _initializeCounter]
    (label jreturn
        (var _licenseInitInfo (LicenseInitInfo/jnew_0))
        (:jm_clearServers _licenseInitInfo)
        (:jm_addServer _licenseInitInfo (this :f_OFFICIAL_ALLBINARY_SERVICES_SERVER))
        (return jreturn _licenseInitInfo))))

(set jproto @{:jm_setFilePath jm_setFilePath :jm_write jm_write :jm_read jm_read :jm_readAgain jm_readAgain})


