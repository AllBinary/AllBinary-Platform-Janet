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
# package org.allbinary.game.midlet

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LicenseServerInitFileUtil/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil" "jnew_0" args))
(import ./DemoGameMidlet :as DemoGameMidlet)

# Java class SpecialDemoGameMidlet
(var jproto nil)
(var jnew_4 nil)
(var jm_initView nil)
(var jm_preInit nil)

    
(set jnew_4 (fn jnew_4 [_clientInformationFactory _licenseLoadingType _demoSetupFactory _licenseCheckRunnableFactory]
    (var this (table/setproto @{:jclass "SpecialDemoGameMidlet"} jproto))
        (JR/superInit this (DemoGameMidlet/jnew_1 _clientInformationFactory))
    this))
    
(set jm_initView (fn jm_initView [this]
    nil))
    
(set jm_preInit (fn jm_preInit [this]
        (:jm_init (LicenseServerInitFileUtil/jnew_0))))

(set jproto (table/setproto @{:jm_initView jm_initView :jm_preInit jm_preInit} DemoGameMidlet/jproto))


