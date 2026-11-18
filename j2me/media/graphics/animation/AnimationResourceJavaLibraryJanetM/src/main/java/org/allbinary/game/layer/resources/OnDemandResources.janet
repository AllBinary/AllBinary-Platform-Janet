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
# package org.allbinary.game.layer.resources

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))

# Java class OnDemandResources
(var jproto nil)
(var jcell_NULL_ON_DEMAND_RESOURCES :jnone)
(var jstatic_NULL_ON_DEMAND_RESOURCES nil)
(var jsetstatic_NULL_ON_DEMAND_RESOURCES nil)
(var jnew_0 nil)
(var jm_waitFor nil)
(var jm_init nil)
(var jm_initAt nil)

(set jstatic_NULL_ON_DEMAND_RESOURCES (fn jstatic_NULL_ON_DEMAND_RESOURCES []
  (when (= jcell_NULL_ON_DEMAND_RESOURCES :jnone) (set jcell_NULL_ON_DEMAND_RESOURCES (jnew_0)))
  jcell_NULL_ON_DEMAND_RESOURCES))
(set jsetstatic_NULL_ON_DEMAND_RESOURCES (fn jsetstatic_NULL_ON_DEMAND_RESOURCES [value] (set jcell_NULL_ON_DEMAND_RESOURCES value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OnDemandResources" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))
    
(set jm_waitFor (fn jm_waitFor [this]
    nil))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_initAt (fn jm_initAt [this _imageCache _resourceAnimationInterfaceFactoryInterfaceFactory _portion _loadingString _index]
    (label jreturn
        (return jreturn 0))))

(set jproto @{:jm_waitFor jm_waitFor :jm_init jm_init :jm_initAt jm_initAt})


