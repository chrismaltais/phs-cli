# phs-cli
A CLI to streamline the development process of VBA the Project Health Summary Macro :running:

### Note: Will not work without the following scripts that were developed under the employment of Shared Services Canada:
- `PHS-AutoBuild-v1.6.sh`
- `ZipToAutoBuild.sh`
- `CreateTemplateFiles.sh`

The purpose of this repository is for educational purposes, not functional.

## To Install
1. `mdkir phs-cli && cd $_`
2. `git init`
3. `git remote add origin https://github.com/chrismaltais/phs-cli.git`
4. `git pull`
5. `cat .bashrc >> ~/.bashrc`

## How it Works
Concatenates a shell script function to the end of the `.bashrc` file in the home directory (hack but it works as a "mock" CLI!)
