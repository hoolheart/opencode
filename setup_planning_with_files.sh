# 1. Install planning-with-files (or update existing)
if [ -d ./planning-with-files ]; then
  cd ./planning-with-files && git pull
else
  git submodule add ../planning-with-files.git planning-with-files
fi

# 2. Create directories
mkdir -p ./skills

# 3. Remove old symlinks/directories if they exist
rm -rf ./skills/planning-with-files

# 4. Create symlinks
ln -s ./planning-with-files/.opencode/skills/planning-with-files ./skills/planning-with-files

# 5. Restart OpenCode
