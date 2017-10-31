 #!/bin/bash
while true; do
    read -p "Do you want OSX screenshots to include a drop shadow? (Y/N)" yn
    case $yn in
        [Yy]* ) defaults write com.apple.screencapture disable-shadow -bool false; killall SystemUIServer; break; ;;
        [Nn]* ) defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer; break; ;;
        * ) echo "Please answer Y or N."; ;;
    esac
done

