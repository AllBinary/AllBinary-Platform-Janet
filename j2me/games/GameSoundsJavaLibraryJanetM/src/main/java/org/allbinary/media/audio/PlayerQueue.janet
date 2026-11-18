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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- NoSound/jm_getInstance [& args] (JR/call jfile "./NoSound" "jm_getInstance" args))

# Java class PlayerQueue
(var jproto nil)
(var jcell_TOTAL :jnone)
(var jstatic_TOTAL nil)
(var jsetstatic_TOTAL nil)
(var jnew_1 nil)
(var jm_add nil)
(var jm_process nil)
(var jm_clear nil)
(var jm_toString nil)

(set jstatic_TOTAL (fn jstatic_TOTAL []
  (when (= jcell_TOTAL :jnone) (set jcell_TOTAL "Sounds In Queue: "))
  jcell_TOTAL))
(set jsetstatic_TOTAL (fn jsetstatic_TOTAL [value] (set jcell_TOTAL value)))

    
(set jnew_1 (fn jnew_1 [_max]
    (var this (table/setproto @{:jclass "PlayerQueue" :f_commonStrings nil :f_list nil :f_max 0} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_list (BasicArrayListD/jnew_0))
    
        (set (this :f_max) _max)
    this))
    
(set jm_add (fn jm_add [this _sound]
        (try
            (do
            (if (not (:jm_contains (this :f_list) _sound))
                (do
                (:jm_add (this :f_list) _sound))))
            ([_e] (do
            (PreLogUtil/jm_put ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_ADD)))))))
    
(set jm_process (fn jm_process [this]
    (label jreturn
        (var _sound (NoSound/jm_getInstance))
        (try
            (do
            (var _played false)
            (if (> (:jm_size (this :f_list)) 0)
                (do
                (set _sound (:jm_removeAt (this :f_list) 0))
                (if (not (nil? _sound))
                    (do
                    (JR/className (:jm_getPlayerP _sound))))
                (do
                    (while (> (:jm_size (this :f_list)) (this :f_max))
                        (do
                    (:jm_removeAt (this :f_list) 0))))
                (set _played true)))
            (return jreturn _played))
            ([_e] (do
            (var _resource ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
            (if (not (nil? _sound))
                (do
                (set _resource (:jm_getResource _sound))))
            (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_commonStrings) :f_EXCEPTION_LABEL)) _resource)) this ((this :f_commonStrings) :f_PROCESS))
            (return jreturn false)))))))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_list))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) (jstatic_TOTAL)) (:jm_size (this :f_list))))))))

(set jproto @{:jm_add jm_add :jm_process jm_process :jm_clear jm_clear :jm_toString jm_toString})


