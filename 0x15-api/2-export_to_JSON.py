#!/usr/bin/python3
"""Export data to a JSON file"""
import requests
from sys import argv


if __name__ == '__main__':
    json_dict = {}
    task_list = []
    url = 'https://jsonplaceholder.typicode.com/users/{}'.format(argv[1])
    r = requests.get(url).json()
    url = 'https://jsonplaceholder.typicode.com/users/{}/todos'.format(argv[1])
    todos = requests.get(url).json()
    for task in todos:
        dict = {}
        dict.update({"task": task.get('title'),
                     "completed": task.get('completed'),
                     "username": r.get('username')})
        task_list.append(dict)
    json_dict.update({"{}".format(argv[1]): task_list})
    with open('{}.json'.format(argv[1]), 'w') as f:
        f.write(str(json_dict))
