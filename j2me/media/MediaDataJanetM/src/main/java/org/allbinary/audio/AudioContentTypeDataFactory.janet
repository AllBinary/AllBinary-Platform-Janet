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
# package org.allbinary.audio

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AudioContentTypeData/jnew_1 [& args] (JR/call jfile "./AudioContentTypeData" "jnew_1" args))

# Java class AudioContentTypeDataFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AudioContentTypeDataFactory" :f_MIME_AUDIO_TONE nil :f_MIME_AUDIO_AMR nil :f_MIME_AUDIO_AMR_WB nil :f_MIME_AUDIO_WAV nil :f_MIME_AUDIO_MIDI nil :f_MIME_AUDIO_SP_MIDI nil} jproto))
    (put this :f_MIME_AUDIO_TONE (AudioContentTypeData/jnew_1 "audio/x-tone-seq"))
    (put this :f_MIME_AUDIO_AMR (AudioContentTypeData/jnew_1 "audio/amr"))
    (put this :f_MIME_AUDIO_AMR_WB (AudioContentTypeData/jnew_1 "audio/amr-wb"))
    (put this :f_MIME_AUDIO_WAV (AudioContentTypeData/jnew_1 "audio/x-wav"))
    (put this :f_MIME_AUDIO_MIDI (AudioContentTypeData/jnew_1 "audio/midi"))
    (put this :f_MIME_AUDIO_SP_MIDI (AudioContentTypeData/jnew_1 "audio/sp-midi"))
    this))

(set jproto @{})


