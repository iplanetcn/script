#!bin/bash
for NAME in `brew cask list`
do
brew cask info $NAME | grep "Not installed"
if [ $? -eq 0 ]
then
brew cask install ${NAME}
fi
done
