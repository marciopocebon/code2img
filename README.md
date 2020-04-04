# code2img
Aplicativo Web que transforma código em imagem

A única alteração do conteúdo criado no vídeo é na **linha 15** que eu esqueci de informar o arquivo **`$_filename`** em `sh/index.sh` qque ficou assim: `sed -i "s/'/\\\'/g"` , por isso o código foi transformado sem interpretação das partes com *aspas simples* , mas alterei e deixei assim:
```sh
sed -i "s/'/\\\'/g" "$_filename"
```

# Vídeo do tutorial
# <https://youtu.be/q-nDkg1PauE>

# Imagens geradas pelo app

`my-code.py`

![alt](files/tmp.3andVpy223.png)

---

`main.cpp`

![alt](files/tmp.kiFZpf4GQz.png)

---

`routing.js`

![alt](files/tmp.T6tuw79cay.png)

---

`enable-cgi.sh`

![alt](files/tmp.9pFUJ6MYkU.png)

# Interfaces

![alt](adicionais/arquivo-faltante.png)

---

![alt](adicionais/code2img.png)

---

![alt](adicionais/my-code-py.png)

# [Terminal Root](https://terminalroot.com.br/)
