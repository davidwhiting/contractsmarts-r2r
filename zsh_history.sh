
export R2R_API_KEY='pk_a8AYAiPNenekD8ZT.sk_LiWcouomkdqToRJnB4ttmLs9yzERuj93'
pip install r2r

## ----------------------------------
## backwards
## ----------------------------------



curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "Name the developer of this project"\
}'

curl http://localhost:3000/health

curl -X POST http://localhost:3000/api/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "Name the developer of this project"\
}'
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "Name the developer of this project"\
}'\

curl -X POST http://localhost:3000/api/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "Name the developer of this project"\
}'


ls
curl -X POST http://localhost:3000/api/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
        "query": "Name the developer of this project"\
        }' \\
     -o response.json
less response.json
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "what is the nameplate value for this project",\
  "search_mode": "basic",\
  "search_settings": {\
    "limit": 10\
  } \\
  -o response.json\
}'
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "what is the nameplate value for this project",\
  "search_mode": "basic",\
  "search_settings": {\
    "limit": 10\
  }, \\
  -o response.json\
}'
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
        "query": "what is the nameplate value for this project",\
        "search_mode": "basic",\
        "search_settings": {\
          "limit": 10\
        } \
     }' \\
     -o response.json
less response.json
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
        "query": "what is the nameplate value for this project",\
        "search_mode": "basic",\
        "search_settings": {\
          "limit": 10\
        } \
     }' \\
     -o response2.json
# explicit basic search through proxy\
curl -X POST https://localhost:3000/api/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
        "query": "what is the nameplate value for this project",\
        "search_mode": "basic",\
        "search_settings": {\
          "limit": 10\
        } \
     }' \\
     -o response.json
curl -X POST http://localhost:3000/api/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
        "query": "Name the developer of this project",\
        "search_mode": "basic"\
        }' \\
     -o response.json
less response.json
# advanced search through proxy\
curl -X POST http://localhost:3000/api/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
        "query": "Name the developer of this project",\
        "search_mode": "advanced"\
        }' \\
     -o response3.json
less response3.json
# advanced search through proxy\
curl -X POST http://localhost:3000/api/retrieval/search \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
        "query": "what is the nameplate value for this project",\
        "search_mode": "advanced"\
        }' \\
     -o response3.json
less response.json
pwd
ls
curl -X POST https://localhost:3000/api/retrieval/rag \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "what is the nameplate value for this project",\
  "search_mode": "basic"\
    }' \\
    -o response.json
curl -X POST https://api.cloud.sciphi.ai/v3/retrieval/rag \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "what is the nameplate value for this project",\
  "search_mode": "basic"\
}'
curl -X POST http://localhost:3000/api/retrieval/rag \\
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXZpZEBjb250cmFjdHNtYXJ0cy5haSIsInRva2VuX3R5cGUiOiJhY2Nlc3MiLCJleHAiOjE3Mzg1MzE1NjMuNDEyNDU0LCJpYXQiOjE3MzgzNTg3NjMuNDEyNDY0LCJuYmYiOjE3MzgzNTg3NjMuNDEyNDY0LCJqdGkiOiJOenYyd3BsNEhXUmFBSkQ4YVRfR0t3PT0iLCJub25jZSI6Imo4S29vazZTdGVvQlFFYndvbV9fQmc9PSJ9.2Pe2cE26qqnp1b4G5-UXglJnd0ymStCCpWSMTvIjk5s" \\
     -H "Content-Type: application/json" \\
     -d '{\
  "query": "what is the nameplate value for this project",\
  "search_mode": "basic"\
    }' \\
    -o response.json


curl -v https://proxy.contractsmarts.ai/health
curl -v https://proxy.contractsmarts.ai/health
curl -v https://proxy.contractsmarts.ai/health
curl -v http://proxy.contractsmarts.ai/health
curl -v http://proxy.contractsmarts.ai/health
curl -I https://proxy.contractsmarts.ai/health
curl -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health
curl -v -X OPTIONS -H "Origin: https://office.com" \\
  -H "Access-Control-Request-Method: POST" \\
  https://proxy.contractsmarts.ai/health

  