# 1. Install Superpowers (or update existing)
if [ -d ./superpowers ]; then
  cd ./superpowers && git pull
else
  git submodule add ../superpowers.git superpowers
fi

# 2. Create directories
mkdir -p ./plugins
mkdir -p ./skills

# 3. Remove old symlinks/directories if they exist
rm -f ./plugins/superpowers.js
rm -rf ./skills/superpowers

# 4. Create symlinks
ln -s ./superpowers/.opencode/plugins/superpowers.js ./plugins/superpowers.js
ln -s ./superpowers/skills ./skills/superpowers

# 5. Restart OpenCode
