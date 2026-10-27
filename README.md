# SwipeCleaner

Site estatico de apresentacao do app Android. A pagina fica em `index.html`, os
recursos visuais em `assets/` e o arquivo de autorizacao de anuncios em
`app-ads.txt`. Nao e necessario instalar Ruby, Jekyll ou dependencias Node.

## Publicacao

1. Execute `sh scripts/build-site.sh`. O script copia somente os sete arquivos
   publicos para `_site/` e interrompe a publicacao se encontrar outros arquivos.
2. Para testar sem alterar o site publico, execute
   `firebase hosting:channel:deploy nome-do-teste --project swipecleaner`.
3. Depois de conferir a pagina, as imagens e `/app-ads.txt`, execute
   `firebase deploy --only hosting --project swipecleaner`.

O Firebase Hosting publica apenas `_site/`, nunca a raiz do repositorio.
Confirme que `https://swipecleaner.web.app/app-ads.txt` continua acessivel
apos cada publicacao.

O site Jekyll anterior esta preservado na tag
`backup/jekyll-before-static-2026-10-27`. A politica de privacidade vinculada
na pagina fica em um repositorio separado e deve ser revisada para refletir o
app Android atual.
