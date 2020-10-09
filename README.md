# php74-phinx

PHP製マイグレーションツール、Phinxを実行するためのイメージ。  

## Preparation

事前に、カレントディレクトリに`src`ディレクトリを作成しておく。  
後ほど実行のコマンドでは、コンテナに`./src:/app`としてマウントする。  
また、ローカルでの編集時、入力補完のために、srcディレクトリ内にphinxをインストールしておくと便利。

## Commands

### Init

設定ファイル`phinx.php`を作成。

```
make init
```

### Create

新規マイグレーションファイルを作成。  
`camelCasedName`はキャメルケースでないとエラーになる。  
また、名称の被りもNG。

```
make create NAME=[camelCasedName]
```

### Migrate

マイグレーション実行

```
make migrate
```

### Rollback

一世代のみ段階ロールバック。

```
make rollback
```



