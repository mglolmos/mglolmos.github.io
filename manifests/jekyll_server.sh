#!/bin/bash
WHERE_JEKYLL="$(which jekyll)"
`${WHERE_JEKYLL} server --watch -P 8124 --force_polling -s /vagrant >> /dev/null &`