To execute the code we need to run the following commands:

```
lex lex.l
yacc -d yacc.y
gcc lex.yy.c y.tab.c -ll
```

Now, we will have the `a.out` file which we can run. To give input directly, we need to pipeline the input as below:
```
./a.out < test1.c
``` 