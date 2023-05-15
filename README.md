### Setup


``` 
git clone https://github.com/Druelik/kratos-test.git
cd kratos
```


To use this setup change the values in contrib/quickstart/kratos/cloud/kratos.yml under oidc.


waltid-idpkit is an alias which is needed to run in the root folder of waltid-idpkit 
```
alias waltid-idpkit="docker run -p 8080:8080 -e WALTID_DATA_ROOT=/data -v $PWD:/data waltid/idpkit"
```

client-secret and client-id are gained by running the following command:
``` 
waltid-idpkit config --oidc clients register -r https://localhost:4433/self-service/methods/oidc/callback/Walttest
```
`Walttest` must match the configured provider id

Start with this after registering your client and changing values:
``` 
docker-compose -f quickstart.yml -f contrib/quickstart/kratos/cloud/quickstart.yml up --build --force-recreate
```
