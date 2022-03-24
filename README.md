[![Microservice Test](https://github.com/pratik-1/flask_microservice/actions/workflows/main.yml/badge.svg)](https://github.com/pratik-1/flask_microservice/actions/workflows/main.yml)

# flask-change-microservice
Small Flask Microservice

![code preview](https://user-images.githubusercontent.com/37976329/159824966-7cc5004b-4779-4def-8f36-55b68140d11c.jpg)


## Invoke Endpoint

* Create virtualenv and source it: `python3 -m venv ~/.fcm && source ~/.fcm/bin/activate`
* Install and Test:  `make all`
* Run it:  `python app.py`
* Invoke it.  Options include curl, Postman, httpie.  These methods are documented below


### Curl

`curl http://127.0.0.1:5000/change/1/34`

```bash
[
  {
    "5": "quarters"
  }, 
  {
    "1": "nickels"
  }, 
  {
    "4": "pennies"
  }
]
```
### httpie

[Installation of httpie](https://httpie.io/docs#installation)

`http 127.0.0.1:5000/change/1/34`

```bash
HTTP/1.0 200 OK
Content-Length: 90
Content-Type: application/json
Date: Thu, 24 Mar 2022 01:17:21 GMT
Server: Werkzeug/2.0.3 Python/3.6.9

[
    {
        "5": "quarters"
    },
    {
        "1": "nickels"
    },
    {
        "4": "pennies"
    }
]
```


### Postman
[Install Postman](https://www.postman.com/)
![postman](https://user-images.githubusercontent.com/37976329/159821784-4fc6793b-ffe2-44bf-87ed-e1897ec2730c.jpg)



### Requests

The [Python requests library](https://requests.readthedocs.io/en/latest/user/quickstart/) allows you to invoke a request as a "one-liner" or a script.

`python -c "import requests;r=requests.get('http://127.0.0.1:5000/change/1/34');print(r.json())"`

Result:
`[{'5': 'quarters'}, {'1': 'nickels'}, {'4': 'pennies'}]`

## Loadtest with Locust

* [Install Locust](https://github.com/locustio/locust)
* Create a `locustfile.py`
* Run loadtests
![locust charts](https://user-images.githubusercontent.com/37976329/159821711-f1e62ed9-09a3-4c26-945a-0e36993cd9a1.jpg)


![locust stats](https://user-images.githubusercontent.com/37976329/159821770-21d61839-c1a4-4b9f-9bab-4f9bf548cf0d.jpg)

![locust swarming](https://user-images.githubusercontent.com/37976329/159825345-e38353d5-e3a8-44f7-bcef-9959a47d6a64.jpg)



