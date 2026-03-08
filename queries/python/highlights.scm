; extends

; Unconditional capture for "from" keyword to prevent highlighting delay
; when typing `from <module> import <name>`.
; nvim-treesitter only captures "from" inside a complete import_from_statement
; AST node, causing a delay until the statement is parseable. This makes it
; highlight immediately like other keywords.
"from" @keyword.import
