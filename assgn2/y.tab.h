/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    T_INT = 258,
    T_CHAR = 259,
    T_STRING = 260,
    T_BOOL = 261,
    T_FLOAT = 262,
    T_DOUBLE = 263,
    T_TYPEDEF = 264,
    T_DO = 265,
    T_VOID = 266,
    T_SWITCH = 267,
    T_RETURN = 268,
    T_MAIN = 269,
    T_STRUCT = 270,
    T_STACK = 271,
    T_QUEUE = 272,
    T_IF = 273,
    T_ELSE = 274,
    T_FOR = 275,
    T_WHILE = 276,
    T_STRING_LITERAL = 277,
    T_CONTINUE = 278,
    T_BREAK = 279,
    T_BRACKETS = 280,
    T_CURLY_BRACKETS = 281,
    T_CONST = 282,
    T_DELIMITER = 283,
    T_OPERATOR = 284,
    T_LOGICAL_OPERATOR = 285,
    T_BITWISE_OPERATOR = 286,
    T_SHIFT_OPERATOR = 287,
    T_RELATIONAL_OPERATOR = 288,
    T_IDENTIFIER = 289,
    T_BLOCK_COMMENT = 290,
    T_LINE_COMMENT = 291
  };
#endif
/* Tokens.  */
#define T_INT 258
#define T_CHAR 259
#define T_STRING 260
#define T_BOOL 261
#define T_FLOAT 262
#define T_DOUBLE 263
#define T_TYPEDEF 264
#define T_DO 265
#define T_VOID 266
#define T_SWITCH 267
#define T_RETURN 268
#define T_MAIN 269
#define T_STRUCT 270
#define T_STACK 271
#define T_QUEUE 272
#define T_IF 273
#define T_ELSE 274
#define T_FOR 275
#define T_WHILE 276
#define T_STRING_LITERAL 277
#define T_CONTINUE 278
#define T_BREAK 279
#define T_BRACKETS 280
#define T_CURLY_BRACKETS 281
#define T_CONST 282
#define T_DELIMITER 283
#define T_OPERATOR 284
#define T_LOGICAL_OPERATOR 285
#define T_BITWISE_OPERATOR 286
#define T_SHIFT_OPERATOR 287
#define T_RELATIONAL_OPERATOR 288
#define T_IDENTIFIER 289
#define T_BLOCK_COMMENT 290
#define T_LINE_COMMENT 291

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
