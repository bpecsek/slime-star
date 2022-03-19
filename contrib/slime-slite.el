(require 'slime)

(load "./slite/slite.el")

(define-slime-contrib slime-slite
  (:swank-dependencies slite))

(provide 'slime-slite)
