#!/bin/bash

BACKEND_REPO="https://github.com/mkhgkk/isafe-guard-backend.git"
FRONTEND_REPO="https://github.com/mkhgkk/isafe-monitoring-react.git"

BACKEND_DIR="isafe-guard-backend"
FRONTEND_DIR="isafe-monitoring-react"

clone_or_pull() {
  local REPO_URL=$1
  local DIR_NAME=$2

  if [ -d "$DIR_NAME" ]; then
    echo "Directory $DIR_NAME exists. Pulling the latest changes..."
    cd "$DIR_NAME"
    git pull origin main || git pull origin master
    cd ..
  else
    echo "Directory $DIR_NAME does not exist. Cloning repository..."
    git clone "$REPO_URL" "$DIR_NAME"
  fi
}

clone_or_pull "$BACKEND_REPO" "$BACKEND_DIR"
clone_or_pull "$FRONTEND_REPO" "$FRONTEND_DIR"

echo "✅ All repositories are up to date!"
