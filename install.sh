Last login: Sun Sep 15 21:02:00 on console
Welcome to Portable Profile
Portable Profile imported v17 (7/5/24, 12:23 PM)
treysmith@cia-gov-2 ~ % https://github.com/projectzerodays/vengence
zsh: no such file or directory: https://github.com/projectzerodays/vengence
treysmith@cia-gov-2 ~ % git clonehttps://github.com/projectzerodays/vengence
git: 'clonehttps://github.com/projectzerodays/vengence' is not a git command. See 'git --help'.
treysmith@cia-gov-2 ~ % git clone https://github.com/projectzerodays/vengence
Cloning into 'vengence'...
fatal: unable to access 'https://github.com/projectzerodays/vengence/': Could not resolve host: github.com
treysmith@cia-gov-2 ~ % git clone https://github.com/projectzerodays/vengence
Cloning into 'vengence'...
fatal: unable to access 'https://github.com/projectzerodays/vengence/': Could not resolve host: github.com
treysmith@cia-gov-2 ~ % git clone https://github.com/projectzerodays/vengence
Cloning into 'vengence'...
remote: Enumerating objects: 118, done.
remote: Counting objects: 100% (118/118), done.
remote: Compressing objects: 100% (113/113), done.
remote: Total 118 (delta 67), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (118/118), 53.96 KiB | 323.00 KiB/s, done.
Resolving deltas: 100% (67/67), done.
treysmith@cia-gov-2 ~ % cd vengence 
treysmith@cia-gov-2 vengence % ls
total 120
drwxr-xr-x  10 treysmith  staff    320 Sep 15 21:04 .
drwxr-x---+ 54 treysmith  staff   1728 Sep 15 21:04 ..
 0: group:everyone deny delete
drwxr-xr-x  12 treysmith  staff    384 Sep 15 21:04 .git
drwxr-xr-x   3 treysmith  staff     96 Sep 15 21:04 .github
-rw-r--r--   1 treysmith  staff  35149 Sep 15 21:04 LICENSE
-rw-r--r--   1 treysmith  staff   3099 Sep 15 21:04 README.md
-rw-r--r--   1 treysmith  staff  11537 Sep 15 21:04 Vengence.py
drwxr-xr-x   3 treysmith  staff     96 Sep 15 21:04 docs
-rw-r--r--   1 treysmith  staff    178 Sep 15 21:04 install.sh
-rw-r--r--   1 treysmith  staff    227 Sep 15 21:04 mkdocs.yml
treysmith@cia-gov-2 vengence % python3 Vengence.py 
Traceback (most recent call last):
  File "/Users/treysmith/vengence/Vengence.py", line 18, in <module>
    from tkinter import Tk, Label, Entry, Button, messagebox
  File "/opt/homebrew/Cellar/python@3.12/3.12.6/Frameworks/Python.framework/Versions/3.12/lib/python3.12/tkinter/__init__.py", line 38, in <module>
    import _tkinter # If this fails your Python may not be configured for Tk
    ^^^^^^^^^^^^^^^
ModuleNotFoundError: No module named '_tkinter'
treysmith@cia-gov-2 vengence % brew install python-tk
==> Downloading https://formulae.brew.sh/api/formula.jws.json
################################################################################################################################################################################## 100.0%
==> Downloading https://formulae.brew.sh/api/cask.jws.json
################################################################################################################################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python-tk/3.12/manifests/3.12.6
################################################################################################################################################################################## 100.0%
==> Fetching python-tk@3.12
==> Downloading https://ghcr.io/v2/homebrew/core/python-tk/3.12/blobs/sha256:4dbbbba395a9f95aee1dd7a5340a740b05a5f167970000e009be65f34917cc04
################################################################################################################################################################################## 100.0%
==> Pouring python-tk@3.12--3.12.6.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/python-tk@3.12/3.12.6: 6 files, 157.8KB
==> Running `brew cleanup python-tk@3.12`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
treysmith@cia-gov-2 vengence % python3 Vengence.py   

    Usage: python Vengence.py [OPTIONS]

    Options:
      --help                Show this help message and exit
      --generate-key        Generate encryption key
      --setup-db            Setup database and add admin user
      --login               Show login GUI
      --create-config       Create configuration files
      --add-path            Add tool directory to system PATH
      --remove-path         Remove tool directory from system PATH
      --download-tools      Download required tools
      --run-tools           Run Vengence
      --send-report         Send audit report via email and SMS
      --create-wiki         Create wiki and GitHub repository files
      --clean-up            Remove all created files and clean up traces
    
