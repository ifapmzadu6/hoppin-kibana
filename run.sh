# このディレクトリに移動
cd `dirname $0`

# Delete all containers
#docker rm $(docker ps -a -q)
# Delete all images
#docker rmi $(docker images -q)

# ビルド
#docker build --no-cache --rm -t kibana-img:0.1.0 .
docker build --rm -t kibana-img:0.1.0 .

# 前回起動中のものがあれば削除
docker stop kibana
docker rm kibana

# リンクして実行
docker run -d -p 5601:5601 --name kibana kibana-img:0.1.0

