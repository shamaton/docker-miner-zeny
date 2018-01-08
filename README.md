# build
docker build -t zeny:latest .

# use case 1
docker run --name container_name --env POOL=pool_address --env WALLET=wallet_address --env THREAD_NUM=1 zeny

# use case 2
docker run --name container_name --env POOL=pool_address  --env USERPASS=user.worker:pass --env THREAD_NUM=2 zeny
