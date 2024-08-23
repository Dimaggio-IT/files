#!/bin/bash

echo ""
echo "| Привет! ... Давайте создадим/настроим монорепу (backend & frontend)!"
echo ""
echo "---> надеюсь всё пройдет успешно 🙂"
echo ""
echo "| Итак, приступимс:"

# Создание apps (backend & frontend) при помощи npx:
echo ""
read -p ">>> Давайте созданим моно-репозиторий (backend) ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    echo "будем исполнена команда >> npx create-nx-workspace project --preset=nest"
    npx create-nx-workspace project --preset=nest
    cd project

    # либы для backend
    nx add @nx/nest
    nx g @nx/nest:lib common --directory=libs/common
    nx g @nx/nest:lib authentication --directory=libs/backend/authentication
    nx g @nx/nest:lib configuration --directory=libs/backend/configuration
    nx g @nx/nest:lib product --directory=libs/backend/product
    nx g @nx/nest:lib user --directory=libs/backend/user
    nx g @nx/nest:lib data-access --directory=libs/backend/data-access

    echo ""
    read -p ">>> Давайте добавим в моно-репозиторий (frontend) ? (y/n) " choice
    if [ "$choice" == "y" ]; then
        npx nx add @nx/react
        npx nx g @nx/react:app frontend --directory=apps/frontend
    fi
fi


# npm пакеты
echo ""
read -p ">>> Поставить глобально NX последней версии ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm install --global nx@latest
fi

echo ""
read -p ">>> Поставить глобально NVM v0.39.7 ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

echo ""
read -p ">>> Поставить Vitest ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
 npm install -D vitest
fi

echo ""
read -p ">>> Поставить got@11.8.6 ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i got@11.8.6
fi

echo ""
read -p ">>> Поставить ts-node ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i -g ts-node
fi

echo ""
read -p ">>> Поставить @nestjs/swagger ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i @nestjs/swagger
fi

echo ""
read -p ">>> Поставить @nestjs/jwt ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i @nestjs/jwt
fi

echo ""
read -p ">>> Поставить @nestjs/config ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i @nestjs/config
fi

echo ""
read -p ">>> Поставить @nestjs/passport ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i @nestjs/passport
fi

echo ""
read -p ">>> Поставить class-transformer ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i class-transformer
fi

echo ""
read -p ">>> Поставить passport-jwt ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i passport-jwt && npm i --save-dev @types/passport-jwt && npm i --save-dev @types/passport-local
fi

echo ""
read -p ">>> Поставить joi ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
  npm i joi
fi

echo ""
read -p ">>> Поставить class-validator ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i class-validator
fi

echo ""
read -p ">>> Поставить dayjs ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i dayjs
fi

echo ""
read -p ">>> Поставить uuid ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm install uuid
    npm i --save-dev @types/uuid
fi

echo ""
read -p ">>> Поставить bcrypt ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i bcrypt
    npm i --save-dev @types/bcrypt
fi

echo ""
read -p ">>> Поставить passport@0.7.0 ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i -ED passport@0.7.0
fi

echo ""
read -p ">>> Поставить Redux Toolkit (RTK) v1.9.7 ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i @reduxjs/toolkit@1.9.7 && npm i react-redux@8.1.3 && npm i -SE @types/react-redux@7.1.27
fi

echo ""
read -p ">>> Поставить http-status-codes ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i http-status-codes@2.3.0
fi

echo ""
read -p ">>> Поставить react-helmet-async ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i react-helmet-async
fi

echo ""
read -p ">>> Поставить classnames ? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then
    npm i classnames
fi

echo ""
echo "| ВсЁ! Закончили установку"
echo ""
echo "---> 😎"
echo ""
