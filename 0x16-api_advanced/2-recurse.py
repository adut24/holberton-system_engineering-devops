#!/usr/bin/python3
"""List all title in hot"""
import requests


def recurse(subreddit, hot_list=[], after=''):
    """List all title in hot"""
    url = f'https://www.reddit.com/r/{subreddit}/hot.json?after={after}'
    user = {'User-Agent': 'Test123'}
    response = requests.get(url, headers=user, allow_redirects=False)
    if not response.ok:
        return None
    data = response.json().get('data')
    after = data.get('after')
    for post in data.get('children'):
        hot_list.append(post.get('data').get('title'))
    if after is None:
        return hot_list
    return recurse(subreddit, hot_list, after)
