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


