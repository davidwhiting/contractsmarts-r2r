# Transcript

## Bash commands

The `.env` file looks like

```javascript
BASE_URL=https://api.cloud.sciphi.ai
USERNAME=david@contractsmarts.ai
PASSWORD=Nephi-Moroni10
API_KEY=pk_MU4nfFAcPZVccJms.sk_GxoZDj3ShPWvJdhSfciSqLBnxUYyENaJ
```
We set the API key in our environment using this (as an alternative):
```bash
export R2R_API_KEY='pk_a8AYAiPNenekD8ZT.sk_LiWcouomkdqToRJnB4ttmLs9yzERuj93'
```

```bash


## old key in config.ini 
# cat ~/.r2r/config.ini
# r2r configure key
```

### Curl Commands
The `.env` file looks like

```javascript
R2R_BASE_URL=https://api.cloud.sciphi.ai
R2R_API_KEY=pk_MU4nfFAcPZVccJms.sk_GxoZDj3ShPWvJdhSfciSqLBnxUYyENaJ
R2R_USERNAME=david@contractsmarts.ai
R2R_PASSWORD=Nephi-Moroni10
```

```bash
# load .env into shell session
export $(grep -v '^#' .env | xargs)

# authenticate and get access token

## substitutions not working right here, work on it later
#response=$(curl -X POST "https://api.cloud.sciphi.ai/v3/users/login" \
#     -H "Content-Type: application/x-www-form-urlencoded" \
#     -d "username=\"${R2R_USERNAME}\"&password=\"${R2R_PASSWORD}\"")



export TMP_RESPONSE=$(curl -X POST "https://api.cloud.sciphi.ai/v3/users/login" \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -d "username=david@contractsmarts.ai&password=Nephi-Moroni10")
export R2R_ACCESS_TOKEN=$(echo "$TMP_RESPONSE" | jq -r '.results.access_token.token')
export R2R_REFRESH_TOKEN=$(echo "$TMP_RESPONSE" | jq -r '.results.refresh_token.token')


# retrieve search
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3NDIyOTAzNDAuMzcyNjU3LCJpYXQiOjE3Mzg2OTAzNDAuMzcyNjY1LCJuYmYiOjE3Mzg2OTAzNDAuMzcyNjY1LCJqdGkiOiJTUlg4bDRaWFVoaUw0S0hzaTNDeVFBPT0iLCJub25jZSI6InJiQU1PYnl2S0hHUXRWanUtSm1QZkE9PSJ9.fIBFrG30gFPSDCYDWU0K0VIYn2JckdDqouJJWN0oFiA" \
     -H "Content-Type: application/json" \
     -d '{
  "query": "query"
}'

curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3NDIyOTEwOTguODk4ODk5LCJpYXQiOjE3Mzg2OTEwOTguODk4OTA3LCJuYmYiOjE3Mzg2OTEwOTguODk4OTA3LCJqdGkiOiI2NHZmakg3ZS03SVBLZThaTUNZcDZ3PT0iLCJub25jZSI6IkV1SHloRFFUc0hSMkRLX1JaeTUwNlE9PSJ9.eU-_KfCNn8ISQ5tk0jHB4NnlDNyw-P1CaYPS8n6nmto" \
     -H "Content-Type: application/json" \
     -d '{"query": "Who are the project leaders"}'

export TMP_RESPONSE=$(curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \
     -H "Authorization: Bearer ${R2R_ACCESS_TOKEN}" \
     -H "Content-Type: application/json" \
     -d '{"query": "Who are the project leaders"}')


```

