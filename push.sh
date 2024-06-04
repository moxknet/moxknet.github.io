# !/bin/bash
# Verifica se há argumentos suficientes
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <mensagem-do-commit>"
    exit 1
fi

# Mensagem do commit
COMMIT_MESSAGE=$1

# Adiciona todas as mudanças ao repositório
git add .

# Cria um commit com a mensagem fornecida
git commit -m "$COMMIT_MESSAGE"

# Envia as mudanças para o repositório remoto
git push

# Verifica o status final
if [ $? -eq 0 ]; then
    echo "Push realizado com sucesso!"
else
    echo "Erro ao realizar o push."
    exit 1
fi
