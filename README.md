# Kickstart.nvim()
 Amalgamation of configs from Josean Martinez, nvim-kickstart, typecraft, primegen, and myself.

# INSTALLATION
```bash
git clone https://github.com/arjablc/kickstart.nvim.git ~/.config/nvim 
```

## Package manager
- Lazy.nvim as the package manager

## plugins
- NeoTree --> file tree
- Telescope -->  for fuzzy finding
- lsp-config -->  lsp client of nvim
    - nvim-lsp-file-operations --> used to change the name of a renamed file in the imports of languages
- Mason --> for language server, linder, dap and formatter management
    - mason-lspconfig ---> to automatically install lsp
    - mason-tool-installer ---> to automatically other thing from mason
- Which-key --> as the name suggests
- Auto compeletions
    - nvim-cmp --> plugin for auto completions
    - luaSnip --> as the snippets engine
    - friendly-snippets --> gives some useful snippets to common languages
    - lspkind.nvim --> gives preview of the snippet(I think, I just coped it)
    - lazydev.nvim --> apparantly enables nvim function in lua_ls (dunno never seen it work, still installed)
- alipne --> greeter
- indent-guides --> as the name suggests
- maximizer --> maximize a split(really handy imo)
- tree-sitter --> AST(abstract syntax tree) for better syntax highlighting.
- lua-line --> status linde
- undotree --> a telescope version that supports lua configs similar to the og undotree but in telescope select ui
- surround --> ys, ds, cs commands to change surrounding of a word.....
- nvim-lint --> linting ofc 

# Some jargon
### lsp
lsp stands for language server protocol, it is a protocol that lets a language server talk to clients in a standard manner.
lsp in nvim works like this-----> you install the language server, you install the client for nvim which is nvim-lspconfig, which then can communicate with your language server.
Mason is used to install the lsp servers or language servers
    
### DAP
Debug Adapter Protocol similar to lsp is a standard way to communicate between text editors and debuggind servers for alanguage. 

# TODO

- [x] Copy a config or mix up many configs to make a new one.
- [ ] Make some plugins lazily loaded
- [ ] Install something for flutter and make it a flutter ide
- [ ] Get satisfied with my setup and not touch it for months *Impossible*


# _______From official Readme__________
Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

```sh
git clone https://github.com/arjablc/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
current plugin status. Hit `q` to close the window.

Read through the `init.lua` file in your configuration folder for more
information about extending and exploring Neovim. That also includes
examples of adding popularly requested plugins.


### Getting Started

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

### FAQ

* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME`
    to maintain multiple configurations. For example, you can install the kickstart
    configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative
    config directory and the matching local directory
    `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim
    distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://github.com/folke/lazy.nvim#-uninstalling) information

### Install Recipes

Below you can find OS specific install instructions for Neovim and dependencies.

After installing all the dependencies continue with the [Install Kickstart](#Install-Kickstart) step.

#### Windows Installation

<details><summary>Windows with Microsoft C++ Build Tools and CMake</summary>
Installation may require installing build tools and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```
</details>
<details><summary>Windows with gcc/make using chocolatey</summary>
Alternatively, one can install gcc and make which don't require changing the config,
the easiest way is to use choco:

1. install [chocolatey](https://chocolatey.org/install)
either follow the instructions on the page or use winget,
run in cmd as **admin**:
```
winget install --accept-source-agreements chocolatey.chocolatey
```

2. install all requirements using choco, exit previous cmd and
open a new one so that choco path is set, and run in cmd as **admin**:
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```
</details>
<details><summary>WSL (Windows Subsystem for Linux)</summary>

```
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>

#### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>

