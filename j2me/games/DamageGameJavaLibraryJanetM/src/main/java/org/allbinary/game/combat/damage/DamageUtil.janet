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
# package org.allbinary.game.combat.damage

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))

# Java class DamageUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)
(var jm_debugDamage nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DamageUtil" :f_logUtil nil :f_COLLIDE nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_COLLIDE "collide")
    this))
    
(set jm_process (fn jm_process [this _damageableInterface _damageableInterface2]
        (:jm_damage _damageableInterface (:jm_getDamage _damageableInterface2 0) 0)))
    
(set jm_debugDamage (fn jm_debugDamage [this _collidableInterfaceCompositeInterface1 _collidableInterfaceCompositeInterface]
        (var _collidableDestroyableDamageableLayer _collidableInterfaceCompositeInterface)
        (var _damage (:jm_getDamage _collidableDestroyableDamageableLayer 0))
        (if (> _damage 20000)
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer "Collision ")
            (:jm_append _stringBuffer (:jm_toString _collidableInterfaceCompositeInterface1))
            (:jm_append _stringBuffer " with: ")
            (:jm_append _stringBuffer (:jm_toString _collidableInterfaceCompositeInterface))
            (:jm_append _stringBuffer " damage: ")
            (:jm_appendint _stringBuffer _damage)
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) _collidableInterfaceCompositeInterface1 (this :f_COLLIDE))))))

(set jproto @{:jm_process jm_process :jm_debugDamage jm_debugDamage})


