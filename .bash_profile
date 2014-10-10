export NDK_ROOT=/usr/local/Cellar/android-ndk/r8e
export COCOS2DX_ROOT=$HOME/Workspace/cocos2d-x-3.0beta2
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/22.3
export ANDROID_HOME=/usr/local/Cellar/android-sdk/22.3
export NDK_TOOLCHAIN_VERSION=4.7
export PATH=$PATH:$HOME/Workspace/path:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$HOME/Workspace/riak-1.4.8/bin:$HOME/android-toolchain/api9/bin:/System/Library/Frameworks/Python.framework/Versions/2.7/bin
export ANT_ROOT=/usr/local/Cellar/ant/1.9.3/bin

. /Users/jsermeno/erl/17.3/activate
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/jsermeno/Workspace/cocos2d-x/tools/cocos2d-console/bin
# export PATH=$COCOS_CONSOLE_ROOT:$PATH
export PATH=/usr/texbin:$PATH
export PATH=/usr/local/octave/3.8.0/bin:$PATH
ulimit -n 4096

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export TESSDATA_PREFIX=$HOME/Workspace/tesseract/tesseract-ocr
export PATH=$PATH:$HOME/Workspace/lib/elixir/bin

# added by Miniconda 3.6.0 installer
# export PATH="/Users/jsermeno/miniconda/bin:$PATH"
# export PYTHONPATH="/usr/local/lib/python2.7/site-packages"