treysmith@cia-gov-2 vengence % python3 Vengence.py --generate-key
Traceback (most recent call last):
  File "/Users/treysmith/vengence/Vengence.py", line 412, in <module>
    main()
  File "/Users/treysmith/vengence/Vengence.py", line 386, in main
    generate_key()
  File "/Users/treysmith/vengence/Vengence.py", line 32, in generate_key
    with open(SECRET_KEY_PATH, "wb") as key_file:
         ^^^^^^^^^^^^^^^^^^^^^^^^^^^
FileNotFoundError: [Errno 2] No such file or directory: '/Users/treysmith/.config/audit_tool/secret.key'
treysmith@cia-gov-2 vengence % nano Vengence.py 
treysmith@cia-gov-2 vengence % ls
total 120
drwxr-xr-x  10 treysmith  staff    320 Sep 15 21:04 .
drwxr-x---+ 54 treysmith  staff   1728 Sep 15 21:04 ..
 0: group:everyone deny delete
drwxr-xr-x  12 treysmith  staff    384 Sep 15 21:04 .git
drwxr-xr-x   3 treysmith  staff     96 Sep 15 21:04 .github
-rw-r--r--   1 treysmith  staff  35149 Sep 15 21:04 LICENSE
-rw-r--r--   1 treysmith  staff   3099 Sep 15 21:04 README.md
-rw-r--r--   1 treysmith  staff  11537 Sep 15 21:04 Vengence.py
drwxr-xr-x   3 treysmith  staff     96 Sep 15 21:04 docs
-rw-r--r--   1 treysmith  staff    178 Sep 15 21:04 install.sh
-rw-r--r--   1 treysmith  staff    227 Sep 15 21:04 mkdocs.yml
treysmith@cia-gov-2 vengence % nano install.sh 
treysmith@cia-gov-2 vengence % sh install.sh  
Unsupported OS. Exiting...
treysmith@cia-gov-2 vengence % bash install.sh 
Unsupported OS. Exiting...
treysmith@cia-gov-2 vengence % ls
total 128
drwxr-xr-x  11 treysmith  staff    352 Sep 15 21:12 .
drwxr-x---+ 54 treysmith  staff   1728 Sep 15 21:04 ..
 0: group:everyone deny delete
drwxr-xr-x  12 treysmith  staff    384 Sep 15 21:04 .git
drwxr-xr-x   3 treysmith  staff     96 Sep 15 21:04 .github
-rw-r--r--   1 treysmith  staff  35149 Sep 15 21:04 LICENSE
-rw-r--r--   1 treysmith  staff   3099 Sep 15 21:04 README.md
-rw-r--r--   1 treysmith  staff  11537 Sep 15 21:04 Vengence.py
drwxr-xr-x   3 treysmith  staff     96 Sep 15 21:04 docs
-rw-r--r--   1 treysmith  staff    844 Sep 15 21:17 install.sh
-rw-r--r--   1 treysmith  staff    227 Sep 15 21:04 mkdocs.yml
-rw-r--r--@  1 treysmith  staff    142 Sep 15 21:12 requirements.txt
treysmith@cia-gov-2 vengence % cat install.sh 
#!/bin/bash

# Determine the OS
if [[ -f /etc/os-release ]]; then
    OS=$(grep ^ID= /etc/os-release | cut -d'=' -f2)
    VERSION=$(grep ^VERSION_ID= /etc/os-release | cut -d'=' -f2)
fi

