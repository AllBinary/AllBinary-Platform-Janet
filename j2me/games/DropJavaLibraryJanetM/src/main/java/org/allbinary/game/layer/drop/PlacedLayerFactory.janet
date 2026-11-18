# Generated Code Do Not Modify
# package org.allbinary.game.layer.drop

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))

# Java class PlacedLayerFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_clear nil)
(var jm_getInstance nil)
(var jm_getSize nil)
(var jm_getRandomInstance nil)
(var jm_add nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlacedLayerFactory" :f_list nil :f_basicArrayListUtil nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    (put this :f_basicArrayListUtil (BasicArrayListUtil/jm_getInstance))
    this))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_list))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_size (this :f_list))))))
    
(set jm_getRandomInstance (fn jm_getRandomInstance [this]
    (label jreturn
        (return jreturn (:jm_getRandom (this :f_basicArrayListUtil) (this :f_list))))))
    
(set jm_add (fn jm_add [this _layerInterfaceFactoryInterface]
        (:jm_add (this :f_list) _layerInterfaceFactoryInterface)))

(set jproto @{:jm_clear jm_clear :jm_getSize jm_getSize :jm_getRandomInstance jm_getRandomInstance :jm_add jm_add})


