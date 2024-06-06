# A Tour of Đ (Edh)

Greetings! TL;DR - Just click:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/complyue/tour/blob/master/welcome.edh)

- [What's Đ (Edh)](#whats-đ-edh)
  - [Đ Slogan](#đ-slogan)
  - [Tours are Đ Documentation](#tours-are-đ-documentation)
- [About this Tour](#about-this-tour)
- [Taking the Tour](#taking-the-tour)
  - [Fast and Easy Way - Gitpod workspace](#fast-and-easy-way---gitpod-workspace)
  - [Seasoned and UX Rich Way - local IDE](#seasoned-and-ux-rich-way---local-ide)
    - [Prerequisites](#prerequisites)
      - [Operation System](#operation-system)
      - [UNIX Toolchain](#unix-toolchain)
      - [Haskell Toolchain](#haskell-toolchain)
    - [Choose a Modern IDE](#choose-a-modern-ide)
      - [Install Language Extensions](#install-language-extensions)
      - [Optional: Use a more Đ/Haskell friendly Color Theme](#optional-use-a-more-đhaskell-friendly-color-theme)
    - [Install EPM](#install-epm)
    - [Initialize a Workspace](#initialize-a-workspace)
    - [Clone and Open the Tour Repository](#clone-and-open-the-tour-repository)
    - [Optional: Open the Tour and All Library Packages](#optional-open-the-tour-and-all-library-packages)
    - [Begin the Tour](#begin-the-tour)
- [Contributing](#contributing)

## What's Đ (Edh)

### Đ Slogan

> Reactive Events Integration with Dynamic Effect Tracking

**Đ (Edh)** is an _Object-Oriented_, _Dynamic Typing_, _Scripting_ programming language, meant to serve as a user interface language for human-machine interactions, as well as the surface langauge for interoperations between distributed processes. Interoperations between software components within a local process are better supported as well.

Source code in **Đ (Edh)** - the _surface language_, run _interpreted_ atop certain runtime environment programmed in another, more versatile programming language, i.e. the _host langauge_, currently being [GHC](https://haskell.org/ghc)/[Haskell](https://haskell.org). [Julia](https://julialang.org), [Go](https://golang.org), [Python](https://python.org), and [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) are hopefully to be supported in the future.

**Ergonomics** (i.e. _Human Performance_) comes 1st in **Đ (Edh)**'s language design, raw machine performance as well as a prosperous ecosystem and etc. are less a goal, they are offloaded to efforts around the _host_ programming language and/or runtime.

Free of side-effects is not strictly enforced, but you can start effect tracking with **Dynamic Scoped Effects** in **Đ (Edh)**, to gradually improve modularity & maintainability of the software components (libraries, frameworks, applications) at large scale.

Đ seeks to be a Business Integration language, as well as a User Interface language, it is born for two main goals:

- To upscale business-oriented integration of distributed, heterogeneous software components

  > State of art architecture requires design of various (restful as you've likely heard of) communication specs, after expensive modeling of the business, then infrastructure and software deployments continuously refactored into distributed spaghetti code.

  > **Đ (Edh)** stands for **Event Distributing & Hosting**, an _event_ is a consistent (but not necessarily atomic) piece of data, encapsulating the information of something just happend in one place, and sent to another place for its consequences to be realized there. _Event_ is conceptually coherent to **Algebraic Data Type** in _type theory_ as well as a functional programming language, but it's not practical to be a mechanical utility in a procedural langauge like Đ. So _event_ stays conceptual in Đ the language.

  > The _event_ abstraction should decouple much of the complexity, and degrade much part of the problem, to be solvable by _Citizen Developers_, especially with the aid of modern software engineering toolings.

- To be directly usable by users of all roles in the organization, especially stake-holders of the business

  > Most people have been accustomed to GUI (Graphical User Interface) for interaction with a computer system, while visual languages still lack sufficient expressiveness in many tasks for global efficiency. Text based communication, governed by grammar (syntax, semantics, pragmatics), can be way more productive and constructive in such cases, and fortunately modern IDEs have filled much of the gap between GUI and TUI (Terminal User Interface), especially when we put Code Lens into good use:

  > > https://code.visualstudio.com/blogs/2017/02/12/code-lens-roundup

  > Inspired by Jupyter code cells:

  > > https://donjayamanne.github.io/pythonVSCodeDocs/docs/jupyter_getting-started/#Running-a-cell-in-a-kernel

  > Each Đ code cell (a piece of code) is individually executable by a single mouse click, on a _Code Lens_ above it reads [Run Cell] (note the click/execution can be repeated).

  > This is much closer to a GUI, yet with more flexible variance & context. The greatest advantage of this tactic is, a user can make slight changes to the code in a template cell, then execute it to achieve tasks in need of a complex phrasing of scription. Traditional TUI requires the user to type out a complete sentence for the job, which needs greatly internalized knowledge about what/how he/she is doing, as well as mental effort nevertheless; while traditional GUI might be just inable to provide the flexibility needed due to level of complexity of the task.

  > So with Đ and its tooling, we can obtain more advantages at the same time, from both worlds: expressiveness from textual languages as well as intuition from visual languages. And Đ is even more _dynamic_ and _interactive_ than Python, also it facilitates effectful functionality composition in a novel way (i.e. _Dynamic Scoped Effects_). From REPLs atop stdio, to WebREPLs, to the extensive IDE features, it's fine-tuned for frictionless developer experience, where anyone could be the developer, and i.e. _Citizen Developer_.

### Tours are Đ Documentation

Instead of traditional medium forms of documentation (paperback books/manuals, digital twins of them like PDFs and other eBook formats, or online HTML pages, etc.), Đ software tends to be documented by interactive snippets, usually hierarchical blocks of them, all well commented, but essentially in Đ the language itself. Such materials are organized into `Tour`s so we call them, they can only be properly browsed by a developer IDE such as VSCode, with IntelliSense enabled. And community fixups by any reader are highly encouraged, by submitting pull requests to the maintained repositories.

That said but it's not the same thing someone would call "Code as Documentation", implementation details with elaborate comments about design choices, guidance/caveat to further develop them, are of course the code of conduct in authoring Đ packages, but `Tour`s should be user/consumer facing Đ snippets demonstrating the usage of the implemented functionalities, aimmed to helping beginners to internalize sensible skills with hands-on experience of the package, as quick as possible.

It's ill-minded for a package author to expect his/her users to go over his/her struggle and even pains in making the final piece possible. They who find your piece useful to them should be thankful and admiring you in return, but any hardness in finding that fact themselves, may prevent such result from happening at all, by frightening them off earlier. So get your mind straight, write enlightening `Tour`s even that means more/harder effort than making the core implementation of your packages, helping your potentional users is helping yourself.

## About this Tour

This tour is an entry point (with briefs) to various standalone tours provided by many Đ packages of respective purpose, here is more like an explorative playground, or a self-guided walkthrough, rather than a typical tutorial with a linear narrative. You are not supposed to follow the text run in any particular order. Materials are organized in cyclic hierarchies, with the principle that shallower (wrt discoverability) contents should be more brief, and deeper contents to provide more elaborate explainations and examples of greater verbosity.

It is designed for reading efficiency & pleasure. We try not bore experienced readers with unnecessary details, while for readers unfamiliar with certain programming concepts, in elsewhere we craft elaborate explaination and more live examples of greater verbosity, then make those artifacts linked to briefs. The reader can use standard code navigation capability of the IDE to follow those links into greater details. Note ultimately all of these become hierarchies of materials with plenty interconnections.

Clever readers, even noob to some concept, can merely run relevant Code Lens and try comprehend the output result, good intuition is already enough at times. After all, code navigation is your freedom, go back and forth, any time, any where, for whatever reason, just remember you can right-mouse-click most highlighted code elements in any Đ file (with `bookmark`s even dedicated for this purpose), then select [Go To Definition] to navigate to elaborate definition (explaination) of it. The tooltip shown up when you hover the mouse cursor over it may already give some useful information.

Experiences in other programming languages, Python, JavaScript, Go, Haskell and etc. are good source of intuition to complete this tour faster, but never a necessarity.

And it is very expected for sophisticated developers to come back at times, in seeking inspirations from discussions regarding various topics reachable from here, we just have brief & links to many tours by various standalone packages maintained here, this is an open, public Github repository welcoming contributions.

The big mission be it evolves to a general learning resource as well as a framework, for advanced computer application practices, enabling massive open _Citizen Development_, but not without code, instead business languages (DSLs), textual and better supplemented with visuals, can be trivially developed and efficiently used in properly facilitated environments (IDEs).

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
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/complyue/tour/blob/master/welcome.edh)
to begin the tour.

### Seasoned and UX Rich Way - local IDE

The Đ tooling struggles for ergonomics in software development, it achieves so on the shoulders of modern IDEs, with optimized workflows to build, test, demonstrate, and run relevant software components.

The most preferable/testified IDE is [VSCode](https://code.visualstudio.com)
/ [VSCodium](https://vscodium.com), and 2nd best is [Gitpod](https://gitpod.io) (which is [Eclipse Theia](https://theia-ide.org) based). Other IDEs such as SublimeText, Emacs, Vim, are not supported by far, merely lacking a LSP client component to communicate with `els`, they are hopefully to be supported in the future.

[EPM](https://github.com/e-wrks/epm) is always under the hood, used to initialize (possibly cascaded for localized dependencies) EPM homes, Đ packages from public or private Git repositories, are installed into each EPM home, and updated as a whole.

An Đ package consists of multiple Đ script files under `edh_modules` subdir, and optionally:

- A tour for the package on its own right, typicaly under `edh_modules/<pkg-name>/tour` subdir
- A Haskell package, typically under `host.hs` subdir
- Some Python modules under `host.py` subdir
- Some JavaScript modules under `host.js` subdir
- More artifacts to support running Đ in different hosting environments

`epm` cli utility will organize all Haskell packages in an EPM home as both a [stack](https://haskellstack.org) project and a [cabal](https://www.haskell.org/cabal) project, under the `edh-universe` subdir, so it is suffice to build and install Haskell based Đ interpreters by simply running `stack install` or `cabal install` there, then the built interpreter programs can be used to run Đ modules and files.

Use `epm exec <prog>` or the shorthand `epm x <prog>` is a portable way to run Đ programs without installing them into system locations, it locates the nearest EPM home from the directory you run `epm`, and takes care of localized dependencies automatically.

The [Đ Language Server](https://github.com/e-wrks/els) `els` is such an Đ package per se, and needs to be built and installed such way for proper support of Đ software development from the IDE, including code navigation, which is crucial for the UX you'd take this tour.

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

For *HOWTO*s see:

- [Managing Extensions in Visual Studio Code](https://code.visualstudio.com/docs/editor/extension-gallery)
- [Eclipse Open VSX project](https://open-vsx.org)
- [VSCodium - Extensions + Marketplace](https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions-marketplace)

Easiest way is from the IDE's _Extensions_ view, search for `Edh` and `Haskell`, install relevant ones as you'd like. Recommendations:

- For Đ language support, install the extension pack:
  - [Đ Language Pack](https://marketplace.visualstudio.com/items?itemName=ComplYue.edh-vscode-pack)
- Or each extension individually (necessary for Eclipse Theia etc.):

  - [Đ Syntax & Snippets](https://marketplace.visualstudio.com/items?itemName=ComplYue.edh-vscode-syntax)
  - [Đ Code Formatter](https://marketplace.visualstudio.com/items?itemName=ComplYue.edh-vscode-formatter)
  - [Đ Language Server](https://marketplace.visualstudio.com/items?itemName=ComplYue.edh-vscode-lsc)

- For interactive Đ Code Lens:

  - [HaskIt Đ - Haskell Software, Fast Iterations](https://marketplace.visualstudio.com/items?itemName=ComplYue.haskit-vscode)

- For Haskell language support:
  - [Haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell)
  - [Haskell Syntax Highlighting](https://marketplace.visualstudio.com/items?itemName=justusadam.language-haskell)

##### Optional: Use a more Đ/Haskell friendly Color Theme

Standard color themes come with VSCode can NOT differentiate several types of syntactical elements in Đ (as well as Haskell) code, so the [Đ Syntax & Snippets](https://marketplace.visualstudio.com/items?itemName=ComplYue.edh-vscode-syntax) extension bundles a few color themes optimized.

Press **F1** to bring out **Command Palette**, keyin `theme` and choose [`Preferences: Color Theme`], then select [`Đ (Edh) - Calm Warm`] or any other you'd like.

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
epm 0.3.9 >> Edh Package Manager <<

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
  edh \
  -B http://github.com/complyue \
  nedh els hasdim haskit sedh

cd ~/workspace/edh-universe

# build & install all Đ (Edh) interpreters from those packages, including the
# essential *Edh Language Server* (els) for IntelliSense
stack update
stack install
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
code tour edh-universe

```

#### Begin the Tour

Open `tour/welcome.edh` and start from there.

## Contributing

There are rough edges within both this Tour and the _IntelliSense_ provided by
the [Edh Language Server](https://github.com/e-wrks/els)

If you ever met any incident when walking through this tour, please consult the [issue tracker](http://github.com/e-wrks/tour/issues?q=is%3Aissue) to see whether it is a known issue and has solutions or workarounds.

In case no existing one solves your problem, please file a new issue, that'll help later comers from meeting the same trouble.

Even difficulties in understanding count, let's figure out how to improve the experience for people from a similar background of you.

Consider opening a PR if you can, to add more information or details, correct conceptions or backgrounds, improve the wording / phrasing, link to your package's tour, or merely correct some typos, contributions are more than welcome!

https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request
