#!/usr/bin/env bash

if [ ! -d fonts ]; then
  mkdir -p /content/attentionocr/synthetic/fonts
  git clone https://github.com/google/fonts.git fonts
  find fonts -type f -iname "*.ttf" -exec mv {} /content/attentionocr/synthetic/fonts \;
fi

if [ ! -d texts ]; then
  mkdir -p /content/attentionocr/synthetic/texts
  python3 /content/attentionocr/synthetic/download_texts.py
fi

if [ ! -d images ]; then
  mkdir -p /content/attentionocr/synthetic/images
  wget https://icdn.ensonhaber.com/resimler/galeri/206457.jpg -O /content/attentionocr/synthetic/images/1.jpg
  wget https://indigodergisi.com/wp-content/uploads/2015/06/dilara-dora-e1435562682497.jpg -O /content/attentionocr/synthetic/images/2.jpg
fi
