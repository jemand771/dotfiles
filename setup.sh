#!/bin/bash

# this file will be run by gitpod on every workspace start

# GPG signing commits
if [ -n "$GPG_KEY" ]; then
  gpg --verbose --batch --import <(echo $GPG_KEY|base64 -d)
  echo 'pinentry-mode loopback' >> ~/.gnupg/gpg.conf
  git config --global user.signingKey 0B9877A776F921C20DD2A05E1A43E076B0272479
  git config --global commit.gpgSign true
fi
