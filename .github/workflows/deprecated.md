[GitHub Actions: Deprecating save-state and set-output commands - The GitHub Blog](https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/)

    A workflow using save-state or set-output like the following

        - name: Save state
        run: echo "::save-state name={name}::{value}"

        - name: Set output
        run: echo "::set-output name={name}::{value}"

    should be updated to write to the new GITHUB_STATE and GITHUB_OUTPUT environment files:

        - name: Save state
        run: echo "{name}={value}" >> $GITHUB_STATE

        - name: Set output
        run: echo "{name}={value}" >> $GITHUB_OUTPUT