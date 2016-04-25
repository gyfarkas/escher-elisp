;;; package


;;; Code:
(require 'cl)

(defstruct something name (num 0))

(defvar  test-s  (make-something))

(setf (something-name s) "Hello")

;;(something-num s)
;;(something-name s)

(secure-hash 'sha256 "Hello world")

(defstruct escher-request
  credential-scope
  (algo-prefix "ESR")
  (vendor-key "Escher")
  (hash-algo "SHA256")
  (current-time (format-time-string "%Y%m%dT%H%M%SZ" (current-time)))
  (auth-header-name "X-Escher-Auth")
  (date-header-name "X-Escher-Date")
  (clock-skew 900)
  )

(defun sign-request (raw-request escher)
  (if (escher-request-p escher)
      (message "eshcer")
      (message "non escher")
    )
  )

(setq e (make-escher-request))

(sign-request "" '())

(length  (secure-hash 'sha256  ""))

(define-hmac-function hmac-sha256 (lambda (s) (decode-hex-string  (secure-hash 'sha256 s))) 64 32)

(require 'hex-util)
(decode-hex-string "")

(secure-hash 'sha256 (decode-hex-string ""))

;;0xb613679a0814d9ec772f95d778c35fc5ff1697c493715653c6c712144292c5ad
;;
(encode-hex-string  (hmac-sha256 "" ""))

(length "0xb613679a0814d9ec772f95d778c35fc5ff1697c493715653c6c712144292c5ad")


;;  f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8
;;0xf7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8
(hmac-sha256 "The quick brown fox jumps over the lazy dog" "key")

;;The quick brown fox jumps over the lazy dog" "key")")



;;0xf7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8
(hmac-sha256 "The quick brown fox jumps over the lazy dog" "key")
