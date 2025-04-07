# Python script to fetch API data
import requests
import json

url = 'https://jsonplaceholder.typicode.com/posts'
response = requests.get(url)

if response.status_code == 200:
    data = response.json()
    with open('data.json', 'w') as f:
        for record in data:
            json.dump(record, f)
            f.write('\n')
else:
    print('Failed to fetch data')