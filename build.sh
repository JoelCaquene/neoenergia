#!/usr/bin/env bash
# Saia imediatamente se um comando falhar
set -o errexit

# Coleta arquivos estáticos
python manage.py collectstatic --no-input

# Aplica migrações do banco de dados (CRUCIAL PARA CRIAR A TABELA)
python manage.py migrate
