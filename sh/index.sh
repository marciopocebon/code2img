#!/bin/bash
  
echo "content-type: text/html"
echo
echo
source head.sh 


_file=$(cat | sed '1,4d;$d' | sed '$d')

[[ -z "$_file" ]] && echo '<meta http-equiv="refresh" content="0.1;url=../#invalid"' && return

_filename=$(mktemp -p ../assets/code/)
echo "$_file" > "$_filename"
sed -i "s/'/\\\'/g" "$_filename"
chmod -R o-x "../assets/img/"
_img=$(mktemp -p ../assets/img/)
_img="$_img.png"


_lines=$(wc -l "$_filename" | awk '{print $1}')
_cols=$(wc -L "$_filename" | awk '{print $1}')
_width=$(echo $_cols \* 15 | bc)
_height=$(echo $_lines \* 33 | bc)

convert -size "$_width"x"$_height" xc:'#2A2C2F' -font "../assets/fonts/Fantasque.ttf"  -pointsize 27 -fill '#A9B1BD' -draw "text 20,40 '$(cat  $_filename)'" "$_img"

echo "<img class='img-fluid img-thumbnail' src='$_img'>"
  
echo " </div>
  </body>
  </html>
  "
