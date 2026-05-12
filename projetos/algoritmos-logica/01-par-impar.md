# Exercício 01 — Par ou Ímpar

## 📋 Enunciado

Faça um algoritmo que leia um número inteiro e informe se ele é **par** ou **ímpar**.

## 🧠 Análise

- Um número é par se a divisão por 2 tem resto zero (`n % 2 == 0`).
- Caso contrário, é ímpar.

## 📝 Pseudocódigo (Portugol)

```
algoritmo "par_ou_impar"
var
   n : inteiro
inicio
   escreva("Digite um numero inteiro: ")
   leia(n)
   se (n mod 2) = 0 entao
      escreval(n, " e PAR")
   senao
      escreval(n, " e IMPAR")
   fimse
fimalgoritmo
```

## 🐍 Em Python (referência)

```python
n = int(input("Digite um número inteiro: "))
if n % 2 == 0:
    print(f"{n} é PAR")
else:
    print(f"{n} é ÍMPAR")
```

## ✅ Saída esperada

```
Digite um número inteiro: 7
7 é ÍMPAR
```
