local logo = {
'                                   .:::::::::::::::::::.                                           ', 
'                               .:::::::::::::::::::::::::::                                        ', 
'                            .::::::::::::::::::::::::::::::::.                                     ', 
'                          ::::::::::::::::::::::::::::::::::::::                                   ', 
'                        .:::::::::::=*+::::::=**##*+-::*@@#::::::::::                              ', 
'                  :-::::::::::::::=%#==*:-#%%%###%%%%@@+-:+=.:::::::.:.                            ', 
'                 ::  .:::::::::::::::::::=%#+#%@@@@@@@%::::::::::::::::                            ', 
'                 :. .::::::::::::::::::::::=*#%@@@%%*=::::::::::::::::.                            ', 
'                 .--::::::::::::::::::::-----=============--::::::::::::.                          ', 
'                   ::::::::::::::::-==++=-::::::::...::=#*+===--::::::::::                         ', 
'                   :::::::::::::--=*#%@*:.          ..-#%%%#*===---::::::::.                       ', 
'                  :::::::::::---=#%%%%@%*====-----==+#%%%%%%%##+=----::-::::                       ', 
'                  ::::::---:--=+%%%%%%%%%@%%%%%%%%%%%%%%%%%%%%%#+=--:-------                       ', 
'                  :-:------:--=#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#+=---------.                      ', 
'                  --:-------:-*%%@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*=-:-------.                      ', 
'                  ----------:-+%%%@%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#=------==-=.                      ', 
'                  :-----------:*%@@@@@%%%%%@%%%%%@%%%%%%%%%%%%%%*=----======                       ', 
'                  :----====---::=%@%%%%%@@@@@@@%%%%@@@@%%%%%%%%+-----======:                       ', 
'                  .--========---::#%@%@%%@@@@@@@%%@@@@@@%%%%%#=----========                        ', 
'                   :-==========----=%%%@@@@@@@@@%%@@@@@@@%%%#----=========                         ', 
'                    -============---:*%@@@@@@@@@@@@@@@@@@@%=:---=========                          ', 
'                     =============----=#@@@@@@@@@@@@@@@@@*---======+++==                           ', 
'                      ================---*%@@@:     :*%#---=====++++++=                            ', 
'                       ==================----:::::::::---=====+++++++:                             ', 
'                        -=====++++++=======================++++++++=                               ', 
'                          -==++++++++++=++=========++++++++++++*+=                                 ', 
'                            =+++++++===========================+:                                  ', 
'                           .::-----=============================------::.                          ', 
'                      .:---------===--------------------------====------:---:                      ', 
'                     :---------====-------------::::::--------=====-----=----:                     ', 
'                    :--:--==========----:::::..       ..:::----==========-::--:                    ', 
'                    :-:::---===::------:::.               .::----=:.==----::-::                    ', 
'                    .::::-------=-:----:.                   .::---=-----::::::                     ', 
'                      :::::::::------::.                      .:----:::::::::                      ', 
'                        :::::::------::                        .:---:::::::                        ', 
'                          :::::-==--::                          .:--:::::                          ', 
'                          :=====----:.                           .:-=: :                           ', 
'                           :=--=----:.                            .:--                             ', 
'                           ---==---:.                             .:--.                            ', 
"",
"",
"",
                                                                                                    
                                                                                

}
local date = os.date('%Y-%m-%d %H:%M:%S')
local db = require('dashboard')
db.setup {
theme = "doom",
config = {
	header = logo,
 	  center = {
	    {
	      icon = '@' .. date,
	      icon_hl = 'group',
	      desc = '',
	      desc_hl = 'group',
	      key = 'LFG!!',
	      key_hl = 'group',
	      key_format = ' [%s]', -- `%s` will be substituted with value of `key`
	      action = '',
	    },
	  },
  	footer = {},	
	}
}

vim.cmd("Dashboard")