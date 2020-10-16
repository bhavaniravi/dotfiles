sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
rm -fr zsh-syntax-highlighting
rm -fr zsh-autosuggestions

brew install fzf
echo "alias python=/usr/local/bin/python3.7" >> ~/.zshrc
echo "alias pip=/usr/local/bin/pip3" >> ~/.zshrc
pip install ipython
mkdir .venv
brew cask install visual-studio-code
brew cask install docker

git config --global user.name "Bhavani Ravi"
git config --global user.email bhava0895@gmail.com