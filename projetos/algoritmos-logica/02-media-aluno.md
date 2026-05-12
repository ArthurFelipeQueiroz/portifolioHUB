# Exercício 02 — Média do Aluno

## 📋 Enunciado

Faça um algoritmo que receba **3 notas** de um aluno e calcule sua **média aritmética**, informando se ele foi **Aprovado** (média ≥ 7), **Recuperação** (média entre 5 e 6.9) ou **Reprovado** (média < 5).

## 🧠 Análise

- Média = (N1 + N2 + N3) / 3
- Estrutura condicional encadeada (`se ... senao se ... senao`).

## 📝 Pseudocódigo (Portugol)

```
algoritmo "media_aluno"
var
   n1, n2, n3, media : real
inicio
   escreva("Nota 1: ") ; leia(n1)
   escreva("Nota 2: ") ; leia(n2)
   escreva("Nota 3: ") ; leia(n3)

   media <- (n1 + n2 + n3) / 3
   escreval("Media: ", media)

   se media >= 7 entao
      escreval("Aprovado")
   senao
      se media >= 5 entao
         escreval("Recuperacao")
      senao
         escreval("Reprovado")
      fimse
   fimse
fimalgoritmo
```

## 🐍 Em Python (referência)

```python
n1 = float(input("Nota 1: "))
n2 = float(input("Nota 2: "))
n3 = float(input("Nota 3: "))

media = (n1 + n2 + n3) / 3
print(f"Média: {media:.2f}")

if media >= 7:
    print("Aprovado")
elif media >= 5:
    print("Recuperação")
else:
    print("Reprovado")
```

## ✅ Saída esperada

```
Nota 1: 8
Nota 2: 6
Nota 3: 7
Média: 7.00
Aprovado
```
