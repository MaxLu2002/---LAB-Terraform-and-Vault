# 設定環境變數(可自訂名稱)
export ROOT_SA_NAME="root-sa-by-vault"
export ROOT_KEY_NAME="root_sa"
export ROOT_ROLE="owner"

# 取得專案 ID
p=$(gcloud config get-value project)
e="${ROOT_SA_NAME}@$p.iam.gserviceaccount.com"

# 建立 Service Account
gcloud iam service-accounts create $ROOT_SA_NAME || true

# 等待 SA 建立完成
sleep 5 

# 授予專案 Owner 權限
gcloud projects add-iam-policy-binding $p \
  --member="serviceAccount:$e" \
  --role="roles/$ROOT_ROLE"

# 產生並下載金鑰檔
gcloud iam service-accounts keys create $ROOT_KEY_NAME.json \
  --iam-account=$e

# 下載到本地
cloudshell download $ROOT_KEY_NAME.json
