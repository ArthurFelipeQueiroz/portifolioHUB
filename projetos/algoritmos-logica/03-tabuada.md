# Exercício 03 — Tabuada

## 📋 Enunciado

Faça um algoritmo que receba um número inteiro **N** e imprima sua **tabuada de multiplicação de 1 a 10**.

## 🧠 Análise

- Estrutura de repetição (`para ... faca`).
- Itera de 1 a 10, multiplicando N pelo contador.

## 📝 Pseudocódigo (Portugol)

```
algoritmo "tabuada"
var
   n, i : inteiro
inicio
   escreva("Digite um numero: ")
   leia(n)

   escreval("Tabuada do ", n, ":")
   para i de 1 ate 10 faca
      escreval(n, " x ", i, " = ", n * i)
   fimpara
fimalgoritmo
```

## 🐍 Em Python (referência)

```python
n = int(input("Digite um número: "))
print(f"Tabuada do {n}:")
for i in range(1, 11):
    print(f"{n} x {i} = {n * i}")
```

## ✅ Saída esperada

```
Digite um número: 5
Tabuada do 5:
5 x 1 = 5
5 x 2 = 10
5 x 3 = 15
...
5 x 10 = 50
```
