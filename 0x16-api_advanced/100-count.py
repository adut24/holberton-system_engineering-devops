#!/usr/bin/python3
"""Count the occurences of word in title"""
import requests


def count_words(subreddit, word_list, after='', count={}):
    """Check the how recurring a list of words are in subreddit title"""
    if count == {}:
        for word in sorted(word_list):
            if word.casefold() not in count.keys():
                count[word.casefold()] = 0
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    if after != '':
        url += '?after={}'.format(after)
    user = {'User-Agent': 'Test123'}
    response = requests.get(url, headers=user, allow_redirects=False)
    if not response.ok:
        return None
    data = response.json().get('data')
    after = data.get('after')
    for post in data.get('children'):
        for word in post.get('data').get('title').casefold().split():
            if word in count.keys():
                count[word] += 1
    if after is None:
        for k, v in count.items():
            if v != 0:
                print('{:s}: {:d}'.format(k, v))
        return
    return count_words(subreddit, word_list, after, count)
