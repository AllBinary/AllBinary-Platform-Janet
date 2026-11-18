# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../javax/microedition/lcdui/Canvas :as Canvas)
(defn- GameStatisticsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/canvas/GameStatisticsFactory" "jm_getInstance" args))

#J2SEForJ2ME
# Java class NullDisplayable
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_paint nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullDisplayable" :f_baseGameStatistics nil} jproto))
    (put this :f_baseGameStatistics (GameStatisticsFactory/jm_getInstance))
    (JR/superInit this (Canvas/jnew_0))
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_nextRefresh (this :f_baseGameStatistics))))

(set jproto (table/setproto @{:jm_paint jm_paint} Canvas/jproto))


