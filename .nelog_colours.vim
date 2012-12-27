"syn match T_TimeDiff /.*+ \d\+h \d\+m \d\+\(\.\d+\)*s.*/
"hi def T_TimeDiff guifg=IndianRed1 guibg=aquamarine1 ctermbg=green ctermfg=black
"syn match T_TimeDiff /.*+ \d\+h \d\+m \d\+.*s.*/
syn match T_TimeDiff /.*+ \d\+h \d\+m .*/
hi def T_TimeDiff guifg=red1 guibg=aquamarine1 ctermbg=green ctermfg=black

"syn match T_Apslabel /APS LABEL of current APS.*/
syn match T_Apslabel /.*APS LABEL .*/
"hi def T_Apslabel guifg=black guibg=green ctermbg=green ctermfg=black
hi def T_Apslabel guifg=black guibg=aquamarine1 ctermbg=green ctermfg=black

"syn match T_Section /<\+-\+\|--->\|<--->\|<--\|-->\|<-->\|<-\|->\|<->\|.*product:hiT 7300.*\|.*set.*neType\s.*\|.*eParsing.*\|.*SLICED.*\|.*route add .*\|Ne Name in backplane.*\|neHostName: .*\|neType:.*\|OSGI framework cache.*\|Welcome to Felix.\|.*======.*\|===\|.*######.*\|###\|.*------.*\|---\|.*______.*\|\s_\+\s\|.*\.\.\.\.\.\..*\|\.\.\.\|.*\~\~\~\~\~\~.*\|\~\~\~\|.*\*\*\*\*\*\*.*\|\*\*\*\|.*++++++.*\|+++\|.*SYSTEM UPTIME.*/A

syn match T_Section /<!--.*-->\|<\+=\+>\+\|<\+=\+\|=\+>\+\|<\+-\+>\+\|<\+-\+\|-\+>\+\|.*product:hiT 7300.*\|.*set.*neType\s.*\|.*eParsing.*\|.*SLICED.*\|.*route add .*\|Ne Name in backplane.*\|neHostName: .*\|neType:.*\|OSGI framework cache.*\|Welcome to Felix.\|.*====\+.*\|===\|.*####\+.*\|###\|.*----\+.*\|---\|.*___-\+.*\|\s_\+\s\|.*\.\.\.\.\+.*\|\.\.\.\|.*\~\~\~\~\+.*\|\~\~\~\|.*\*\*\*\*\+.*\|\*\*\*\|.*++++\+.*\|+++\|.*SYSTEM UPTIME.*/
hi def T_Section guifg=green ctermfg=green


syn match L_Fatal /\d\{6\}\s\d\{2\}:\d\{2\}:\d\{2\},\d\+\sFATAL.*\|.*VmRSS of .*\|.*Out of Memory.*\|.* ccep sv.*\|.*eceived SIG.*/
hi def L_Fatal guifg=red guibg=lightyellow ctermfg=red ctermbg=lightyellow

syn match L_Error /.*????\+.*\|??\+\|\d\{6\}\s\d\{2\}:\d\{2\}:\d\{2\},\d\+\sERROR.*/
hi def L_Error guifg=red ctermfg=red

syn match L_Warn /.*mib_copy_to_onb_flash.sh.*\|\d\{6\}\s\d\{2\}:\d\{2\}:\d\{2\},\d\+\sWARN.*/
"hi def L_Warn guifg=orange ctermfg=red
hi def L_Warn guifg=magenta2 guibg=black ctermfg=red

syn match T_Exception /\sERROR\s\+-\s.*\|.*Exception[:\s].*\|\s\+at\s\+.*Source)/
hi def T_Exception guifg=red ctermfg=red

syn match T_Reboot /.*U-Boot.*\|.*CPU:.*\|.*Start-mode:.*\|.*rc.sysinit.*\|.*check_migration.*\|.*INIT:.*\|.*Actual Root Device.*\|.*get_startup_reason.sh.*/
hi def T_Reboot guifg=yellow ctermfg=yellow
"hi def T_Basw guifg=red guibg=lightyellow ctermfg=red ctermbg=lightyellow


