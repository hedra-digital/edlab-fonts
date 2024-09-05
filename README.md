# Sistema

## Para instalar todas as fontes

`make `

## Para listar as fontes instaladas

`make list`


# ConTeXt

## Para instalar novas fontes:

```
export OSFONTDIR=$HOME/.fonts:/usr/share/fonts
mtxrun --generate
mtxrun --script font --reload
```
Obs: não funciona colocar no `Makefile`

## Para checar se uma fonte está instalada no ConTeXt:

`make context-check font=NOME_DA_FONTE`

# Edição de fontes com `fontforge`

## Para localizar um caracter

`view > GoTo` ou `CRTL+SHIFT+">"`.
Para procurar por unicode, digite por exemplo "U+00AB". É possível localizar pelo por nome, como por exemplo "digamma".

## Para editar um caracter

Clique duas vezes dentro caracter. É possível copiar e colar as formas de outros caracteres. 

## Para salvar a fonte

Salve primeiro o projeto em `File > Save` ou `CRTL+S` (arquivo do tipo `.sfd`). Em seguida, 
gere a fonte no formato desejado em `File > Generate Fonts` ou `CRTL+SHIFT+G`.

## Padrão de nomes e armazenagem

Caso crie uma fonte noma, nomer a fonte com o sufixo `_EdLab` e guardar na pasta `./EdLab`.
Ex: `./EdLab/Porson-EdLab.ttf`




