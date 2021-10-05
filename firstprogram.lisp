#!/usr/local/bin/sbcl --script

; calculate seconds in a year using prefix notation
(write (* 60 60 24 365)) (terpri)

; subtract 2 variables
(defvar a)
(defvar b)
(setq a 50)
(setq b 30)
(write (- a b)) (terpri)

; function displaying blocks and if statements
(defun first-function (input)
    (print 'entering-first-function)

    (block first-block
        (print (block second-block
            (if (string= input "hello")
                ; exits program early if input is hello
                (return-from first-block 1)
            )
            (print 'value-is-not-hello))
        )
    t)
)

(first-function "hello")
(terpri)
(first-function "hell0")
(terpri)
(terpri)

(defvar curr)
(defvar prev1)
(defvar prev2)
(defvar inc)

; function for displaying first n numbers in fibonacci sequence
(defun fibonacci (count)
    (write 'first-)
    (write count)
    (write '-numbers-of-fibonacci-sequence)
    (terpri)

    (setq curr 1)
    (setq prev1 1)
    (setq prev2 0)
    (setq inc 2)

    (if (= count 1)
        (return-from fibonacci (write prev1))
    )
    (write prev1)
    (write '-)

    (if (= count 2)
        (return-from fibonacci (write curr))
    )
    (write curr)

    (loop
        (setq prev2 prev1)
        (setq prev1 curr)
        (setq curr (+ prev1 prev2))
        (write '-)
        (write curr)
        (setq inc (+ inc 1))
        (when (= inc count) (return curr))
    )
)

(fibonacci 2)
(terpri)
(fibonacci 3)
(terpri)
(fibonacci 5)
(terpri)
(fibonacci 15)
(terpri)