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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))

# Java class InGameFeatureChoiceGroups
(var jproto nil)
(var jcell_gameFeatureChoiceGroupsExclusive :jnone)
(var jstatic_gameFeatureChoiceGroupsExclusive nil)
(var jsetstatic_gameFeatureChoiceGroupsExclusive nil)
(var jcell_gameFeatureChoiceGroupsMultiple :jnone)
(var jstatic_gameFeatureChoiceGroupsMultiple nil)
(var jsetstatic_gameFeatureChoiceGroupsMultiple nil)
(var jnew_0 nil)
(var jm_getExclusiveInstance nil)
(var jm_getMultipleInstance nil)
(var jm_get nil)
(var jm_add nil)

(set jstatic_gameFeatureChoiceGroupsExclusive (fn jstatic_gameFeatureChoiceGroupsExclusive []
  (when (= jcell_gameFeatureChoiceGroupsExclusive :jnone) (set jcell_gameFeatureChoiceGroupsExclusive (jnew_0)))
  jcell_gameFeatureChoiceGroupsExclusive))
(set jsetstatic_gameFeatureChoiceGroupsExclusive (fn jsetstatic_gameFeatureChoiceGroupsExclusive [value] (set jcell_gameFeatureChoiceGroupsExclusive value)))

(set jstatic_gameFeatureChoiceGroupsMultiple (fn jstatic_gameFeatureChoiceGroupsMultiple []
  (when (= jcell_gameFeatureChoiceGroupsMultiple :jnone) (set jcell_gameFeatureChoiceGroupsMultiple (jnew_0)))
  jcell_gameFeatureChoiceGroupsMultiple))
(set jsetstatic_gameFeatureChoiceGroupsMultiple (fn jsetstatic_gameFeatureChoiceGroupsMultiple [value] (set jcell_gameFeatureChoiceGroupsMultiple value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InGameFeatureChoiceGroups" :f_hashtable nil} jproto))
    (put this :f_hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
    this))
    
(set jm_getExclusiveInstance (fn jm_getExclusiveInstance []
    (label jreturn
        (return jreturn (jstatic_gameFeatureChoiceGroupsExclusive)))))
    
(set jm_getMultipleInstance (fn jm_getMultipleInstance []
    (label jreturn
        (return jreturn (jstatic_gameFeatureChoiceGroupsMultiple)))))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (return jreturn (this :f_hashtable)))))
    
(set jm_add (fn jm_add [this _name _list]
        (:jm_put (this :f_hashtable) _name _list)))

(set jproto @{:jm_get jm_get :jm_add jm_add})


