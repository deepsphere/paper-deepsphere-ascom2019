# DeepSphere: Efficient spherical Convolutional Neural Network with HEALPix sampling for cosmological applications

[Nathanaël Perraudin][nath], [Michaël Defferrard][mdeff], [Tomasz Kacprzak][tomek], [Raphael Sgier][raphael]\
Astronomy and Computing, 2019

[nath]: https://perraudin.info
[mdeff]: https://deff.ch
[tomek]: https://www.ipa.phys.ethz.ch/people/person-detail.MjEyNzM5.TGlzdC82NjQsNTkxMDczNDQw.html
[raphael]: https://www.ipa.phys.ethz.ch/people/person-detail.MTcyNDY3.TGlzdC82NjQsNTkxMDczNDQw.html

> Convolutional Neural Networks (CNNs) are a cornerstone of the Deep Learning toolbox and have led to many breakthroughs in Artificial Intelligence.
> These networks have mostly been developed for regular Euclidean domains such as those supporting images, audio, or video.
> Because of their success, CNN-based methods are becoming increasingly popular in Cosmology.
> Cosmological data often comes as spherical maps, which make the use of the traditional CNNs more complicated.
> The commonly used pixelization scheme for spherical maps is the Hierarchical Equal Area isoLatitude Pixelisation (HEALPix).
> We present a spherical CNN for analysis of full and partial HEALPix maps, which we call DeepSphere.
> The spherical CNN is constructed by representing the sphere as a graph.
> Graphs are versatile data structures that can act as a discrete representation of a continuous manifold.
> Using the graph-based representation, we define many of the standard CNN operations, such as convolution and pooling.
> With filters restricted to being radial, our convolutions are equivariant to rotation on the sphere, and DeepSphere can be made invariant or equivariant to rotation.
> This way, DeepSphere is a special case of a graph CNN, tailored to the HEALPix sampling of the sphere.
> This approach is computationally more efficient than using spherical harmonics to perform convolutions.
> We demonstrate the method on a classification problem of weak lensing mass maps from two cosmological models and compare the performance of the CNN with that of two baseline classifiers.
> The results show that the performance of DeepSphere is always superior or equal to both of these baselines.
> For high noise levels and for data covering only a smaller fraction of the sphere, DeepSphere achieves typically 10% better classification accuracy than those baselines.
> Finally, we show how learned filters can be visualized to introspect the neural network.

**PDF available at [arxiv], [journal], [infoscience].**\
Related: [code], [data], [blog], [slides].

[arxiv]: https://arxiv.org/abs/1810.12186
[journal]: https://doi.org/10.1016/j.ascom.2019.03.004
[infoscience]: https://infoscience.epfl.ch
[code]: https://github.com/SwissDataScienceCenter/DeepSphere
[data]: https://doi.org/10.5281/zenodo.1303271
[blog]: https://datascience.ch/deepsphere-a-neural-network-architecture-for-spherical-data
[slides]: https://doi.org/10.5281/zenodo.3243380

## Compilation

Compile the latex source into a PDF with `make`.

## Figures

All the figures are in the [`figure`](figures/) folder.
The code and data to reproduce them is found in the [code repository][code].

## Reviews and rebuttal

The journal reviews and rebuttal are found in [`rebuttal.tex`](rebuttal.tex) and will be compiled in a PDF by `make`.
