[![CI](https://github.com/tj-actions/remark/workflows/CI/badge.svg)](https://github.com/tj-actions/remark/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/remark/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/remark/actions?query=workflow%3A%22Update+release+version.%22) <a href="https://github.com/search?q=tj-actions+remark+path%3A.github%2Fworkflows+language%3AYAML&type=code" target="_blank" title="Public workflows that use this action."><img src="https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-git-master.endbug.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fremark%26badge%3Dtrue" alt="Public workflows that use this action."></a>

## [remark](https://github.com/remarkjs/remark)

Want a cool `Table of Contents` for your markdown and also auto sync changes each time you make edits using this action enables the best of both worlds. 


```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run remark cli
        uses: tj-actions/remark@v1.5
```

## Table of Contents

*   [Inputs](#inputs)
*   [Features](#features)
*   [Credits](#credits)
*   [Report Bugs](#report-bugs)

## Inputs

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| plugins  |  `string` OR `string[]` | `false`  |  `remark-toc` |  List of [remarkjs plugins](https://github.com/remarkjs/remark/blob/main/doc/plugins.md)  |
| files   |   `string` OR `string[]` | `false`  | `README.md` | List of input markdown files    |
| args    |  `string`  |  `false`  |  `'--use toc --output'` |  [remark cli](https://github.com/unifiedjs/unified-args#cli) options.  |

*   Free software: [MIT license](LICENSE)


## Features

*   Format Markdown ([remark-cli](https://github.com/remarkjs/remark/tree/main/packages/remark-cli#cli))
*   Automatically add links to headings in Markdown ([remark-autolink-headings](https://github.com/ben-eb/remark-autolink-headings))
*   Lint Markdown ([remark-lint](https://github.com/remarkjs/remark-lint))
*   Highlight code blocks ([remark-highlight](https://github.com/remarkjs/remark-highlight.js))
*   Math support for Markdown ([remark-math](https://github.com/remarkjs/remark-math))
*   Generate a Tables of Contents ([remark-toc](https://github.com/remarkjs/remark-toc))

And many more using an array of [remarkjs plugins](https://github.com/remarkjs/remark/blob/main/doc/plugins.md).


## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

## Report Bugs

Report bugs at https://github.com/tj-actions/remark/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
