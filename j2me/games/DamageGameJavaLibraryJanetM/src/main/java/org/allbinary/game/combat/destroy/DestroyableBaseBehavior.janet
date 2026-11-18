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
# package org.allbinary.game.combat.destroy

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class DestroyableBaseBehavior
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getName nil)
(var jm_isDestroyed nil)
(var jm_setDestroyed nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DestroyableBaseBehavior"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (JR/className this)))))
    
(set jm_isDestroyed (fn jm_isDestroyed [this]
        (error (JR/newException "Exception" ((CommonStrings/jm_getInstance) :f_NOT_IMPLEMENTED)))))
    
(set jm_setDestroyed (fn jm_setDestroyed [this _destroyed]
    nil))

(set jproto @{:jm_getName jm_getName :jm_isDestroyed jm_isDestroyed :jm_setDestroyed jm_setDestroyed})