# Install dependencies based on the OS
case "$OS" in
    "ubuntu"|"debian")
        sudo apt-get update -y
        sudo apt-get install -y python3 python3-pip python3-tk
        ;;
    "macos"|"darwin")
        brew install -y python3 python3-pip python3-tk
        ;;
    *)
        echo "Unsupported OS. Exiting..."
        exit 1
        ;;
esac

# Clone the Vengence repository
git clone https://github.com/projectzerodays/Vengence.git

# Change to the Vengence directory
cd Vengence

# Install Dependencies
pip install -r requirements.txt

# Make the Vengence.py script executable
chmod +x Vengence.py

# Run the Vengence.py script
python3 Vengence.py
treysmith@cia-gov-2 vengence % nano install.sh
treysmith@cia-gov-2 vengence % bash install.sh
Updating Homebrew...
==> Updating Homebrew...
Already up-to-date.
Done.
Unsupported OS. Exiting...
treysmith@cia-gov-2 vengence % brew reinstall git
==> Downloading https://ghcr.io/v2/homebrew/core/git/manifests/2.46.1
################################################################################################################################################################################## 100.0%
==> Fetching git
==> Downloading https://ghcr.io/v2/homebrew/core/git/blobs/sha256:70ccbdc52815dfb31ebd0dda1184b223cda10f3ab81ea9292d2867fae36e575b
################################################################################################################################################################################## 100.0%
==> Reinstalling git 
==> Pouring git--2.46.1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/git/2.46.1: 1,679 files, 54.3MB
==> Running `brew cleanup git`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
Removing: /Users/treysmith/Library/Caches/Homebrew/git_bottle_manifest--2.46.0... (17KB)
Removing: /Users/treysmith/Library/Caches/Homebrew/git--2.46.0... (18.3MB)
==> Upgrading 1 dependent of upgraded formula:
Disable this behaviour by setting HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
git-svn 2.46.0 -> 2.46.1
==> Downloading https://ghcr.io/v2/homebrew/core/git-svn/manifests/2.46.1
################################################################################################################################################################################## 100.0%
==> Checking for dependents of upgraded formulae...
==> No broken dependents found!
treysmith@cia-gov-2 vengence % bash install.sh   
Updating Homebrew...
==> Updating Homebrew...
Already up-to-date.
Done.
Unsupported OS. Exiting...
treysmith@cia-gov-2 vengence % uname -a
Darwin cia-gov-2.local 22.1.0 Darwin Kernel Version 22.1.0: Sun Oct  9 20:14:30 PDT 2022; root:xnu-8792.41.9~2/RELEASE_ARM64_T8103 arm64
treysmith@cia-gov-2 vengence % nano install.sh   
treysmith@cia-gov-2 vengence % bash install.sh
Updating Homebrew...
==> Updating Homebrew...
Already up-to-date.
Done.
Unsupported OS. Exiting...
treysmith@cia-gov-2 vengence % nano install.sh
treysmith@cia-gov-2 vengence % bash install.sh
Updating Homebrew...
==> Updating Homebrew...
Already up-to-date.
Done.
Mac OS detected.
Usage: brew install [options] formula|cask [...]

Install a formula or cask. Additional options specific to a formula may be
appended to the command.

Unless HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK is set, brew upgrade or brew
reinstall will be run for outdated dependents and dependents with broken
linkage, respectively.

Unless HOMEBREW_NO_INSTALL_CLEANUP is set, brew cleanup will then be run for
the installed formulae or, every 30 days, for all formulae.

