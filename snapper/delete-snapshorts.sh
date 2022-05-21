snapper delete $(snapper list | awk '{if (NR>4) { print  }}')
