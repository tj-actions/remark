[![CI](https://github.com/tj-actions/remark/workflows/CI/badge.svg)](https://github.com/tj-actions/remark/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/remark/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/remark/actions?query=workflow%3A%22Update+release+version.%22) <a href="https://github.com/search?q=tj-actions+remark+path%3A.github%2Fworkflows+language%3AYAML&type=code" target="_blank" title="Public workflows that use this action."><img src="https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-git-master.endbug.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fremark%26badge%3Dtrue" alt="Public workflows that use this action."></a>

## remark

[Remark](https://github.com/remarkjs/remark) markdown processor

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run remark cli
        uses: tj-actions/remark@v1
```

## Table of Contents

*   [Inputs](#inputs)
*   [Features](#features)
*   [Credits](#credits)
*   [Report Bugs](#report-bugs)

## Inputs

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| token         |  `string`   |    `true`    | `${{ github.token }}` | [GITHUB_TOKEN](https://docs.github.com/en/free-pro-team@latest/actions/reference/authentication-in-a-workflow#using-the-github_token-in-a-workflow) <br /> or a repo scoped <br /> [Personal Access Token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token)              |
| plugins  |  `string` OR `string[]` | `false`  |  `remark-toc` |  List of [remark plugins](https://github.com/remarkjs/remark/blob/main/doc/plugins.md)  |
| files   |   `string` OR `string[]` | `false`  | `README.md` | List of input markdown files    |
| args    |  `string`  |  `false`  |  `'--use toc --output'` |  [remark cli](https://github.com/unifiedjs/unified-args#cli) options.  |

*   Free software: [MIT license](LICENSE)

## Features

*   Lint markdown
*   Use an array of [remark plugins](https://github.com/remarkjs/remark/blob/main/doc/plugins.md) to fix markdowns.

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

## Report Bugs

Report bugs at https://github.com/tj-actions/remark/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
