from __future__ import division

import os
import sys
import datetime
import re

import nltk
from nltk.tokenize import TreebankWordTokenizer

vocab_10k = set(line.strip() for line in open('10000.txt'))

tokenizer = nltk.data.load('tokenizers/punkt/english.pickle')

twt = TreebankWordTokenizer()

def convert(raw):
    # Split sentences
    sents = tokenizer.tokenize(raw.strip(), realign_boundaries=True)

    # Split sentences
    sents_tokens = []
    for sent in sents:
        tokens = twt.tokenize(sent.lower())

        tokens_clean = []
        for token in tokens:
            # Replace numbers with <num>
            if re.search(r'[0-9]', token):
                tokens_clean.append("<num>")
                continue

            # Replace >10k words with <unk>
            if re.search(r'[a-zA-Z]$', token) and (token not in vocab_10k):
                tokens_clean.append("<unk>")
                continue

            tokens_clean.append(token)

        line_tokens = " ".join(tokens_clean)
        sents_tokens.append(line_tokens)

    lines = "\n".join(sents_tokens)
    return lines

def main():
    lines = open("data/play").read().split("\n")

    lines_cleaned = [convert(line) for line in lines]
    lines_txt = "\n".join(lines_cleaned)

    sfile = open("data/play", "w")
    sfile.write(lines_txt)
    sfile.close()

main()
