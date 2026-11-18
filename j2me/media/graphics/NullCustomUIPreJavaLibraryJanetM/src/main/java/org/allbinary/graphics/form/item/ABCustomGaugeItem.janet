# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./ABCustomItem :as ABCustomItem)

# Java class ABCustomGaugeItem
(var jproto nil)
(var jcell_NULL_GAUGE_ITEM :jnone)
(var jstatic_NULL_GAUGE_ITEM nil)
(var jsetstatic_NULL_GAUGE_ITEM nil)
(var jnew_5 nil)

(set jstatic_NULL_GAUGE_ITEM (fn jstatic_NULL_GAUGE_ITEM []
  (when (= jcell_NULL_GAUGE_ITEM :jnone) (set jcell_NULL_GAUGE_ITEM (jnew_5 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) 1 0 ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE))))
  jcell_NULL_GAUGE_ITEM))
(set jsetstatic_NULL_GAUGE_ITEM (fn jsetstatic_NULL_GAUGE_ITEM [value] (set jcell_NULL_GAUGE_ITEM value)))

    
(set jnew_5 (fn jnew_5 [_label _maxValue _initialValue _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ABCustomGaugeItem"} jproto))
        (JR/superInit this (ABCustomItem/jnew_3 _label _backgroundBasicColor _foregroundBasicColor))
    this))

(set jproto (table/setproto @{} ABCustomItem/jproto))


