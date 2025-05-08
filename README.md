# Texlive docker image

Compile LaTeX documents easily by installing **all texlive packages** in a docker container.

# Usage

1. Pull the docker image: `docker pull dlazesz/texlive-full`
2. Put [`latexdockercmd.sh`](latexdockercmd.sh) into the PATH and add execute bit (`chmod +x latexdockercmd.sh`)
3. Go to the directory with the LaTeX sources
4. Compile: `latexdockercmd.sh latexmk -cd -f -jobname=output -xelatex -outdir=./compile -auxdir=./compile -interaction=batchmode -halt-on-error -pdfxe ./main.tex`
5. The outut is at: `compile/output.pdf`
6. Profit! :)

# Build

```
docker build . -t dlazesz/texlive-full
```

On Docker Hub: https://hub.docker.com/r/dlazesz/texlive-full

# License

This work is licensed under the GNU GPL 3.0 license.
