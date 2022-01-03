[![Codacy Badge](https://api.codacy.com/project/badge/Grade/975e3b976d424d48a100f84e310a7825)](https://app.codacy.com/gh/tj-actions/remark?utm_source=github.com\&utm_medium=referral\&utm_content=tj-actions/remark\&utm_campaign=Badge_Grade_Settings)
[![CI](https://github.com/tj-actions/remark/workflows/CI/badge.svg)](https://github.com/tj-actions/remark/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/remark/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/remark/actions?query=workflow%3A%22Update+release+version.%22) [![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-tj-actions1.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fremark%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+remark+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

[![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?logo=ubuntu\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on) [![Mac OS](https://img.shields.io/badge/mac%20os-000000?logo=macos\&logoColor=F0F0F0)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Windows](https://img.shields.io/badge/Windows-0078D6?logo=windows\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)

## [remark](https://github.com/remarkjs/remark)

Want a cool `Table of Contents` for your markdown and also auto sync changes each time you make edits using this action enables the best of both worlds.

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run remark cli
        uses: tj-actions/remark@v2.1
```

## Table of Contents

*   [Inputs](#inputs)
*   [Example](#example)
*   [Features](#features)
*   [Credits](#credits)
*   [Report Bugs](#report-bugs)

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|  INPUT  |  TYPE  | REQUIRED |                  DEFAULT                   |                                       DESCRIPTION                                        |
|---------|--------|----------|--------------------------------------------|------------------------------------------------------------------------------------------|
| args    | string | true     | `--use toc --output`                       | [remark cli](https://github.com/unifiedjs/unified-args#cli) options.                     |
| files   | string | true     | `README.md`                                | List of input markdown files                                                             |
| plugins | string | true     | `remark-toc`                               | List of [remarkjs plugins](https://github.com/remarkjs/remark/blob/main/doc/plugins.md). |
| rc\_path | string | false    | `${{ github.action_path }}/.remarkrc.json` | Remark configuration file                                                                |

<!-- AUTO-DOC-INPUT:END -->

## Example

Generate a PR each time your `README.md` changes

```yaml
...
    steps:
      - name: Run remark cli
        uses: tj-actions/remark@v2.1
      - name: Verify Changed files
        uses: tj-actions/verify-changed-files@v6
        id: verify_changed_files
        with:
          files: |
            README.md
      - name: Create Pull Request
        if: steps.verify_changed_files.outputs.files_changed == 'true'
        uses: peter-evans/create-pull-request@v3
        with:
          base: "main"
          title: "Updated README.md"
          branch: "chore/update-readme"
          commit-message: "Updated README.md"
          body: "Updated README.md"
          token: ${{ github.token }}


```

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

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
