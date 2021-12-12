#!bin/bash
rm -r work
rm *.{log,svf}
rm elaborate.txt
dc_shell-xg-t -f script_syn.bash
