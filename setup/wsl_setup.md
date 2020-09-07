# Running SpArcFiRe on Windows

## Into:
WSL (Windows Subsystem for Linux) is a compatiablity layer that enables you to run native Linux command-line tools directly on Windows. By installing WSL, you will be able to run SpArcFiRe on a Windows machine.

This tutorial includes the following sections:
1. Installing WSL
2. Cloning the SpArcFiRe Repo
3. Setting up SpArcFiRe
4. Running SpArcFiRe

## 1) Installing WSL:
To install WSL, follow [the instructions here.](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

**NOTE: For this tutorial, we will be using Ubuntu. You can use a different flavor of linux, but you may have to recompile the MATLAB scripts.**

## 2) Cloning the SpArcFiRe Repo:
Open your terminal, and type the following command: `git clone https://github.com/waynebhayes/SpArcFiRe.git`

## 3) Setting up SpArcFiRe
Once you have cloned the repo, cd into the SpArcFiRe directory.

Inside the SpArcFiRe Directory type the command:
`sudo .\setup\wsl-setup.sh`
**Note: By running this command, you are agreeing to MATLAB's license**
This command will install MATLAB's runtime compiler (R2017a), create a symbolic link from your home directory to SpArcFiRe `(i.e: "$HOME"/bin/ -> SpArcFiRe/scripts)`,  create the input/output directory structure, and download sample image of galaxies that you can run SpArcFiRE on.

Finally complete the setup by running the command:
.\setup.sh \`pwd\`

## 4) Running SpArcFiRe:
To run SpArcFiRe on the sample image (found in: "$HOME"/SDSS/G.in/), type the command: `~/bin/wschallo/SpArcFiRe-run.sh`

This is the equivalent of running the command:
> ~/ SpArcFiRe/scripts/SpArcFiRe -convert-FITS ~/SDSS/G.in ~/SDSS/G.tmp ~/SDSS/G.out -generateFitQuality 0 -writeBulgeMask 1


For a list of params, please see [the README file](https://github.com/waynebhayes/SpArcFiRe).
