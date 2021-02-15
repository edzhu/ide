# Mac OSX installation 

## Setup command line tools
1. Install brew:
   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Change shell to bash:
   `chsh -s /bin/bash`
3. Add brew to path:
   `export PATH="/usr/local/bin:$PATH"`
4. Install the latest version of make:
   `brew install make`
5. Enable ls color:
   `brew install coreutils`
6. Move bashrc file into home director:
   `mv bashrc ~/.bashrc`
