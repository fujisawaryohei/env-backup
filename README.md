# Homebrew 
## homebrew
```
 $ xcode-select --install
 $ sudo xcode-select --switch /Library/Developer/CommandLineTools
 $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```  

## homebrew-cask
```
$ brew install caskroom/cask/brew-cask
```

## DB Infra
```
$ brew install mysql postgresql sqlite redis kubernetes-cli protobuf aws-elasticbeanstalk aws-cli docker
```

## env
```
brew install zsh git jq
```

## lang
```
brew install sbt scala 
```

# Common
## Docker
```
$ brew cask install docker
```
## Google chrome
```
$ brew cask install google chrome
```

## VsCode
```
$ brew cask install visual-studio-code   
```

## google 日本語入力
```
$ brew cask install google-japanese-ime
```

## iterm2
```
$ brew cask install iterm2
```

# Dev
## rbenv(https://github.com/rbenv/rbenv) for Ruby
### rbenv install
```
$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
```

### ruby-build install
```
$ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

### Access to PATH
```shell
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' > .zshrc
$ echo 'eval "$(rbenv init -)"' > .zshrc
```

## nvm(https://github.com/nvm-sh/nvm#install-script) for Node.js
### nvm install
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
``` 

```shell
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
```
