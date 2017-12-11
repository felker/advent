#!/usr/bin/emv

# More or less following the Mac install instructions from
# https://github.com/gibiansky/IHaskell
cd /Users/kfelker/Documents/Coding/
git clone https://github.com/gibiansky/IHaskell
cd IHaskell
pip3 install -r requirements.txt
stack setup # Manually added by me
stack install gtk2hs-buildtools
stack install --fast
ihaskell install --stack
# Originally, this prompts:
# WARNING: Installation path /Users/kfelker/.local/bin not found on the PATH environment variable


# To launch notebook,
# stack exec jupyter -- notebook
