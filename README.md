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
$ brew install mysql postgresql sqlite redis kubernetes-cli protobuf aws-elasticbeanstalk aws-cli docker ansible
```

## env
```
brew install zsh git jq
```

# Common
## Docker(https://www.docker.com/products/docker-desktop)
```
$ brew cask install docker
```
## Google chrome(https://www.google.com/intl/ja_ALL/chrome/)
```
$ brew cask install google chrome
```

## VsCode(https://code.visualstudio.com/)
```
$ brew cask install visual-studio-code   
```

## google 日本語入力(https://www.google.co.jp/ime/)
```
$ brew cask install google-japanese-ime
```

## iterm2(https://www.iterm2.com/downloads.html)
```
$ brew cask install iterm2
```

# Dev
## Ruby
### rbenv(https://github.com/rbenv/rbenv) install
```
$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
```

### ruby-build install
```
$ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

### throught PATH
```shell
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' > .zshrc
$ echo 'eval "$(rbenv init -)"' > .zshrc
```

## Node.js
### nvm(https://github.com/nvm-sh/nvm#install-script) install
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
``` 

### throught PATH
```shell
$ echo 'export NVM_DIR="$HOME/.nvm"' > .zshrc 
$ echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"' > .zshrc
$ echo '[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"' > .zshrc
```

## Java
### install JDK(https://www.oracle.com/technetwork/java/javase/downloads/index.html)
```
$ brew cask install java
```

### throught PATH
```shell
$ echo 'export JAVA_HOME=`/usr/libexec/java_home -v "1.8(version)"`"' > .zshrc
$ echo 'export PATH=/usr/local/bin:$PATH"' > .zshrc
$ echo 'PATH=${JAVA_HOME}/bin:${PATH}"' > .zshrc
```

## Scala
scala(https://github.com/scala/scala) install  
sbt(https://github.com/sbt/sbt) install
```
$ brew install scala sbt
```
