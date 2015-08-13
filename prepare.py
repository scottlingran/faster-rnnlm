from __future__ import division

import os
import sys
import re

import nltk
from nltk.tokenize import TreebankWordTokenizer

tokenizer = nltk.data.load('tokenizers/punkt/english.pickle')

vocab = set(line.split(" ")[0] for line in open('models/concat'))
twt = TreebankWordTokenizer()


def process_line(line):
    sents = tokenizer.tokenize(line.strip(), realign_boundaries=True)

    for sent in sents:
        sent_lower = sent.lower()
        tokens = twt.tokenize(sent_lower)
        tokens_clean = []
        for token in tokens:

            # Replace numbers with <num>
            if re.search(r'[0-9]', token):
                token = "<num>"

            add_to_vocab(token)
            tokens_clean.append(token)

        all_sents.append(tokens_clean)

def main():
    lines = open("data/play").read().split("\n")

    newfile = open("data/play", "w")

    for line in lines:
        tokens = twt.tokenize(line.lower())

        for i, token in enumerate(tokens):
            if token not in vocab:
                tokens[i] = "<unk>"

        newfile.write(" ".join(tokens) + "\n")

    newfile.close()

main()
