# Where do the files go?

Each file here is symlinked to `$HOME/.config/wal/templates`. Each time `wal` is run, new templates appear with the correct color values in `$HOME/.cache/wal/`.


In this table, each file on the left represents an **output** template located in `$HOME/.cache/wal/`. The destination on the right represents where the cached file should be
symlinked to.

If the destination is `N/A`, it means the program in question is pointing *directly* at the template in `.cache` and the cached file doesn't need to be symlinked elsewhere

| file                  | destination                                             |
|-----------------------|---------------------------------------------------------|
| `alacrittycolors.yml` | N/A                                                     |
| `bashtop_pywal.theme` | `$HOME/.config/bashtop/user_themes/bashtop_pywal.theme` |
| `cava_config`         | `$HOME/.config/cava/config`                             |
| `cordless.go`         | `N/A`                                                   |
| `custom-rofi.rasi`    | `$HOME/.config/rofi/config`                             |
| `dunstrc`             | `$HOME/.config/dunst/dunstrc`                           |
| `edex.json`           | `$HOME/.config/eDex-UI/themes/wal.json`                 |
| `flameshot.conf`      | `$HOME/.config/flameshot/flameshot.conf`                |
| `glava_*.glsl`        | `$HOME/.config/glava/*.glsl`                            |
| `matplotlibrc`        | `$HOME/.config/matplotlib/matplotlibrc`                 |
| `wal_rgb_colors`      | `N/A`                                                   |
| `xmenu-config.h`      | `$HOME/Programsx/xmenu/config.h`                        |
| `zathurarc`           | `$HOME/.config/zathura/zathurarc`                       |
| `plantuml.puml`       | `N/A`                                                   |

