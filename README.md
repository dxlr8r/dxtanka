# dxtanka

A powerful tanka init without environments.

# Usage

Use tanka as normal, except you have no built in environments. Environments are replaced with tla argument config and patch from your own enviroments hierarchy or inline from the command line.

- config allows you to apply your own config/overwrites: `--tla-code config="{name: 'mytanka'}"`
- patch allows you to patch easily patch the manifest, for example to show all fields from manifest: `--tla-code patch='function(_,l,m) l.dx.obj.showFields(m)'`
