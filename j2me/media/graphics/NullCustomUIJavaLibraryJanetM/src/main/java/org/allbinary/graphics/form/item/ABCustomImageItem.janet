# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(import ./ABCustomItem :as ABCustomItem)

# Java class ABCustomImageItem
(var jproto nil)
(var jnew_6 nil)
(var jm_getImage nil)

    
(set jnew_6 (fn jnew_6 [_label _image _layout _altText _basicColor _yOffset]
    (var this (table/setproto @{:jclass "ABCustomImageItem" :f_yOffset 0} jproto))
    (put this :f_yOffset 0)
        (JR/superInit this (ABCustomItem/jnew_3 _label _basicColor _basicColor))
    this))
    
(set jm_getImage (fn jm_getImage [this]
    (label jreturn
        (return jreturn (NullImage/jstatic_NULL_IMAGE)))))

(set jproto (table/setproto @{:jm_getImage jm_getImage} ABCustomItem/jproto))


