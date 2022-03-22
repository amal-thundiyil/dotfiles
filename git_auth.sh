#! /usr/bin/env bash
GIT_AUTHOR_NAME="Amal Thundiyil"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="amalthundiyil0@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
FILE="$HOME/.git_credentials"

read -p "Enter Git Author Name [$GIT_AUTHOR_NAME]: " input
GIT_AUTHOR_NAME=${input:-$GIT_AUTHOR_NAME}
unset input

read -p "Enter Git Author Email [$GIT_AUTHOR_EMAIL]: " input
GIT_AUTHOR_EMAIL=${input:-$GIT_AUTHOR_EMAIL}
unset input

read -p "Enter Git Signing Key: " input
GIT_AUTHOR_SIGNING_KEY=$input
unset input

touch "$FILE"

GIT_CREDENTIALS="""
[user] \n
\tname = $GIT_AUTHOR_NAME \n
\temail = $GIT_AUTHOR_EMAIL \n
\tsigningkey = $GIT_AUTHOR_SIGNING_KEY
"""
echo -e $GIT_CREDENTIALS >> $FILE
