#!/bin/bash

# MySQLのルートユーザー名とパスワードを環境変数から取得
# 環境変数が設定されていない場合はデフォルト値を使用
MYSQL_ROOT_USER=${MYSQL_ROOT_USER:-root}
MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD:-""}

# データベースのセットアップ
echo "Setting up the database..."
if [ -z "$MYSQL_ROOT_PASSWORD" ]; then
    # パスワードが設定されていない場合
    mysql -u "$MYSQL_ROOT_USER" < setup_database.sql
else
    # パスワードが設定されている場合
    mysql -u "$MYSQL_ROOT_USER" -p"$MYSQL_ROOT_PASSWORD" < setup_database.sql
fi

# セットアップ完了メッセージ
echo "Database setup completed."