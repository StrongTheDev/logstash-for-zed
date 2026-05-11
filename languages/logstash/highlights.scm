; This file tells tree‐sitter which nodes get which highlight scopes.
;
; The names on the right (e.g. @keyword, @comment, @string) are used by the
; editor/theme to style these parts of the code.
;
; Customize these patterns as needed.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Section keywords
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(input_section) @keyword
(filter_section) @keyword
(output_section) @keyword

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Punctuation and Operators
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Brackets:
[
 "[" "]"
 "{" "}"
] @punctuation.bracket

; The operator in expressions:
"=>" @operator

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Literals
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(string) @string
(string_var) @variable.special
(field_reference) @embedded @property
(number) @number
(boolean) @constant

; Arrays are highlighted as constants, but you could also choose another group:
(array) @constant

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Identifiers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Plugin names when used as identifiers:
(plugin_name) @function

; Expression keys and values:
(expression_key) @type
(expression_value) @variable

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Structural Nodes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Highlight blocks as regions:
(block) @region

; An expression rule (which in this language connects keys and values):
; (expression) @operator

; Comments:
(comment) @comment
