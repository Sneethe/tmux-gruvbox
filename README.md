<div align="center">
    <img src="./docs/assets/img/logo-v1@0.5x.png" width="200px">
    <h1>Gruvbox theme for Tmux</h1>
</div>

Theme with 'retro groove' flavor for [Tmux][github-tmux], based on Pavel Pertsev's [gruvbox colorscheme][github-grovbox] and inspired by work of [Gordon Chiam](https://gist.github.com/gchiam/4606522f513cc64b79ce). Subthemes switching inspired by [tmux-color-solarized][tmux-color-solarized].

<!--
  Using HTML table instead default markdown tables as provide it provide
  much better code readability especially for long columns.
-->

<div align="center">
    <a href="./docs/assets/img/gruvbox-dark-and-light theme structure.png" title="Grovbox dark and light themes for Tmux">
        <img src="./docs/assets/img/gruvbox-dark-and-light theme structure@0.5x.png"
          title="Grovbox dark and light themes for Tmux"
          width="100%"
          height="auto"
          style="max-width: 800px; text-align: center; border-radius: 12px; overflow:hidden;"  />
    </a>
</div>

> Screenshot made from macOS [alacritty][github-alacritty] terminal with xterm-256color and [Hack Nerd Font Regular][github-nerd-fonts].<br/>
> Backgrounds by [Aleksandar Pasaric][pexcel-1] and [Vishnu Murali][pexcel-2].

## Installation

### Install manually

The simplest way is just:

> HINT: Always make a backup of your config files before any action.

```bash
cat tmux-gruvbox-dark.conf >> ~/.tmux.conf
```

### Install through [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf` and select desired theme.

```bash
set -g @plugin 'egel/tmux-gruvbox'
set -g @tmux-gruvbox 'dark' # or 'light'
```

Hit `prefix + I` to fetch the plugin and source it. Your Tmux should be updated with the theme at this point.

## License

GPLv3 - Maciej Sypień

[github-tmux]: https://github.com/tmux/tmux
[github-grovbox]: https://github.com/morhetz/gruvbox
[github-hack]: https://github.com/chrissimpkins/Hack
[github-nerd-fonts]: https://github.com/ryanoasis/nerd-fonts
[github-alacritty]: https://github.com/alacritty/alacritty
[tmux-color-solarized]: https://github.com/seebi/tmux-colors-solarized
[pexcel-1]: https://www.pexels.com/photo/urban-photo-of-an-alley-2411688/
[pexcel-2]: https://www.pexels.com/photo/lights-hanging-above-the-alley-in-a-city-at-night-27044195/
