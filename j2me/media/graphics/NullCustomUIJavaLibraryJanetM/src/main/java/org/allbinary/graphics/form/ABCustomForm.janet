# Generated Code Do Not Modify
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ABCustomItem/jm_getNullInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/form/item/ABCustomItem" "jm_getNullInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./CustomScreen :as CustomScreen)

# Java class ABCustomForm
(var jproto nil)
(var jnew_4 nil)
(var jm_getAllitems nil)
(var jm_size nil)
(var jm_setSelectedIndex nil)
(var jm_getSelectedIndex nil)
(var jm_deleteAll nil)
(var jm_delete nil)
(var jm_append nil)
(var jm_insert nil)
(var jm_set nil)
(var jm_get nil)
(var jm_getWidth nil)
(var jm_paint nil)
(var jm_getTitle nil)

    
(set jnew_4 (fn jnew_4 [_title _items _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ABCustomForm" :f_logUtil nil :f_commonStrings nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (JR/superInit this (CustomScreen/jnew_0))
    this))
    
(set jm_getAllitems (fn jm_getAllitems [this]
    (label jreturn
        (return jreturn (array/new-filled 0 nil)))))
    
(set jm_size (fn jm_size [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_setSelectedIndex (fn jm_setSelectedIndex [this _index]
    nil))
    
(set jm_getSelectedIndex (fn jm_getSelectedIndex [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_deleteAll (fn jm_deleteAll [this]
    nil))
    
(set jm_delete (fn jm_delete [this _itemNum]
    nil))
    
(set jm_append (fn jm_append [this _item]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_insert (fn jm_insert [this _itemNum _item]
    nil))
    
(set jm_set (fn jm_set [this _itemNum _item]
    nil))
    
(set jm_get (fn jm_get [this _itemNum]
    (label jreturn
        (return jreturn (ABCustomItem/jm_getNullInstance)))))
    
(set jm_getWidth (fn jm_getWidth [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_getTitle (fn jm_getTitle [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))

(set jproto (table/setproto @{:jm_getAllitems jm_getAllitems :jm_size jm_size :jm_setSelectedIndex jm_setSelectedIndex :jm_getSelectedIndex jm_getSelectedIndex :jm_deleteAll jm_deleteAll :jm_delete jm_delete :jm_append jm_append :jm_insert jm_insert :jm_set jm_set :jm_get jm_get :jm_getWidth jm_getWidth :jm_paint jm_paint :jm_getTitle jm_getTitle} CustomScreen/jproto))


