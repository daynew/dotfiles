# Dotfiles

These dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

Follow these steps to set up a new machine:

### 1. Install Oh My Zsh
Oh My Zsh is required for the ZSH configuration. Install it using the following command:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Refer to the [official Oh My Zsh documentation](https://ohmyz.sh/#install) for more details.

### 2. Install GNU Stow
Ensure `stow` is installed on your system:
- **macOS:** `brew install stow`
- **Ubuntu/Debian:** `sudo apt install stow`
- **Fedora:** `sudo dnf install stow`

### 3. Clone and Link
Clone this repository into your home directory and use `stow` to link the configurations:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow zsh
stow nvim
stow tmux
```