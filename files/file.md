convert -size "$_width"x"$_height" xc:'#2A2C2F' -font "../assets/fonts/Fantasque.ttf"  -pointsize 27 -fill '#A9B1BD' -draw "text 20,40 '$(cat  $_filename)'" "../assets/img/$_img"
