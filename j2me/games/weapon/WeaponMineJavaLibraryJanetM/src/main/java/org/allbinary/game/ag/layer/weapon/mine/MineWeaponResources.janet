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
# package org.allbinary.game.ag.layer.weapon.mine

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../org/allbinary/game/layer/resources/BasicGameResources :as BasicGameResources)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class MineWeaponResources
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MineWeaponResources" :f_DROP_TEXT_RESOURCE nil :f_DROP_RESOURCE nil :f_DROP_ICON_RESOURCE nil} jproto))
    (put this :f_DROP_TEXT_RESOURCE "/mine_drop_text_20_by_20.png")
    (put this :f_DROP_RESOURCE "/mine_drop_20_by_20.png")
    (put this :f_DROP_ICON_RESOURCE "/mine_drop_icon_20_by_20.png")
    (JR/superInit this (BasicGameResources/jnew_0))
        (var _ROOT "/mine")
        (var _SMALL "_20_by_20.png")
        (var _MEDIUM _SMALL)
        (var _SIZE_FOUR _SMALL)
        (var _SIZE_FIVE _SMALL)
        (var _SIZE_SIX _SMALL)
        (var _SIZE @[_SMALL _MEDIUM _SIZE_FOUR _SIZE_FIVE _SIZE_SIX])
        ((get BasicGameResources/jproto :jm_init) this _ROOT _SIZE)
    this))

(set jproto (table/setproto @{} BasicGameResources/jproto))


