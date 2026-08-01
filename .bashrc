# If not running interactively, exit script
[[ $- != *i* ]] && return

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# GitHub Copilot CLI shell integration
if command -v gh >/dev/null 2>&1; then
    eval "$(gh copilot alias -- bash 2>/dev/null)"
fi
