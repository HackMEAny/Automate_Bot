echo "Enter the text you want to enter"
read ALL
echo "As soon as u close the window, QRCode will be deleted"
qrencode -o Text_to_QRCode.svg "$ALL" && display -resize 400 Text_to_QRCode.svg && rm Text_to_QRCode.svg