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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../java/io/InputStream :as InputStream)
(import ../../../../../../java/io/InputStreamReader :as InputStreamReader)
(defn- ResourceUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/data/resource/ResourceUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class PartnerIdentifierFileUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_get nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PartnerIdentifierFileUtil" :f_logUtil nil :f_FILE_NAME nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_FILE_NAME "partner.txt")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (try
            (do
            (var _resourceUtil (ResourceUtil/jm_getInstance))
            (var _inputStream (:jm_getResourceAsStream _resourceUtil (this :f_FILE_NAME)))
            (var _inputStreamReader (InputStreamReader/jnew_1 _inputStream))
            (var _chars (array/new-filled 30 0))
            (var _size (:jm_read _inputStreamReader _chars))
            (var _partnerString ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
            (if (> _size 0)
                (do
                (set _partnerString (JR/fromChars _chars 0 _size))))
            (:jm_close _inputStreamReader)
            (return jreturn _partnerString))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET) _e)
            (return jreturn ((StringUtil/jm_getInstance) :f_NULL_STRING))))))))

(set jproto @{:jm_get jm_get})


