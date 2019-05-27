FROM jupyter/scipy-notebook

USER root

# python3 setup
RUN apt-get update && apt-get install -y graphviz
RUN conda install -y numpy scipy pandas matplotlib toolz pytables python-graphviz scikit-learn mkl
RUN conda install -y dask distributed
RUN conda install -y -c conda-forge fastparquet

USER jovyan

RUN git clone https://github.com/sinkovit/PythonSeries.git ./PythonSeries
RUN cd PythonSeries
