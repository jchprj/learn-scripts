# GitHub Actions

[Finding and customizing actions - GitHub Docs](https://docs.github.com/en/actions/learn-github-actions/finding-and-customizing-actions)

    The actions you use in your workflow can be defined in:

    The same repository as your workflow file
    Any public repository
    A published Docker container image on Docker Hub


[Metadata syntax for GitHub Actions - GitHub Docs](https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions)


## Composite

[Creating a composite action - GitHub Docs](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action)

    action.yml
        name:
        description:
        inputs:
            i:
                description:
                required:
                default:
        outputs:
            o:
                description:
                value: ${{ steps.out.outputs.value}}
        runs:
            using: "composite"
            steps:
                - run:
                  shell: bash
                - id: out
                  run echo "value=1" >> $GITHUB_OUTPUT
                  shell: bash


[bash - How to set dynamically outputs variables in a composite action - Stack Overflow](https://stackoverflow.com/questions/74448200/how-to-set-dynamically-outputs-variables-in-a-composite-action)


[How to use a custom github action from another repository in my organization? - Stack Overflow](https://stackoverflow.com/questions/63941471/how-to-use-a-custom-github-action-from-another-repository-in-my-organization)

    - 
        uses: actions/checkout@v3
        with:
          repository: your-org/your-action
          path: your-action
    - 
        uses: ./your-action


[Using Secrets in Composite Actions GitHub - Stack Overflow](https://stackoverflow.com/questions/70098241/using-secrets-in-composite-actions-github)

    those secrets need to be informed via action inputs


## VS Code extension

[Managing Workflows with the GitHub Actions Extension for VS Code](https://techcommunity.microsoft.com/t5/educator-developer-blog/managing-workflows-with-the-github-actions-extension-for-vs-code/ba-p/3782265#:~:text=The%20GitHub%20Actions%20Extension%20for%20VS%20Code%20provides%20a%20range,tests%20for%20every%20pushed%20branch.)


[GitHub Actions - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-github-actions)

    We have enabled experimental functionality to support GitHub Enterprise Server, but this feature is an experimental beta and currently unsupported. To try this out, enable the use-enterprise setting to authenticate with your GitHub Enterprise Server Authentication Provider settings