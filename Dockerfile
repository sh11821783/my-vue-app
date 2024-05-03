# ベースイメージの指定
FROM node:14-alpine

# 作業ディレクトリの設定
WORKDIR /app

# 依存関係のインストール
COPY package*.json ./
RUN npm install

# アプリケーションのソースコードの追加
COPY . .

# アプリケーションのビルド
RUN npm run build

# ポートの公開
EXPOSE 8080

# アプリケーションの起動
CMD ["npm", "run", "serve"]
