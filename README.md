

# flask-change-microservice
Small Flask Microservice change






## Invoke Endpoint

* Create virtualenv and source it: `python3 -m venv ~/.fcm && source ~/.venv/bin/fcm`
* Install and Test:  `make all`
* Run it:  `python app.py`
* Invoke it.  Options include curl, Postman, httpie.  These methods are documented below


### Curl

`curl http://127.0.0.1:8080/change/1/34`

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

`http 127.0.0.1:8080/change/1/34`

```bash
HTTP/1.0 200 OK
Content-Length: 90
Content-Type: application/json
Date: Tue, 16 Mar 2021 16:49:11 GMT
Server: Werkzeug/1.0.1 Python/3.9.0

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



### Requests

The [Python requests library](https://requests.readthedocs.io/en/latest/user/quickstart/) allows you to invoke a request as a "one-liner" or a script.

`python -c "import requests;r=requests.get('http://127.0.0.1:8080/change/1/34');print(r.json())"`

Result:

`[{'5': 'quarters'}, {'1': 'nickels'}, {'4': 'pennies'}]`

## Loadtest with Locust

* [Install Locust](https://github.com/locustio/locust)
* Create a `locustfile.py`
* Run loadtests





