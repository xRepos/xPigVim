" Vim syntax file
" Language: Pig

if exists("b:current_syntax")
    finish
endif

syn case ignore

syn keyword PigKeyword COGROUP CROSS DEFINE DISTINCT FILTER FOREACH GROUP
syn keyword PigKeyword IMPORT JOIN LIMIT LOAD MAPREDUCE ORDER BY SAMPLE SPLIT 
syn keyword PigKeyword STORE STREAM UNION REGISTER

" Debugging
syn keyword PigKeyword DUMP DESCRIBE EXPLAIN ILLUSTRATE


" Eval Functions
syn keyword PigFunc AVG CONCAT COUNT COUNT_STAR DIFF IsEmpty 
syn keyword PigFunc MAX MIN SIZE SUM TOKENIZE 

" Load/Store Functions
syn keyword PigFunc BinStorage JsonLoader JsonStorage 
syn keyword PigFunc PigDump PigStorage TextLoader

" Math Functions
syn keyword PigFunc ABS ACOS ASIN ATAN CBRT CEIL COS COSH EXP FLOOR LOG LOG10 
syn keyword PigFunc RANDOM ROUND SIN SINH SORT TAN TANH

" String Functions
syn keyword PigFunc INDEXOF LAST_INDEX_OF LCFIRST LOWER REGEX_EXTRACT 
syn keyword PigFunc REGEX_EXTRACT_ALL REPLACE STRSPLIT SUBSTRING TRIM UCFIRST
syn keyword PigFunc UPPER

" Tuple, Bag, Map Functions
syn keyword PigFunc TOTUPLE TOBAG TOMAP TOP

hi def link PigKeyword 	Statement
hi def link PigFunc 	Function

let b:current_syntax = "pig"
