# Transcript

## Bash commands

```bash
export R2R_API_KEY='pk_a8AYAiPNenekD8ZT.sk_LiWcouomkdqToRJnB4ttmLs9yzERuj93'

## old key in config.ini 
# cat ~/.r2r/config.ini
# r2r configure key

```
### Curl Commands
```bash
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "Name the developer of this project"\
}'
```

## 