Unless HOMEBREW_NO_INSTALL_UPGRADE is set, brew install formula will
upgrade formula if it is already installed but outdated.

  -d, --debug                      If brewing fails, open an interactive
                                   debugging session with access to IRB or a
                                   shell inside the temporary build directory.
      --display-times              Print install times for each package at the
                                   end of the run.
  -f, --force                      Install formulae without checking for
                                   previously installed keg-only or non-migrated
                                   versions. When installing casks, overwrite
                                   existing files (binaries and symlinks are
                                   excluded, unless originally from the same
                                   cask).
  -v, --verbose                    Print the verification and post-install
                                   steps.
  -n, --dry-run                    Show what would be installed, but do not
                                   actually install anything.
      --formula, --formulae        Treat all named arguments as formulae.
      --ignore-dependencies        An unsupported Homebrew development option to
                                   skip installing any dependencies of any kind.
                                   If the dependencies are not already present,
                                   the formula will have issues. If you're not
                                   developing Homebrew, consider adjusting your
                                   PATH rather than using this option.
      --only-dependencies          Install the dependencies with specified
                                   options but do not install the formula
                                   itself.
      --cc                         Attempt to compile using the specified
                                   compiler, which should be the name of the
                                   compiler's executable, e.g. gcc-9 for GCC
                                   9. In order to use LLVM's clang, specify
                                   llvm_clang. To use the Apple-provided
                                   clang, specify clang. This option will only
                                   accept compilers that are provided by
                                   Homebrew or bundled with macOS. Please do not
                                   file issues if you encounter errors while
                                   using this option.
  -s, --build-from-source          Compile formula from source even if a
                                   bottle is provided. Dependencies will still
                                   be installed from bottles if they are
                                   available.
      --force-bottle               Install from a bottle if it exists for the
                                   current or newest version of macOS, even if
                                   it would not normally be used for
                                   installation.
      --include-test               Install testing dependencies required to run
                                   brew test formula.
      --HEAD                       If formula defines it, install the HEAD
                                   version, aka. main, trunk, unstable, master.
      --fetch-HEAD                 Fetch the upstream repository to detect if
                                   the HEAD installation of the formula is
                                   outdated. Otherwise, the repository's HEAD
                                   will only be checked for updates when a new
                                   stable or development version has been
                                   released.
      --keep-tmp                   Retain the temporary files created during
                                   installation.
      --debug-symbols              Generate debug symbols on build. Source will
                                   be retained in a cache directory.
      --build-bottle               Prepare the formula for eventual bottling
                                   during installation, skipping any
                                   post-install steps.
      --skip-post-install          Install but skip any post-install steps.
      --bottle-arch                Optimise bottles for the specified
                                   architecture rather than the oldest
                                   architecture supported by the version of
                                   macOS the bottles are built on.
  -i, --interactive                Download and patch formula, then open a
                                   shell. This allows the user to run
                                   ./configure --help and otherwise determine
                                   how to turn the software package into a
                                   Homebrew package.
  -g, --git                        Create a Git repository, useful for creating
                                   patches to the software.
      --overwrite                  Delete files that already exist in the prefix
                                   while linking.
      --cask, --casks              Treat all named arguments as casks.
      --[no-]binaries              Disable/enable linking of helper executables
                                   (default: enabled).
      --require-sha                Require all casks to have a checksum.
      --[no-]quarantine            Disable/enable quarantining of downloads
                                   (default: enabled).
      --adopt                      Adopt existing artifacts in the destination
                                   that are identical to those being installed.
                                   Cannot be combined with --force.
      --skip-cask-deps             Skip installing cask dependencies.
      --zap                        For use with brew reinstall --cask. Remove
                                   all files associated with a cask. May remove
                                   files which are shared between applications.
      --appdir                     Target location for Applications (default:
                                   /Applications).
      --keyboard-layoutdir         Target location for Keyboard Layouts
                                   (default: /Library/Keyboard Layouts).
      --colorpickerdir             Target location for Color Pickers (default:
                                   ~/Library/ColorPickers).
      --prefpanedir                Target location for Preference Panes
                                   (default: ~/Library/PreferencePanes).
      --qlplugindir                Target location for Quick Look Plugins
                                   (default: ~/Library/QuickLook).
      --mdimporterdir              Target location for Spotlight Plugins
                                   (default: ~/Library/Spotlight).
      --dictionarydir              Target location for Dictionaries (default:
                                   ~/Library/Dictionaries).
      --fontdir                    Target location for Fonts (default:
                                   ~/Library/Fonts).
      --servicedir                 Target location for Services (default:
                                   ~/Library/Services).
      --input-methoddir            Target location for Input Methods (default:
                                   ~/Library/Input Methods).
      --internet-plugindir         Target location for Internet Plugins
                                   (default: ~/Library/Internet Plug-Ins).
      --audio-unit-plugindir       Target location for Audio Unit Plugins
                                   (default:
                                   ~/Library/Audio/Plug-Ins/Components).
      --vst-plugindir              Target location for VST Plugins (default:
                                   ~/Library/Audio/Plug-Ins/VST).
      --vst3-plugindir             Target location for VST3 Plugins (default:
                                   ~/Library/Audio/Plug-Ins/VST3).
      --screen-saverdir            Target location for Screen Savers (default:
                                   ~/Library/Screen Savers).
      --language                   Comma-separated list of language codes to
                                   prefer for cask installation. The first
                                   matching language is used, otherwise it
                                   reverts to the cask's default language. The
                                   default value is the language of your system.
  -q, --quiet                      Make some output more quiet.
  -h, --help                       Show this message.
