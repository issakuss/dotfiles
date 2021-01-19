ARCH="$(uname -m)"
if [ "${ARCH}" = "arm64" ]; then
   export PATH=/opt/homebrew/bin:$PATH
   export HOMEBREW_CACHE=/opt/homebrew/cache
fi
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH
source ~/dotfiles/xshrc/alias
