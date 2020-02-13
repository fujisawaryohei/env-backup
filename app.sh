#
## install web app
#

echo "----- install web apps -------"
brew cask install docker
brew cask install java
brew cask install iterm2
brew cask install google-chrome
brew cask install visual-studio-code

while true; do
  read -p 'Add need license app?[Y/n]' Answer
  case $Ansewr in
    '' | [Yy]* )
      brew cask install microsoft-ofiice
      brew cask install intellij-idea
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer Yes or No.
  esac
done;
echo '------ END ------'
