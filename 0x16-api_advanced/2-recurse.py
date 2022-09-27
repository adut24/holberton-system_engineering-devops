#!/usr/bin/python3
"""List all title in hot using the reddit API"""
import requests


def recurse(subreddit, hot_list=[], after=''):
    """List all title in hot of a subreddit"""
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    if len(after) > 0:
        url += '?after={}'.format(after)
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
