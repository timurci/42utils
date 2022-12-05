# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    putheader.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcakmako <tcakmako@42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/05 18:48:08 by tcakmako          #+#    #+#              #
#    Updated: 2022/12/05 19:13:26 by tcakmako         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

if [ $# -eq 1 ] && [ $1 != "--help" ]; then
	find $1 ! -path "*.git*" -type f #-exec vim +Stdheader +wq {} \;
elif [ $# -eq 2 ]; then
	find $1 ! -path "*.git*" -type f -name "*.$2" #-exec vim +Stdheader +wq {} \;
elif [ $# -eq 3 ] && [ $2 == "!" ]; then
	find $1 ! -path "*.git*" -type f ! -name "*.$3" #-exec vim +Stdheader +wq {} \;
else
	echo "putheader.sh <path> [[!] <suffix>]"
fi

