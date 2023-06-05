# Poetry

## pdev.sh

Eu gosto de criar o arquivo [pdev.sh](./src/pdev.sh) no diretório `~/.local/bin/` para instalar todas as dependências de desenvolvimento que eu uso em um projeto Python.

1. Caso o diretório não exista crie `mkdir $HOME/.local/bin`.
2. Adicione `export PATH="$HOME/.local/bin:$PATH"` no arquivo `~/.bashrc`.
3. Dê permissões para esse arquivo ser um executável `chmod +x $HOME/.local/bin/pdev.sh`
