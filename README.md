# Introduction

From [Pandoc - Pandoc User’s Guide](https://pandoc.org/MANUAL.html#option--data-dir),

`--data-dir=`*DIRECTORY*

:   Specify the user data directory to search for pandoc data files.
    If this option is not specified, the default user data directory
    will be used.  On \*nix and macOS systems this will be the `pandoc`
    subdirectory of the XDG data directory (by default,
    `$HOME/.local/share`, overridable by setting the `XDG_DATA_HOME`
    environment variable).  If that directory does not exist and
    `$HOME/.pandoc` exists, it will be used (for backwards compatibility).
    On Windows the default user data directory is
    `C:\Users\USERNAME\AppData\Roaming\pandoc`.
    You can find the default user data directory on your system by
    looking at the output of `pandoc --version`.
    Data files placed in this directory (for example, `reference.odt`,
    `reference.docx`, `epub.css`, `templates`) will override
    pandoc's normal defaults.

# Install

```bash
mkdir -p "$HOME/.local/share"
cd "$HOME/.local/share"
git clone git@github.com:ickc/pandoc-datadir.git pandoc
cd pandoc
make install
```

# Notes

`apa-6th-edition-custom.csl` is modified from `apa-6th-edition.csl` to change the sort orders, etc. See `difft csl/apa-6th-edition.csl csl/apa-6th-edition-custom.csl` for the differences.

This has to be manually updated if `apa-6th-edition.csl` is updated upstream.
