#Install and configure a Fish terminal setup

this_dir=$(pwd)

#play with fonts so that omf will behave
#install powerline fonts
cd /tmp/
git clone https://github.com/powerline/fonts.git 
bash /tmp/fonts/install.sh
rm -r /tmp/fonts

#install nerd fonts
cd /tmp/
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
bash /tmp/nerd-fonts/install.sh Hack
rm -r /tmp/nerd-fonts

#install oh my fish (omf)
curl -L https://get.oh-my.fish | fish

#install bobthefish
omf install bobthefish

#cp config options to fish dir
cd $this_dir
cp config.fish ~/.config/fish/

#set default shell to fish
chsh -s `which fish`

