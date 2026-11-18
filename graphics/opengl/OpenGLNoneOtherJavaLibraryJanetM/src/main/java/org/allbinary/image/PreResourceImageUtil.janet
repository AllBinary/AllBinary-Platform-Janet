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
# package org.allbinary.image

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PreResourceImageUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_encapsulate nil)
(var jm_updateGL nil)
(var jm_update nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PreResourceImageUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_encapsulate (fn jm_encapsulate [this _image]
    (label jreturn
        (return jreturn _image))))
    
(set jm_updateGL (fn jm_updateGL [this _gl _image]
    nil))
    
(set jm_update (fn jm_update [this _graphics _image]
    nil))

(set jproto @{:jm_encapsulate jm_encapsulate :jm_updateGL jm_updateGL :jm_update jm_update})


