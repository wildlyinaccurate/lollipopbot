# Lollipopbot

An IRC bot for lazy lollipoppers.

## Installation

 0. `git clone https://github.com/wildlyinaccurate/lollipopbot.git`
 0. `cd lollipopbot && bundle install`
 0. add your certificate.pem to etc/certs
 0. `./bin/lollipopbot`

## Commands

To issue a command to lollipopbot, you must first @mention the bot i.e. `lollipopbot: <command>`

| Command               | Action                                                           |
|-----------------------|------------------------------------------------------------------|
| `take the wheel`      | lollipopbot takes over the position as lollipop (`!iamlollipop`) |
| `kickstart the build` | lollipopbot attempts to start the build (`!start`)               |

Lollipopbot will also respond to various [Lollibot](https://github.com/bbc-news/lollibot) status updates and:

 * Start a new build when Lollibot reports successful builds
 * Bail out (`!iamnotlollipop`) when Lollibot reports build failures
