# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ChallengerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setWinner nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ChallengerInterface"} jproto))
    this))

    
(set jm_setWinner (fn jm_setWinner [this _isWinner]
    (error (JR/newException "AbstractMethodError" "setWinner"))))

(set jproto @{:jm_setWinner jm_setWinner})


