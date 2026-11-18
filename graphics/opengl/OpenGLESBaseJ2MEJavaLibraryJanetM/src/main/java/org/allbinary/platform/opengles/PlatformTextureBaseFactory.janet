# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.platform.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class PlatformTextureBaseFactory
(var jproto nil)
(var jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY :jnone)
(var jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY nil)
(var jsetstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY nil)
(var jnew_0 nil)
(var jm_load nil)

(set jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY (fn jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY []
  (when (= jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY :jnone) (set jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY (jnew_0)))
  jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY))
(set jsetstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY (fn jsetstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY [value] (set jcell_NULL_PLATFORM_TEXTURE_BASE_FACTORY value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformTextureBaseFactory" :f_commonStrings nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    this))

    
(set jm_load (fn jm_load [this _gl _target _level _image _border _flip]
    nil))

(set jproto @{:jm_load jm_load})


