# HEVC

![HEVC](/pictures/HEVC.png "HEVC")

* Basicamente o HEVC irá funcionar como outros codificadores de vídeo.
* As principais mudanças que fizeram com que o HEVC se torna-se um ótimo codificador serão destacadas em nossa apresentação.


# Picture Partition

![Coding Tree Block](/pictures/partition.png "Coding Tree Block")

* O H.265 ampliou limite do macrobloco de 16x16 para 64x64

# presenter notes

Os limites do bloco foram ampliados tanto para o máximo quanto para o mínimo. Com limites maiores podemos 
codificar sinais estacionários (com baixa frequência) de 
forma mais eficiente, enquanto as subdivisões de até 4x4 melhor codificam sinais de mais alta frequência.

---

# Transformação

 * Para a transformação de blocos pequenos foi visto que o uso de DST (Discrete Sine Transformation) tem um deesempenho superior ao DCT.
 * A matriz **H** é a matriz de transformação utilizada para os blocos 4x4 

<img src="/pictures/DST.png" width="100%"/>

# presenter notes
 
A DST se ajusta melhor a frequências mais altas e por isso é preferível para blocos 4x4 utilizados para regiões de maior detalhamento. O uso da DST não é muito mais exigente computacionalmente que a DCT nos blocos 4x4 e o uso da DST acarreta em uma melhora de 1% no bit rate da imagem.

---

# Predição Intra

![Intra Prediction](/pictures/1345537925_6877.png "Intra Prediction")

* A predição intra foi atualizada de 9 modos no AVC para 35 modos no HEVC.

# presenter notes

 Com o aumento no número de direções para as predições podemos predizer os pixels de forma mais eficiente
 
 ---
 
# Predição Inter

* No HEVC temos um novo modo de predição - Advanced MV.

# presenter notes

 O Advanced MV cria uma lista de candidatos para os vetores de movimento usando um modelo porbabilístico mais complexo. Após a criação da lista os melhores candidatos são indexados com o MV Delta, o vetor com a diferença entre o movimento verdadeiro e a predição.
 
 ---
 
# Comparação VP9/AVC/HEVC

<img src="/Users/jsch/Desktop/ApresentacaoPDI/pictures/vp9-x264-x265-encoding-quality-1024x753.png" width="80%"/>

* Podemos ver uma melhora significativa entre o x254(AVC) e o x265(HEVC)

# presenter notes

  A melhora no HEVC não foi presente somente nos vídeos de alta definição. Também podemos ver que vídeos com baixos bitrates também possuem uma grande melhora. 