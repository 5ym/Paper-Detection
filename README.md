# paper-detection
## 開発環境
traefik環境を先に構築しておく下記参照  
https://github.com/5ym/Local-Dev-Traefik
下記コマンドで立ち上げ
```sh
cp docker-compose-sample.yml docker-compose.yml
docker-compose up -d
```

立ち上げたら`docker-compose logs`でログをみるとシークレットがかかれています。
`jupyter/recipt`に画像を入れて、jupyterより`paperDetection.ipynb`を実行すれば`jupyter/maskrecipt`に輪郭抽出用にマスクされた画像が保存され、`jupyter/donerecipt`に縁を着色した画像が出力されます。