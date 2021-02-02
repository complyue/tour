# A Tour of Đ (Edh)

Greetings! TL;DR - Just click:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/complyue/tour)

- [What's Đ (Edh)](#whats-đ-edh)
- [Taking the Tour](#taking-the-tour)
  - [Fast and Easy Way - Gitpod workspace](#fast-and-easy-way---gitpod-workspace)
  - [Seasoned and UX Rich Way - local IDE](#seasoned-and-ux-rich-way---local-ide)
    - [Prerequisites](#prerequisites)
      - [Operation System](#operation-system)
      - [UNIX Toolchain](#unix-toolchain)
      - [Haskell Toolchain](#haskell-toolchain)
    - [Choose a Modern IDE](#choose-a-modern-ide)
      - [Install Language Extensions](#install-language-extensions)
      - [Optional: Use a more Edh/Haskell friendly Color Theme](#optional-use-a-more-edhhaskell-friendly-color-theme)
    - [Install EPM](#install-epm)
    - [Initialize a Workspace](#initialize-a-workspace)
    - [Clone and Open the Tour Repository](#clone-and-open-the-tour-repository)
    - [Optional: Open the Tour and All Library Packages](#optional-open-the-tour-and-all-library-packages)
    - [Begin the Tour](#begin-the-tour)
- [Contributing](#contributing)

## What's Đ (Edh)

**Đ (Edh)** stands for **Event Distributing & Hosting**,
it is an _Object-Oriented_, _Scripting_ (_Dynamic_) programming language,
serving as the surface langauge for interoperation between distributed
processes as well as computations within a local process. Where massive
**Concurrency** and auto mapping to **Parallelism** are very expected.

Source code in **Đ (Edh)** - the _guest language_, run _interpreted_ atop
certain runtime environment programmed in another, more versatile
programming language, i.e. the _host langauge_,
currently being [GHC](https://haskell.org/ghc)/[Haskell](https://haskell.org),
with [Julia](https://julialang.org), [Go](https://golang.org),
[Python](https://python.org), and
[JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
to be hopefully supported in the future.

**Ergonomics** (i.e. _Human Performance_) comes 1st in **Đ (Edh)**'s language
design, raw machine performance as well as a prosperous ecosystem and etc.
are less a goal, they are offloaded to efforts by the _host language_ and/or
_runtime_ .

You are expected to write the core logic (e.g. service methods) of your program
in the _host language_, leveraging its mature ecosystem, then expose various
artifacts to **Đ (Edh)** for interopertions both locally and remotely. So the
**Đ (Edh)** parser, interpreter, runtime, as well as its default batteries and
a handful of optional packages, are distributed as libraries in the
_host language_ in source form, together with complementary **Đ (Edh)**
modules, you can build executable **Đ (Edh)** interpreters with your own
batteries baked in, then run them with all necessary **Đ (Edh)** source code.

## Taking the Tour

You need a development environment capable of building source packages in the
host language, i.e. [GHC](https://haskell.org/ghc) based [Haskell](https://haskell.org) development.

You have 2 ways to take this tour of **Đ (Edh)** (as well as to start your
own **Đ (Edh)** based software development):

- Cloud based - the fast and easy way
- Local setup - the seasoned and UX rich way

### Fast and Easy Way - [Gitpod](https://gitpod.io) workspace

Thanks to [Gitpod](https://gitpod.io), you can get a fully working dev
environment in your browser with just one-click, the
[Free Plan](https://www.gitpod.io/pricing) would work perfectly well,
after [sign up](https://gitpod.io/subscription), you can just click
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/complyue/tour)
to begin the tour.

> TODO ... screenshots to showcase the steps

Note:

> Being soly [Eclipse Theia](https://theia-ide.org) based,
> [Gitpod](https://gitpod.io) workspace is currently less featureful compared
> to [VSCode](https://code.visualstudio.com) / [VSCodium](https://vscodium.com),
> while the good news are upcoming
> [Github Codespaces](https://github.com/features/codespaces) and
> [Gitpod's push of VSCode support](https://www.gitpod.io/blog/root-docker-and-vscode) in response, esp.
> [Gitpod's big vision](https://www.gitpod.io/blog/moving-software-development-to-the-cloud).

### Seasoned and UX Rich Way - local IDE

#### Prerequisites

##### Operation System

- **Linux** or **macOS**

  <details><summary>
  On Windows<sup>TM</sup> ? 
  </summary>

  Consider run a **Linux** guest VM through **VMWare** or **VirtualBox**.

  Another good option, if you have some **Linux** box (either a VPC on the
  cloud or another machine sitting besides you) up, and prefer to run a **VSCode** /
  **VSCodium** IDE native to Windows, check out
  [VSCode Remote Development using SSH](https://code.visualstudio.com/docs/remote/ssh) after following the steps on that **Linux** box.

  </details>

##### UNIX Toolchain

<details><summary>
You may already have all of them if you are a software developer
</summary>

- [bash](https://www.gnu.org/software/bash/) - You already have it

  It comes with a decent **Linux** or **macOS** box.

- [git](https://git-scm.com/) - You get it

  From your **Linux** distribution's package manager, e.g.

  ```bash
  sudo apt install git
  ```

  Or for your **macOS**, run following command and follow its prompts

  > Note:
  > It installs a full fledged compiler toolchain, maybe bloating to
  > you, yet better to have.

  ```bash
  xcode-select --install
  ```

</details>

##### Haskell Toolchain

<details><summary>
That is, GHC plus X
</summary>

- [GHC](https://haskell.org/ghc)
- [Cabal-install](https://www.haskell.org/cabal)

  You install'em all by any single **one**, or **all** of the following:

- [ghcup](https://www.haskell.org/ghcup)
- [Stack](https://haskellstack.org)
- [Nix](https://nixos.org/download.html)

  > Confused? You are not alone, just continue the
  > [struggling](https://www.reddit.com/r/haskell/comments/a69ww2/struggling_to_get_started_with_developing_with)
  > and keep questioning that many (yet none perfect) competing options with
  > the [Haskell community](https://www.haskell.org/community)

</details>

#### Choose a Modern IDE

Choose [VSCode](https://code.visualstudio.com)
or [VSCodium](https://vscodium.com), install it.

Note:

> **SublimeText**, **Emacs**, **Vim** and etc. should work equaly well after a
> [LSP](https://microsoft.github.io/language-server-protocol/overviews/lsp/overview)
> client component is created, contribution anticipated.

##### Install Language Extensions

See:

- [Managing Extensions in Visual Studio Code](https://code.visualstudio.com/docs/editor/extension-gallery)
- [Eclipse Open VSX project](https://open-vsx.org)
- [VSCodium - Extensions + Marketplace](https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions-marketplace)

Within the IDE's marketplace, search for _Edh_ and _Haskell_,
install relevant ones you'd like. Recommended extensions:

- [complyue.edh-vscode-syntax](https://marketplace.visualstudio.com/items?itemName=complyue.edh-vscode-syntax)
- [complyue.edh-vscode-formatter](https://marketplace.visualstudio.com/items?itemName=complyue.edh-vscode-formatter)
- [complyue.edh-vscode-pack](https://marketplace.visualstudio.com/items?itemName=complyue.edh-vscode-pack)
- [complyue.edh-vscode-lsc](https://marketplace.visualstudio.com/items?itemName=complyue.edh-vscode-lsc)
- [complyue.haskit-vscode](https://marketplace.visualstudio.com/items?itemName=complyue.haskit-vscode)

- [justusadam.language-haskell](https://marketplace.visualstudio.com/items?itemName=justusadam.language-haskell)
- [haskell.haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell)

##### Optional: Use a more Edh/Haskell friendly Color Theme

Press **F1** to bring out **Command Palette**, keyin _theme_ and choose
**Preferences: Color Theme**, then select `Đ (Edh) - Calm Warm` or any other
you'd like.

#### Install EPM

```bash
curl -o ~/.local/bin/epm -L https://github.com/e-wrks/epm/raw/latest/epm

chmod a+x ~/.local/bin/epm
```

<details><summary>
Check it installed correctly
</summary>

```console
$ epm --help
epm 0.2.7 >> Edh Package Manager <<

USAGE:
    epm [FLAGS] <SUBCOMMAND>

FLAGS:
    -v, --verbose      Enable verbose output
    -h, --help         Prints help information
    -V, --version      Prints version information
    -B, --base <URL>   URL prefix for upstream package repositories
                         default:  https://github.com/e-wrks
                         environment variable EPM_REPO_BASE overrides above

SUBCOMMANDS:
    init               Initialize current working directory as an EPM home
    install     | i    Install new, or change branches of existing packages
    list        | l    List homes and packages
    update | up | u    Pull upstream changes of packages from tracked branches
    with        | w    Run command within the directory of a package
    run | exec  | x    Run command with all effective EPM home's bin on $PATH
    rm                 Remove specified package(s) from nearest EPM home
```

</details>

#### Initialize a Workspace

```bash
mkdir ~/workspace
cd ~/workspace

epm init \
  -B https://github.com/e-wrks \
  edh nedh els hasdim haskit \
  -B http://github.com/complyue \
  sedh

cd ~/workspace/edh-universe

# build & install all Đ (Edh) interpreters from those packages, including the
# essential *Edh Language Server* (els) for IntelliSense
stack update
stack install

# do HLS a favor
stack install implicit-hie
epm x gen-hie > hie.yaml

```

#### Clone and Open the Tour Repository

```bash
cd ~/workspace
git clone https://github.com/e-wrks/tour

# or perform the open from IDE's GUI
code tour

```

#### Optional: Open the Tour and All Library Packages

```bash
cd ~/workspace

# or perform the open from IDE's GUI
code tour edh-universe/e-wrks/* edh-universe/complyue/*

```

#### Begin the Tour

Open `tour/welcome.edh` and start from there.

## Contributing

There are rough edges both within this Tour and the _IntelliSense_ provided by
the [Edh Language Server](https://github.com/e-wrks/els), contributions from
major improvements to minor typo fixes are all welcome and appreciated.
