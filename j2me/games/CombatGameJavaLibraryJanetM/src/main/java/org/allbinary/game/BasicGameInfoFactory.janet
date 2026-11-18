# Generated Code Do Not Modify
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BasicGameInfoFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_isPeaked nil)
(var jm_howManyLeft nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicGameInfoFactory" :f_currentReleaseIndex 0 :f_currentDestroyIndex 0 :f_total 0} jproto))
    
    
    
    this))
    
(set jm_init (fn jm_init [this _total]
        (set (this :f_currentReleaseIndex) 0)
        (set (this :f_currentDestroyIndex) 0)
        (set (this :f_total) _total)))
    
(set jm_isPeaked (fn jm_isPeaked [this]
    (label jreturn
        (if (>= (this :f_currentDestroyIndex) (this :f_total))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_howManyLeft (fn jm_howManyLeft [this]
    (label jreturn
        (return jreturn (JR/i32 (- (this :f_total) (this :f_currentDestroyIndex)))))))

(set jproto @{:jm_init jm_init :jm_isPeaked jm_isPeaked :jm_howManyLeft jm_howManyLeft})


