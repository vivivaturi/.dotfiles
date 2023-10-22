# .dotfiles
<<<<<<< HEAD
My current configs
=======

My current configs for my workflow
>>>>>>> fd7dac3 (Updating config)

# Requirements

# Cool commands I should remember

```bash
FILE=$(fzf) && cat "$FILE" | fzf
```

This command will start fuzzy finding for a file, pass the output of the file to the fuzzy finder to quickly find lines

```bash
tldr --list | fzf --preview "tldr {1} --color=always" | xargs tldr
```

This command will search the tldr pages and show a preview, and then output the tldr page when selected
