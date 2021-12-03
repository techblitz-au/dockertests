echo 'here is our initial setup file'

# update nodejs and npx

echo "starting script"
apt-get update
sleep 6
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"
echo "NVM created and activated"
sleep 8
echo 'export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
echo "i just fucking updated my bashrc file;)"
cat ~/.bashrc
sleep 4
source ~/.bashrc
nvm -v
echo "your latest node version is"
node -v
sleep 6
nvm install --lts
echo "Latest node is installed"
sleep 3
source /root/.profile
source ~/.bashrc
sleep 8
echo "getting your node version"
node -v
npm -v
echo "script finished"
source /root/.profile
source ~/.bashrc
npm -v
node -v
