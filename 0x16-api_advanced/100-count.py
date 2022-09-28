#!/usr/bin/python3
"""Count the occurences of word in title"""
import operator
import requests


def count_words(subreddit, word_list, after='', count={}):
    """Check the how recurring a list of words are in subreddit title"""
    if count == {}:
        for word in word_list:
            count[word] = 0
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    if after != '':
        url += '?after={}'.format(after)
    user = {'User-Agent': 'Test123'}
    response = requests.get(url, headers=user, allow_redirects=False)
    if not response.ok or response.status_code == 302:
        return None
    data = response.json().get('data')
    after = data.get('after')
    for post in data.get('children'):
        for word in post.get('data').get('title').split():
            for keyword in count.keys():
                if keyword.casefold() == word.casefold():
                    count[keyword] += 1
    if after is None:
        sorted_count = dict(sorted(count.items(), key=operator.itemgetter(1),
                                   reverse=True))
        for k, v in sorted_count.items():
            if v > 0:
                print('{}: {}'.format(k, v))
        return
    count_words(subreddit, word_list, after, count)