Error: invalid option: -y
Cloning into 'Vengence'...
remote: Enumerating objects: 118, done.
remote: Counting objects: 100% (118/118), done.
remote: Compressing objects: 100% (113/113), done.
remote: Total 118 (delta 67), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (118/118), 53.96 KiB | 1.46 MiB/s, done.
Resolving deltas: 100% (67/67), done.
ERROR: Could not open requirements file: [Errno 2] No such file or directory: 'requirements.txt'

    Usage: python Vengence.py [OPTIONS]

    Options:
      --help                Show this help message and exit
      --generate-key        Generate encryption key
      --setup-db            Setup database and add admin user
      --login               Show login GUI
      --create-config       Create configuration files
      --add-path            Add tool directory to system PATH
      --remove-path         Remove tool directory from system PATH
      --download-tools      Download required tools
      --run-tools           Run Vengence
      --send-report         Send audit report via email and SMS
      --create-wiki         Create wiki and GitHub repository files
      --clean-up            Remove all created files and clean up traces
    
treysmith@cia-gov-2 vengence % nano install.sh
treysmith@cia-gov-2 vengence % nano install.sh

  GNU nano 8.2                                                                           install.sh                                                                                      
#!/bin/bash

# Check if brew is installed
if ! command -v brew &> /dev/null
then
    # Install brew if it's not installed
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Done."
fi

# Update brew if it's installed
if command -v brew &> /dev/null
then
    echo "Updating Homebrew..."
    brew update
    echo "Done."
fi

# Determine the OS using uname and grep
OS=$(uname | grep -oE "Darwin" | wc -l)
if [ $OS -eq 1 ]; then
    OS="darwin"
elif [ $(uname | grep -oE "Linux" | wc -l) -eq 1 ]; then
    OS="linux"
else
    echo "Unsupported OS. Exiting..."
    exit 1
fi

# Install dependencies based on the OS
case "$OS" in
    "darwin")
        echo "Mac OS detected."
        brew install python3 python3-pip python3-tk
        ;;
    "linux")
        echo "Linux OS detected."
        sudo apt-get update -y
        sudo apt-get install -y python3 python3-pip python3-tk
        ;;
    *)
        echo "Unsupported OS. Exiting..."
        exit 1
        ;;
esac

# Clone the Vengence repository
git clone https://github.com/projectzerodays/Vengence.git

# Change to the Vengence directory
cd Vengence

# Install Dependencies
pip install -r requirements.txt
                                                                                    [ Read 61 lines ]
^G Help         ^O Write Out    ^F Where Is     ^K Cut          ^T Execute      ^C Location     M-U Undo        M-A Set Mark    M-] To Bracket  M-B Previous    ◂ Back
^X Exit         ^R Read File    ^\ Replace      ^U Paste        ^J Justify      ^/ Go To Line   M-E Redo        M-6 Copy        ^B Where Was    M-F Next        ▸ Forward
