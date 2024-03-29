# [tsrc · PyPI](https://pypi.org/project/tsrc/)

Have to create a separate git repo with just one file in it according to [FAQ - tsrc documentation](https://dmerejkowsky.github.io/tsrc/faq/).

## `manifest.yml`

```
repos:
  - url: git@example.com/foo.git
    dest: foo

 -  url: git@example.com/bar.git
    dest: bar


groups:

  default:
    repos: [git@example.com/bar.git]
    includes: [test_group]

  test_group:
    repos: [git@example.com/foo.git]

```
## Init
Init in any folder as workspace, all repos are inside it.
```
tsrc init git@git.local/manifest.git
```
## Sync
Sync all repositories.
```
tsrc sync
```

Sync specific group repositories.
```
tsrc sync --group group_name
```
## foreach
```
tsrc foreach -- command --opt1 arg1
```

This way, unlike above, could include $() executions inside the single quotes in the repo's perspective in Shell.
```
tsrc foreach -c 'command --opt1 arg1'
```

## Reference
- [tsrc — Handling multiple git repositories without losing your HEAD - DEV Community](https://dev.to/tanker/tsrc---handling-multiple-git-repositories-at-scale--eg3)
- [Basic usage - tsrc documentation](https://dmerejkowsky.github.io/tsrc/guide/basics/)
- [Configuration files formats - tsrc documentation](https://dmerejkowsky.github.io/tsrc/ref/formats/)
- [Command line usage - tsrc documentation](https://dmerejkowsky.github.io/tsrc/ref/cli/)
- GitHub: [dmerejkowsky/tsrc: Manage groups of git repositories](https://github.com/dmerejkowsky/tsrc)