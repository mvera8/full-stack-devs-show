#!/bin/bash

find . -type f -name "*.html" -print0 | xargs -0 perl -pi -e '
s|href="http://localhost:8000/"|href="/"|g;
s|http://localhost:8000/wp-content/uploads/2026/01|./FullStackDevs_files|g;
s|http://localhost:8000/contact/|/Contact – FullStackDevs.html|g;
s|http://localhost:8000/blog/|/FullStackDevs – FullStackDevs.html|g;
s|http://localhost:8000/sample-page/|/Sample Page – FullStackDevs.html|g;
s|http://localhost:8000/lorem-ipsum-dolor-sit-amet/|/Lorem ipsum dolor sit amet – FullStackDevs.html|g;
'
