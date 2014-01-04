
(setq prelude-guru nil)

(prelude-require-packages '(ac-nrepl
                            auto-complete
                            cyberpunk-theme
                            elfeed
                            jabber
                            pretty-mode
                            twittering-mode
                            auto-complete
                            rvm))

(setq user-full-name "Michael Simpson")
(setq user-mail-address "mjs2600@gmail.com")
(setq auth-sources '("~/.authinfo.gpg"))

(setq elfeed-feeds
      '("http://feeds.boingboing.net/boingboing/iBag"
        ;"http://www.stallman.org/rss/rss.xml"
        "http://xkcd.com/rss.xml"
        "http://feeds.feedburner.com/Lessig?format=xmlford.edu/lessig/blog/index.rdf"
        "https://www.eff.org/rss/updates.xml"
        "http://planet.emacsen.org/atom.xml"
        "http://blog.fogus.me/tag/readevalprintlove/feed/"))

;(require 'jabber)

(setq jabber-account-list
      '(("mjs2600@gmail.com"
         (:network-server . "talk.google.com")
         (:connection-type . ssl))
        ("mike.simpson@scimedsolutions.com"
         (:network-server . "talk.google.com")
         (:connection-type . ssl))))

(setq jabber-auto-reconnect nil)
(setq jabber-vcard-avatars-retrieve nil)
(setq jabber-mode-line-mode t)
(setq jabber-show-offline-contacts nil)

;(require 'twittering-mode)

(load-theme 'cyberpunk t)
;;(load-theme 'zenburn t)
(global-auto-revert-mode t)
(require 'pretty-mode)
(global-pretty-mode t)
(set-face-attribute 'default nil :height 140)

(setq tab-width 2)

(setq eshell-cmpl-ignore-case t)
(defadvice ansi-term (after advise-ansi-term-coding-system)
  (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
(ad-activate 'ansi-term)
