" Vim syntax file
" Language: Pig

if exists("b:current_syntax")
    finish
endif

syn case ignore


syn keyword PigKeyword FOREACH GENERATE

syn keyword PigKeyword COGROUP CROSS DISTINCT FILTER GROUP
syn keyword PigKeyword LIMIT MAPREDUCE ORDER SAMPLE  

syn keyword PigKeyword UNION ONSCHEMA

syn keyword PigKeyword STREAM THROUGH 

syn keyword PigKeyword SPLIT IF OTHERWISE

" Define/Import/Register
syn keyword PigKeyword DEFINE IMPORT REGISTER 

" Load/Store
syn keyword PigKeyword LOAD STORE INTO USING AS

" Join keyword
syn keyword PigKeyword JOIN BY LEFT RIGHT FULL OUTER PARTITION PARALLEL

" Debugging
syn keyword PigKeyword DUMP DESCRIBE EXPLAIN ILLUSTRATE

" Type
syn keyword PigType CHARARRAY BYTEARRAY INT LONG FLOAT DOUBLE BOOLEAN
syn keyword PigType TUPLE BAG MAP

syn keyword PigOperator AND OR NOT EQ NEQ GT LT GTE LTE MATCHES IS

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
hi def link PigType     Type
hi def link PigOperator Operator
hi def link PigFunc 	Function

let b:current_syntax = "pig"
