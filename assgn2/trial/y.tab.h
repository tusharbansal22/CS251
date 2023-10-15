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
    INCLUDE = 258,
    MAIN = 259,
    SM = 260,
    CM = 261,
    INT = 262,
    FLOAT = 263,
    CHAR = 264,
    VOID = 265,
    RETURN = 266,
    PRINTF = 267,
    SCANF = 268,
    PTR = 269,
    FOR = 270,
    IF = 271,
    ELSE = 272,
    TRUE = 273,
    FALSE = 274,
    ADD = 275,
    SUB = 276,
    MUL = 277,
    DIV = 278,
    OP = 279,
    CP = 280,
    OCP = 281,
    CCP = 282,
    LE = 283,
    GE = 284,
    EQ = 285,
    CEQ = 286,
    NE = 287,
    GT = 288,
    LT = 289,
    AND = 290,
    OR = 291,
    NUM = 292,
    ID = 293,
    STR = 294,
    CHARACTER = 295,
    EOL = 296
  };
#endif
/* Tokens.  */
#define INCLUDE 258
#define MAIN 259
#define SM 260
#define CM 261
#define INT 262
#define FLOAT 263
#define CHAR 264
#define VOID 265
#define RETURN 266
#define PRINTF 267
#define SCANF 268
#define PTR 269
#define FOR 270
#define IF 271
#define ELSE 272
#define TRUE 273
#define FALSE 274
#define ADD 275
#define SUB 276
#define MUL 277
#define DIV 278
#define OP 279
#define CP 280
#define OCP 281
#define CCP 282
#define LE 283
#define GE 284
#define EQ 285
#define CEQ 286
#define NE 287
#define GT 288
#define LT 289
#define AND 290
#define OR 291
#define NUM 292
#define ID 293
#define STR 294
#define CHARACTER 295
#define EOL 296

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
