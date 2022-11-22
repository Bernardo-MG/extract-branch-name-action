# Extract Branch Name Action

Extracts the name of the current Github branch and stores it into the branchName output.

## Outputs

| Output     | Description                |
|------------|----------------------------|
| branchName | The current Github branch. |

## Usage

This extracts the current branch name, and then runs the deploy job only if it is run on the master branch.

```
jobs:
  setup:
    name: Acquire branch name
    outputs:
      branchName: ${{ steps.extract_branch.outputs.branchName }}
    runs-on: ubuntu-latest

    steps:
    - name: Extract branch name
      id: extract_branch
      uses: bernardo-mg/extract-branch-name-action@v1

  deploy:
    name: Deployment
    environment: 'deployment_site'
    needs: setup
    if: ${{ needs.setup.outputs.branchName == 'master' }}
    runs-on: ubuntu-latest
    steps:
      ...
```

## Collaborate

Any kind of help with the project will be well received, and there are two main ways to give such help:

- Reporting errors and asking for extensions through the issues management
- or forking the repository and extending the project

### Issues management

Issues are managed at the GitHub [project issues tracker][issues], where any Github user may report bugs or ask for new features.

### Getting the code

If you wish to fork or modify the code, visit the [GitHub project page][scm], where the latest versions are always kept. Check the 'master' branch for the latest release, and the 'develop' for the current, and stable, development version.

## License
The project has been released under the [MIT License][license].

[issues]: https://github.com/Bernardo-MG/deployment-maven-settings-action/issues
[license]: http://www.opensource.org/licenses/mit-license.php
[scm]: http://github.com/Bernardo-MG/deployment-maven-settings-action
