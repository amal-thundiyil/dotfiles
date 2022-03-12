# My Dotfiles
Your dotfiles are how you personalize your system. These are mine.

## Installing

You will need `git` and GNU `stow`

Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/amal-thundiyil/dotfiles.git ~/dotfiles
```

Run `stow` to symlink everything or just select what you want

```bash
stow . # obeys .stow-local-ignore
```

```bash
stow */ # Everything (the '/' ignores the README)
```

```bash
stow bash # Just my bash config
```


```bash
stow -D . # clean up symbolic links
```
