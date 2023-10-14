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
    SM = 259,
    INT = 260,
    FLOAT = 261,
    CHAR = 262,
    VOID = 263,
    RETURN = 264,
    FOR = 265,
    IF = 266,
    ELSE = 267,
    TRUE = 268,
    FALSE = 269,
    ADD = 270,
    SUB = 271,
    MUL = 272,
    DIV = 273,
    OP = 274,
    CP = 275,
    OCP = 276,
    CCP = 277,
    LE = 278,
    GE = 279,
    EQ = 280,
    NE = 281,
    GT = 282,
    LT = 283,
    AND = 284,
    OR = 285,
    NUM = 286,
    ID = 287,
    STR = 288,
    CHARACTER = 289,
    EOL = 290
  };
#endif
/* Tokens.  */
#define INCLUDE 258
#define SM 259
#define INT 260
#define FLOAT 261
#define CHAR 262
#define VOID 263
#define RETURN 264
#define FOR 265
#define IF 266
#define ELSE 267
#define TRUE 268
#define FALSE 269
#define ADD 270
#define SUB 271
#define MUL 272
#define DIV 273
#define OP 274
#define CP 275
#define OCP 276
#define CCP 277
#define LE 278
#define GE 279
#define EQ 280
#define NE 281
#define GT 282
#define LT 283
#define AND 284
#define OR 285
#define NUM 286
#define ID 287
#define STR 288
#define CHARACTER 289
#define EOL 290

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
